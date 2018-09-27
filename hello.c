#include <stdio.h>
#include <stdlib.h>

int main()
{
#if __arm__
    puts("Hello, ARM World!");
#elif __amd64__
    puts("Hello, AMD World!");
#else
    puts("Hello, World!");
#endif
    return EXIT_SUCCESS;
}
