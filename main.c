#include <stdio.h>
#include "libasm.h"

int main()
{
	char *str1 = "F";
	char *str2= "A";
	char buf[30];

	//printf("%d\n", ft_strlen(str1));
	//printf("%d\n", ft_strcmp(str1, str2));
	//printf("%d\n", strcmp(str1, str2));
	printf("%s\n", strcpy(buf, "Hello word !"));
	printf("%s\n", ft_strcpy(buf, "Hello word !"));
}
