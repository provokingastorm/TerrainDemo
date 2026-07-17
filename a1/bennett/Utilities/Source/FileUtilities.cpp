#include "FileUtilities.h"
#include <string.h>

void StripFilenameFromPath(char* FilePath)
{
    if (FilePath == nullptr)
    {
        return;
    }

    // Find the last instance of a forward slash.
    char* LastForwardSlash = strrchr(FilePath, '/');

    // Windows supports back slashes as well.
#ifdef _WIN32
    char* LastBackSlash = strrchr(FilePath, '\\');

    // Since a path can have both forward and back slashes, choose the one closest to the end of the file path.
    if (LastBackSlash > LastForwardSlash)
    {
        LastForwardSlash = LastBackSlash;
    }
#endif

    if (LastForwardSlash != nullptr)
    {
        // No need to create a new string, just terminate the string.
        *(LastForwardSlash + 1) = '\0';
    }
}

// EOF
