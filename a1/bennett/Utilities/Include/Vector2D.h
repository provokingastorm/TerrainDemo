#ifndef Vector2D_H_
#define Vector2D_H_

class Vector2D
{
public:
    float X;
    float Y;

public:
    Vector2D()
        :   X(0.0f)
        ,   Y(0.0f)
    {
    }

    explicit Vector2D(float x, float y) 
        :   X(x)
        ,   Y(y)
    {
    }

    ~Vector2D() {}

    inline float GetX() const   { return X; }
    inline float GetY() const   { return Y; }

    inline void SetX( float x ) { X = x; }
    inline void SetY( float y ) { Y = y; }

    /** Sets all of the vector's values to zero. */
    inline void Zero() 
    { 
        X = Y = 0.0f; 
    }

    inline bool IsZero() const
    {
        return (0.0f != X) && (0.0f != Y);
    }

    inline static const Vector2D& XAxis()
    {
        static const Vector2D XAxis(1.0, 0.0f);
        return XAxis;
    }

    inline static const Vector2D& YAxis()
    {
        static const Vector2D YAxis(0.0f, 1.0f);
        return YAxis;
    }

    inline int Cross(const Vector2D& Other) const
    {
        return static_cast<int>( (X * Other.Y) - (Y * Other.X) );
    }

    inline Vector2D operator+(const Vector2D & InVector); 
    inline Vector2D operator+(float AddedValue );
    inline Vector2D operator-(const Vector2D & InVector);
    inline Vector2D operator-(float SubtractedValue);
    inline Vector2D operator*(const Vector2D & InVector); 
    inline Vector2D operator*(float MultipliedValue);
    Vector2D operator/(const Vector2D & InVector);
    Vector2D operator/(float DividedValue);  

    inline const Vector2D& operator+=( const Vector2D & InVector );
    inline const Vector2D& operator+=( float AddedValue );
    inline const Vector2D& operator-=( const Vector2D & InVector );
    inline const Vector2D& operator-=( float SubtractedValue );
    inline const Vector2D& operator*=( const Vector2D & InVector );
    inline const Vector2D& operator*=( float MultipliedValue );
    const Vector2D& operator/=( const Vector2D & InVector );
    const Vector2D& operator/=( float DividedValue );

    bool operator==( const Vector2D & InVector );
    bool operator!=( const Vector2D & InVector );
    void operator=( float NewValue );
    void operator=( const Vector2D & InVector );
};


inline Vector2D Vector2D::operator+( const Vector2D & InVector )
{
    return Vector2D( InVector.GetX() + X, InVector.GetY() + Y);
}

inline Vector2D Vector2D::operator+( float AddedValue )
{
    return Vector2D( AddedValue + X, AddedValue + Y );
}

inline Vector2D Vector2D::operator-( const Vector2D & InVector )
{
    return Vector2D( X - InVector.GetX(), Y - InVector.GetY() );
}

inline Vector2D Vector2D::operator-( float SubtractedValue )
{
    return Vector2D( X - SubtractedValue, Y - SubtractedValue );
}

inline Vector2D Vector2D::operator*( const Vector2D & InVector )
{
    return Vector2D( X * InVector.GetX(), Y * InVector.GetY() );
}

inline Vector2D Vector2D::operator*( float MultipliedValue )
{
    return Vector2D( X * MultipliedValue, Y * MultipliedValue );
}


inline const Vector2D& Vector2D::operator+=( const Vector2D & InVector )
{
    X += InVector.X;
    Y += InVector.Y;

    return *this;
}

inline const Vector2D& Vector2D::operator+=( float AddedValue )
{
    X += AddedValue;
    Y += AddedValue;

    return *this;
}

inline const Vector2D& Vector2D::operator-=( const Vector2D & InVector )
{
    X -= InVector.X;
    Y -= InVector.Y;

    return *this;
}

inline const Vector2D& Vector2D::operator-=( float SubtractedValue )
{
    X -= SubtractedValue;
    Y -= SubtractedValue;

    return *this;
}

inline const Vector2D& Vector2D::operator*=( const Vector2D & InVector )
{
    X *= InVector.X;
    Y *= InVector.Y;

    return *this;
}

inline const Vector2D& Vector2D::operator*=( float MultipliedValue )
{
    X *= MultipliedValue;
    Y *= MultipliedValue;

    return *this;
}

inline bool Vector2D::operator==( const Vector2D & InVector )
{
    bool equalsX = ( X == InVector.X );
    bool equalsY = ( Y == InVector.Y );

    return ( equalsX && equalsY );
}

inline bool Vector2D::operator!=( const Vector2D & InVector )
{
    bool DoesNotEqualX = ( X != InVector.X );
    bool DoesNotEqualY = ( Y != InVector.Y );

    return ( DoesNotEqualX || DoesNotEqualY );
}

inline void Vector2D::operator=( float NewValue )
{
    X = NewValue;
    Y = NewValue;
}

inline void Vector2D::operator=( const Vector2D & InVector )
{
    X = InVector.X;
    Y = InVector.Y;
}

#endif  // Vector2D_H_

// EOF
