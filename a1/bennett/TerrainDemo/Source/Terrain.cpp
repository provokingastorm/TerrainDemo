#include "Terrain.h"
#include "HeightMap.h"


Terrain::Terrain(const HeightMap& Map)
:   m_HeightMap(Map)
{
    m_TerrainSize = m_HeightMap.GetSize();
}

Terrain::~Terrain()
{
}

// EOF
