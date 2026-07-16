#include "HeightMapLoader.h"
#include "HeightMap.h"
#include "DebugUtilities.h"
#include "Vector2D.h"
#include "qe.h"
#include <stdio.h>
#include <stdlib.h>


HeightMapLoader::HeightMapLoader()
{
}

HeightMapLoader::~HeightMapLoader()
{
}

///////////////////////////////////////////////////////////////////////////////
/**
 * Creates a height map by loading a .RAW file with the given filename.
 *
 *  @param  szFileName  The name of file including the path relatie to the
 *                      executable. 
 *
 *  @param  Size        The size of the height map. This must be a power of 2.
 *                      This value will be squared to determine the dimensions. 
 */
///////////////////////////////////////////////////////////////////////////////
HeightMap& HeightMapLoader::CreateHeightMap(const char* szFileName, int Size)
{
    FILE* pTerrainFile = fopen(szFileName, "rb");

    // A bad file name was given
    ChzCheckPointer(pTerrainFile);

    unsigned char* HeightData = new unsigned char[Size * Size];

    // Memory couldn't be allocated.
    ChzCheckPointer(HeightData);

    size_t BytesRead = fread(HeightData, 1, Size * Size, pTerrainFile);

    // Most likely the given size for the height map is wrong
    CPAssert(BytesRead == (Size * Size), "Read error: Didn't read the expected amount of bytes for the given height map file");

    fclose(pTerrainFile);

    return ChzDereference(new HeightMap(HeightData, Size));
}

///////////////////////////////////////////////////////////////////////////////
/**
 * Randomly generates a height map with the given min and max values.
 * 
 *  @param  Size                The size of the height map. This must be a power of 2.
 *                              This value will be squared to determine the dimensions. 
 *
 *  @param  Fractions           The number of passes to perform on height fields.
 *
 *  @param  FractionsPerFilter  The number of fractions that happen before a filter 
 *                              is applied. 
 *
 *  @param  ErosionFilter       Determines the smoothness between neighboring
 *                              height fields. Must be between zero and one. 
 *
 *  @param  Min                 The minimum possible height value. The default is zero.
 *                              Must be greater than or equal to zero.
 *
 *  @param  Max                 The maximum possible height value. The default is 255.
 *                              This value must be greater than zero. Must be no 
 *                              greater than 255
 */
///////////////////////////////////////////////////////////////////////////////
HeightMap& HeightMapLoader::CreateFractalHeightMap(int Size, int Fractions, int FractionsPerFilter, float ErosionFilter, unsigned char Min, unsigned char Max)
{
    CPAssert(Min <= Max, "The min height map value must be less than or equal to the max value");
    CPAssert(Max > 0, "The max height map value cannot be zero");
    CPAssert(Min >= 0, "The min cannot be negative!");
    CPAssert(Max <= 255, "The max exceeds the highest possible height value, 25!");
    CPAssert(ErosionFilter >= 0.0f && ErosionFilter <= 1.0f, "Erosion filter is not a value between 0.0f and 1.0f");

    int SizeSquared                 = Size * Size;
    unsigned char* HeightData       = new unsigned char[SizeSquared];
    float* TempHeightBuffer         = new float[SizeSquared];

    FractalTerrainData FractalData(TempHeightBuffer, SizeSquared, Min, Max, Size, ErosionFilter);

    // Memory couldn't be allocated.
    ChzCheckPointer(HeightData);

    for(int Index = 0; Index < Fractions; ++Index)
    {
        int RandomHeight        = Max - ((Max - Min) * Index) / Fractions;

        Vector2D RandomPoint1   = Vector2D(rand() % Size, rand() % Size);
        Vector2D RandomPoint2   = Vector2D(rand() % Size, rand() % Size);
        Vector2D Direction      = RandomPoint2 - RandomPoint1;

        ApplyHeightToAllPointUnderLine(FractalData, static_cast<float>(RandomHeight), RandomPoint1, Direction);

        if( (0 == FractionsPerFilter) || ((Index % FractionsPerFilter) == 0) )
        {
            PerformErosion(FractalData);
        }
    }

    //NormalizeHeightValues(FractalData);

    // Copy the randomly generated values to the final height data
    for(int Index = 0; Index < SizeSquared; Index++)
    {
        HeightData[Index] = static_cast<unsigned char>(TempHeightBuffer[Index]);
    }

    delete [] TempHeightBuffer;

    return ChzDereference(new HeightMap(HeightData, Size));
}

