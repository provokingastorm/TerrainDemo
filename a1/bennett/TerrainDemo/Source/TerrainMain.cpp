#include "HeightMapLoader.h"
#include "HeightMap.h"
#include "DebugUtilities.h"
#include "qe.h"
#include "qesl.h"
#include <stdlib.h>
#include <stdio.h>
#include <time.h>

namespace TerrainTexture
{
    static char*            TerrainTextureName              = "terrain";
    static char*            TerrainTexturePath              = "../content/terrain/terrain.tga";

    static const float      TerrainTextureWidth             = 1024.0f;
    static const float      TerrainTextureHeight            = 1024.0f;
}

namespace HeightMapTexture
{
    static const char*      HeightMapPath                   = "../content/terrain/height_map_test.raw";
    static const char*      GeneratedHeightMapPath          = "../content/terrain/terrain_map_generated.raw";
    static const int        HeightMapSize                   = 512;
    static const int        GeneratedHHeightMapSize         = 512;
}

namespace TerrainDemo
{
    static char*            DemoName                        = "Terrain Demo by Peter Bennett";
    static const float      ScreenWidth                     = 800.0f;
    static const float      ScreenHeight                    = 600.0f;

    static const int        FractionsPerFilter              = 1;
    static const float      ErosionFilter                   = 0.5;

    static const float      TerrainTextureScreenX           = 0.0f;
    static const float      TerrainTextureScreenY           = 1.0f;

    static const float      TerrainTextureUVUpperLeftX      = 0.0f;
    static const float      TerrainTextureUVUpperLeftY      = 0.0f;

    static const float      TerrainTextureUVBottomRightX    = TerrainTextureUVUpperLeftX + TerrainTexture::TerrainTextureWidth;
    static const float      TerrainTextureUVBottomRightY    = TerrainTextureUVUpperLeftY + TerrainTexture::TerrainTextureHeight;
}

using namespace TerrainTexture;
using namespace HeightMapTexture;
using namespace TerrainDemo;

HeightMap*  Map         = nullptr;
HeightMapLoader* Loader = nullptr;

// INPUT
float       LastLoopTime        = 0.0f;
uns         UpButtonCount       = 0;
uns         DownButtonCount     = 0;
uns         LeftButtonCount     = 0;
uns         RightButtonCount    = 0;
uns         AButtonCount     = 0;
uns         BButtonCount    = 0;

enum 
{
    GAMEINPBUTTON_SPECIAL=QEINPBUTTON_FIRSTGAME, 
};

int Keymap[] = {
    QEINPBUTTON_UP,'W',0,
    QEINPBUTTON_LEFT,'A',0,
    QEINPBUTTON_RIGHT,'D',0,
    QEINPBUTTON_DOWN,'S',0,
    QEINPBUTTON_A,'Q',QEINPBUTTON_MOUSELB,0,
    QEINPBUTTON_B,'E',QEINPBUTTON_MOUSERB,0,
    QEINPBUTTON_X,'R','.',0,
    QEINPBUTTON_Y,'F','.',0,
    QEINPBUTTON_START,'1','.',0, // multiple mappings
    GAMEINPBUTTON_SPECIAL,'G','H','8',0, // multiple mappings
    0
}; 


// CAMERA
float       CameraSpeed                 = 15.0f;
float       CameraPositionDefaults[3]   = { 0.0f, 150.0f, -50.0f };
float       CameraPosition[3]           = { 0.0f, 150.0f, -50.0f };
float       LookAtDefaults[3]           = { 0.0f, 0.0f, 0.0f };
float       LookAt[3]                   = { 0.0f, 0.0f, 0.0f };
float       MinHeight                   = 20.0f;
float       MaxHeight                   = 400.0f;
bool        bCameraLocked               = false;

