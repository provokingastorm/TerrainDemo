#ifndef DebugUtilities_H_
#define DebugUtilities_H_

#if defined(_DEBUG)

#define qeBreakOnError( ReturnCode ) {if ( (int)ReturnCode < 0 ) _asm{int 3};}

#define ChzCheckPointer( Pointer )  {   if( !Pointer ) _asm{ int 3 };    }
#define ChzDereference( Pointer )   (*(Pointer))


#define SafeDelete(Pointer) if(Pointer != 0) delete Pointer; Pointer = 0; 

/**
 * When the Debug configuration is running, define the assert. This
 * custom assert makes the assert function less awkward. 
 *
 * @remarks Credit goes to Steve Rabin's Article "Squeezing More 
 * Out of Assert" (Page 109 - 114) in Game Programming Gems.
 *
 * @param Expression A boolean expression to be evaluated.
 *
 * @param Description The output text to display if the assert fails.
 *
 * @author Peter Bennett (curlyhairedgreatness@gmail.com)
 */
extern bool AssertDetailed( bool, char *, int, char * );
extern void CheckIgnoreAssert( bool, char *, int, char * );


#define CPAssert( Expression, Description ) \
{                           \
    static bool bIgnoreAsserts; \
    CheckIgnoreAssert( Expression, Description, __LINE__, __FILE__ ); \
}                           

// When the Debug configuration is not running, turn off asserts
#else
#define CPAssert( Expression, Description )
#define qeBreakOnError( ReturnCode )
#define ChzCheckPointer( Pointer )
#define ChzDereference( Pointer ) (*(Pointer))
#define SafeDelete(Pointer)

#endif




#endif // END #ifndef DebugUtilities_H_