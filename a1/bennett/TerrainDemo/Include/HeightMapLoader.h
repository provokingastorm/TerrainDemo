#ifndef HeightMapLoader_h
#define HeightMapLoader_h

class HeightMap;
class Vector2D;

struct FractalTerrainData
{
public:
    FractalTerrainData()
        :   HeightValues(nullptr)
        ,   TotalValues(0)
        ,   Min(0)
        ,   Max(0)
        ,   SideLength(0)
        ,   ErosionFilter(0.0f)
    {
    }

    explicit FractalTerrainData(float* HeightData, int HeightValueTotal, unsigned char HeightMin, 
                                                    unsigned char HeightMax, int Size, float Filter)
        :   HeightValues(HeightData)
        ,   TotalValues(HeightValueTotal)
        ,   Min(HeightMin)
        ,   Max(HeightMax)
        ,   SideLength(Size)
        ,   ErosionFilter(Filter)
    {
    }


    float*          HeightValues;
    int             TotalValues;
    unsigned char   Min;
    unsigned char   Max;
    int             SideLength;
    float           ErosionFilter;
};

class HeightMapLoader
{
public:

    HeightMapLoader();
    virtual ~HeightMapLoader();

    HeightMap&  CreateHeightMap(const char* szFileName, int Size);
    HeightMap&  CreateFractalHeightMap(int Size, int Fractions, int FractionsPerFilter = 10000, float ErosionFilter = 0.5f, unsigned char Min = 0, unsigned char Max = 255);

    bool        ExportHeightMap(const HeightMap& ToExport, const char* szFileName);

private:

    void        ApplyHeightToAllPointUnderLine(FractalTerrainData& FractalData, float AssignedHeight, const Vector2D& FirstPoint, const Vector2D& LineDirection);
    void        PerformErosion(FractalTerrainData& FractalData);
    void        Erode(float* ToErode, int Stride, int ErodeTotal, float Filter);
    void        NormalizeHeightValues(FractalTerrainData& FractalData);
};

#endif // HeightMapLoader_h

// EOF