int ProcessInput(void)
{
    int DeltaTime = qeTimeFrame() - LastLoopTime;
    LastLoopTime = DeltaTime;

    if(!bCameraLocked)
        return 0;

    uns UpReading = qeInpButton(QEINPBUTTON_UP);
    uns DownReading = qeInpButton(QEINPBUTTON_DOWN);
    uns RightReading = qeInpButton(QEINPBUTTON_RIGHT);
    uns LeftReading = qeInpButton(QEINPBUTTON_LEFT);
    uns AReading = qeInpButton(QEINPBUTTON_A);
    uns BReading = qeInpButton(QEINPBUTTON_B);

    if((UpReading&1)&&(UpButtonCount!=UpReading))
    {
        UpButtonCount = UpReading;
        CameraPosition[2] += CameraSpeed;
        LookAt[2] += CameraSpeed;
    }

    if((DownReading&1)&&(DownReading!=DownButtonCount))
    {
        DownButtonCount = DownReading;
        CameraPosition[2] -= CameraSpeed;
        LookAt[2] -= CameraSpeed;
    }

    if((RightReading&1)&&(RightButtonCount!=RightReading))
    {
        RightButtonCount = RightReading;
        CameraPosition[0] -= CameraSpeed;
        LookAt[0] -= CameraSpeed;
    }

    if((LeftReading&1)&&(LeftReading!=LeftButtonCount))
    {
        LeftButtonCount = LeftReading;
        CameraPosition[0] += CameraSpeed;
        LookAt[0] += CameraSpeed;
    }

    if((AReading&1)&&(AButtonCount!=AReading))
    {
        AButtonCount = AReading;
        CameraPosition[1] -= CameraSpeed;
        LookAt[1] -= CameraSpeed;
    }

    if((BReading&1)&&(BReading!=BButtonCount))
    {
        BButtonCount = BReading;
        CameraPosition[1] += CameraSpeed;
        LookAt[1] += CameraSpeed;
    }

    return 0;
}

int RenderSetup(void)
{
    // CAMERA 
    glDepthFunc( GL_LEQUAL );
    glEnable( GL_DEPTH_TEST );

    if (bCameraLocked)
    {
        glMatrixMode( GL_PROJECTION );
        glLoadIdentity();
        gluPerspective( 54.3f , 1.33333f, 10.0f , 900.0f);	

        glMatrixMode(GL_MODELVIEW);
        glLoadIdentity();
        gluLookAt( CameraPosition[0], CameraPosition[1], CameraPosition[2], LookAt[0], LookAt[1], LookAt[2], 0.0f, 1.0f, 0.0f );
    }

    // Only draw a grid if there is no terrain
    if(!Map)
    {
        qefnDrawAxes(1); 
        qefnDrawGrid(100,1); 
    }

    glPolygonMode(GL_FRONT,GL_LINE); 
    glCullFace(GL_BACK); 
    glEnable(GL_CULL_FACE); 

    return 0;
}


int RenderTerrain(void)
{
    if(Map)
    {
        ChzDereference(Map).Render();
    }
    return 1;
}

void CleanupHeightMap()
{
    if(NULL != Map)
    {
        delete Map;
        Map = NULL;
    }
}

int ToggleCameraLock(ptr sf,char *sp,...)
{
    bCameraLocked = !bCameraLocked;

    if (bCameraLocked)
    {
        qeOptionTurnOff(M_QEOPTION_AUTOCAM);
    }
    else
    {
        qeOptionTurnOn(M_QEOPTION_AUTOCAM);
    }

    return 1;
}

int CameraReset(ptr sf,char *sp,...)
{
    for( int Index = 0; Index < 3; ++Index )
    {
        CameraPosition[Index] = CameraPositionDefaults[Index];
        LookAt[Index] = LookAtDefaults[Index];
    }

    return 1;
}

int SetupHeightMap(ptr sf,char *sp,...)
{
    CleanupHeightMap();
    Map = &ChzDereference(Loader).CreateHeightMap(HeightMapPath, HeightMapSize);
    return 0;
}

int SaveHeightMap(ptr sf,char *sp,...)
{
    static int NumOfSaves = 0;

    if (Map)
    {
        char buffer[50];
        sprintf(buffer, "heightmap_%d.raw", NumOfSaves);
        bool bWasSaved = ChzDereference(Loader).ExportHeightMap(ChzDereference(Map), buffer);

        if (bWasSaved)
        {
            NumOfSaves++;
        }
    }

    return 0;
}

int ClearHeightMap(ptr sf,char *sp,...)
{
    CleanupHeightMap();
    return 0;
}