bool HeightMapLoader::ExportHeightMap(const HeightMap& ToExport, const char* szFileName)
{
    FILE* pTerrainFile = fopen(szFileName, "wb");
    
    if(!pTerrainFile)
    {
        return false;
    }

    fwrite(ToExport.GetHeightData(), sizeof(unsigned char), ToExport.GetSize() * ToExport.GetSize(), pTerrainFile);

    fclose(pTerrainFile);

    return true;
}

void HeightMapLoader::ApplyHeightToAllPointUnderLine(FractalTerrainData& FractalData, float AssignedHeight, const Vector2D& FirstPoint, const Vector2D& LineDirection)
{
    for(int X = 0; X < FractalData.SideLength; X++)
    {
        for(int Z = 0; Z < FractalData.SideLength; Z++)
        {
            Vector2D CurrentDirection = Vector2D(X, Z) - FirstPoint;

            if( CurrentDirection.Cross(LineDirection) > 0 )
            {
                FractalData.HeightValues[ (Z * FractalData.SideLength) + X] += AssignedHeight;
            }
        }
    }
}

void HeightMapLoader::PerformErosion(FractalTerrainData& FractalData)
{
	int i = 0;
	i++;
    int Size = FractalData.SideLength;

    for( int Row = 0; Row < FractalData.SideLength; ++Row )
    {
        Erode(&FractalData.HeightValues[Size * Row], 1, Size, FractalData.ErosionFilter);
    }

    for( int Row = 0; Row < FractalData.SideLength; ++Row )
    {
        Erode(&FractalData.HeightValues[Size * Row + Size - 1], -1, Size, FractalData.ErosionFilter);
    }

    for( int Column = 0; Column < FractalData.SideLength; ++Column )
    {
        Erode(&FractalData.HeightValues[Column], Size, Size, FractalData.ErosionFilter);
    }

    for( int Column = 0; Column < FractalData.SideLength; ++Column )
    {
        Erode(&FractalData.HeightValues[Size * (Size - 1) + Column], -Size, Size, FractalData.ErosionFilter);
    }
}

void HeightMapLoader::Erode(float* ToErode, int Stride, int ErodeTotal, float Filter)
{
    int CurrentStride           = Stride;
    float PreviousHeightValue   = ToErode[0];

    for (int Counter = 0; Counter < ErodeTotal - 1; ++Counter)
    {
        ToErode[CurrentStride] = Filter * PreviousHeightValue + (1 - Filter) * ToErode[CurrentStride];
        PreviousHeightValue = ToErode[CurrentStride];
        CurrentStride += Stride;
    }
}

void HeightMapLoader::NormalizeHeightValues(FractalTerrainData& FractalData)
{
    float MinHeight = FractalData.HeightValues[0];
    float MaxHeight = FractalData.HeightValues[0];

    for(int Index = 1; Index < FractalData.TotalValues; ++Index)
    {
        if(FractalData.HeightValues[Index] > MaxHeight) 
        {
            MaxHeight = FractalData.HeightValues[Index];
        }

        else if (FractalData.HeightValues[Index] < MinHeight) 
        {
            MinHeight = FractalData.HeightValues[Index];
        }
    }

    if(MaxHeight > MinHeight) 
    {
        float AltitudeDelta = MaxHeight - MinHeight;

        for(int Index = 0;Index < FractalData.TotalValues; ++Index)
        {
            FractalData.HeightValues[Index] = (FractalData.HeightValues[Index] - MinHeight) / AltitudeDelta;
        }

    }
}

// EOF
