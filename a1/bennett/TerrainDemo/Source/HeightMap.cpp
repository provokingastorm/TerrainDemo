#include "HeightMap.h"
#include "qe.h"

HeightMap::HeightMap(unsigned char* HeightData, int Size)
: m_HeightData(HeightData)
, m_HeightScale(0.05f)   // TO DO: Accept this as a parameter
, m_Size(Size)
{
}

HeightMap::~HeightMap()
{
    delete [] m_HeightData;
    m_HeightData = nullptr;
}

///////////////////////////////////////////////////////////////////////////////
/**
 *  Draws the height map in wire frame with its color representation.
 *
 *  @remarks    The higher the point, the lighter the color. Height 
 *              values can only be between 0 and 255. 
 */
///////////////////////////////////////////////////////////////////////////////
void HeightMap::Render() const
{
    unsigned char ColorValue;
    int XValue = 0;
    int ZValue = 0;

    for( ZValue = 0; ZValue < m_Size - 1; ++ZValue )
    {
        glBegin( GL_TRIANGLE_STRIP );

        for( XValue = 0; XValue < m_Size - 1; XValue++ )
        {
            ColorValue = GetHeightAtPoint( XValue, ZValue );

            glColor3ub( ColorValue, ColorValue, ColorValue );
            glVertex3f( XValue, GetScaledHeightAtPoint( XValue, ZValue ), ZValue );

            ColorValue = GetHeightAtPoint( XValue, ZValue + 1 );

            glColor3ub( ColorValue, ColorValue, ColorValue );
            glVertex3f( XValue, GetScaledHeightAtPoint( XValue, ZValue + 1 ), ZValue + 1);
        }

        glEnd( );
    }
}

// EOF