int SetupFractalTerrain(ptr sf,char *sp,...)
{
    CleanupHeightMap();
    vargs   pCommandArguments;
    char    CommandType;
    int     NumOfIterations = 32;
    int     IterationsPerFilter = FractionsPerFilter;
    int     ParameterCounter = 0;

    varg_start(pCommandArguments,sp); 

    while(sp&&(CommandType=*sp++))
    {
        switch(CommandType)
        {
        case 'i':
            if(ParameterCounter == 0)
                NumOfIterations = varg_next(pCommandArguments,int);
            else if (ParameterCounter == 1)
                IterationsPerFilter = varg_next(pCommandArguments,int);
            ParameterCounter++;
            break;

        case 'f':
            if(ParameterCounter == 0)
                NumOfIterations = static_cast<int>(varg_next(pCommandArguments,float));
            else if (ParameterCounter == 1)
                IterationsPerFilter = static_cast<int>(varg_next(pCommandArguments,float));
            ParameterCounter++;
            break;

        default:
            break;
        }
    }

    varg_end(pCommandArguments);

    Map = &ChzDereference(Loader).CreateFractalHeightMap(HeightMapSize, NumOfIterations, IterationsPerFilter, ErosionFilter);

    return 0;
}

int SetTerrainScale(ptr sf,char *sp,...)
{
    if(Map)
    {
        vargs   pCommandArguments;
        char    CommandType;

        varg_start(pCommandArguments,sp); 

        while(sp&&(CommandType=*sp++))
        {
            switch(CommandType)
            {
            case 'i':
                {
                    int IntScalar = varg_next(pCommandArguments,int);
                    ChzDereference(Map).SetScale(static_cast<float>(IntScalar));
                    break;
                }

            case 'f':
                {
                    float FloatScalar = varg_next(pCommandArguments,float);
                    ChzDereference(Map).SetScale(FloatScalar);
                    break;
                }

            default:
                break;
            }
        }

        varg_end(pCommandArguments);
    }
    return 0;
}


qeslFncRec TerrainConsoleCommands[] =
{
    {"h",NULL, SetupHeightMap,0},
    {"f",NULL, SetupFractalTerrain, 0},
    {"s",NULL, SaveHeightMap, 0},
    {"c",NULL, ClearHeightMap, 0},
    {"scale", NULL, SetTerrainScale, 0},
    {"cam", NULL, ToggleCameraLock, 0},
    {"camreset", NULL, CameraReset, 0},
}; 


int qeMain(int argc,chr *argv[])
{
    srand( (unsigned int) time(NULL));

    qeWindowTitle(DemoName);
    qeInpOp(QEINPOP_SETKEYMAP,Keymap);

    qePrintf("Terrain Demo - DePaul Independent Study - Fall '08\n");
    qePrintf("Created by Peter Bennett\n");
    qePrintf("Sponsored by Joe Linhoff\n\n");
    qePrintf("Press F8 TO TOGGLE THE COMMAND LINE\n\n");
    qePrintf("Type 'h' to see height map demo\n");
    qePrintf("Type 'f' for fractal terrain demo\n");
    qePrintf("Type 'scale #' to scale terrain\n");
    qePrintf("Type 's' to save the terrain\n");
    qePrintf("Type 'c' to clear the terrain\n");
    qePrintf("Type 'cam' to toggle top-down camera\n");
    qePrintf("\nCommand Line: ");

    Loader = new HeightMapLoader();

    //int ImageLoadResult = qeImgNew(TerrainTextureName, 0, TerrainTexturePath);
    //qeBreakOnError(ImageLoadResult);

    int AddFncTableResult = AddFncTableResult = qeslAddFncTable(TerrainConsoleCommands, NUM(TerrainConsoleCommands) );
    qeBreakOnError( AddFncTableResult );

    qeObj* ProcessInputFunction = qeObjAddFnc(ProcessInput);
    ChzCheckPointer(ProcessInputFunction);
    qeObj* RenderSetupFunction = qeObjAddFnc(RenderSetup);
    ChzCheckPointer(RenderSetupFunction);
    qeObj* RenderFunction = qeObjAddFnc(RenderTerrain);
    ChzCheckPointer(RenderFunction);

    qeForever();

    CleanupHeightMap();
    delete Loader;

    return 0;
}

// EOF
