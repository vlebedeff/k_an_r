char *mystrcat(char *s, char *t)
{
    char *r = s;

    while (*s) {
        ++s;
    }

    while ((*s++ = *t++))
        ;

    return r;
}
