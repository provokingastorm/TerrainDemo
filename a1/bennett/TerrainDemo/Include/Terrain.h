#ifndef Terrain_h
#define Terrain_h

class HeightMap;

class Terrain
{
public:

    Terrain(const HeightMap& Map );
    virtual ~Terrain();

private:
    const HeightMap&    m_HeightMap;
    int                 m_TerrainSize;

    Terrain();

};

#endif // Terrain_h

// EOF
