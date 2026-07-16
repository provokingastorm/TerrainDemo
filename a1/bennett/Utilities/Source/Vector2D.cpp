#include "..\Include\Vector2D.h"
#include "..\Include\DebugUtilities.h"



Vector2D Vector2D::operator/(const Vector2D & InVector)
{
    CPAssert(0.0f != InVector.X, "Trying to divide by zero!");
    CPAssert(0.0f != InVector.Y, "Trying to divide by zero!");
    return Vector2D( X / InVector.X, Y / InVector.Y );
}



Vector2D Vector2D::operator/(float DividedValue)
{
    return Vector2D( X / DividedValue, Y / DividedValue );
}


const Vector2D& Vector2D::operator/=(const Vector2D & InVector)
{
    CPAssert(0.0f != InVector.X, "Trying to divide by zero!");
    CPAssert(0.0f != InVector.Y, "Trying to divide by zero!");
    X /= InVector.X;
    Y /= InVector.Y;

    return *this;
}



const Vector2D& Vector2D::operator/=(float DividedValue)
{
    CPAssert(0.0f != DividedValue, "Trying to divide by zero!");
    X /= DividedValue;
    Y /= DividedValue;

    return *this;
}

// EOF
