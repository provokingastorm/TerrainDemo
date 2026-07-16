#ifndef HeightMap_h
#define HeightMap_h

class HeightMap
{
public:

    HeightMap(unsigned char* HeightData, int Size);
    virtual ~HeightMap();

    void            Render() const;

    void            SetScale(float Scale)                       { m_HeightScale = Scale; }
    unsigned char*  GetHeightData() const                       { return m_HeightData; }

    int             GetSize() const                             { return m_Size; }
    unsigned char   GetHeightAtPoint(int X, int Z) const        { return m_HeightData[(Z * m_Size) + X]; }
    float           GetScaledHeightAtPoint(int X, int Z) const  { return GetHeightAtPoint(X, Z) * m_HeightScale; }

private:

    HeightMap();

private:

    unsigned char*      m_HeightData;
    float               m_HeightScale;
    int                 m_Size;

};

#endif // HeightMap_h

// EOF
