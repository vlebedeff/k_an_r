#include <stdbool.h>
#include <string.h>

bool strend(char *s, char *t)
{
    unsigned slen, tlen, i;
    slen = strlen(s);
    tlen = strlen(t);

    if (slen < tlen) {
        return false;
    }

    for (s += slen - tlen; *s == *t && *s != '\0' && *t != '\0'; s++, t++)
        ;

    return *s == '\0' && *t == '\0';
}
