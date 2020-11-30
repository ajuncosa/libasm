#include <stdio.h>
#include <string.h>

size_t	ft_strlen(char *);
char	*ft_strcpy(char *dst, const char *src);
int main()
{
	char *src = "ktal";
	char dst1[5];
	char dst2[5];

	/* STRLEN */

//	printf("strlen ret: %4zu\n", strlen("holaaaa\n"));
//	printf("ft_strlen ret: %zu\n", ft_strlen("holaaaa\n"));

	/* STRCPY */

//	char *ret = ft_strcpy(str2, src);
//	printf("str2 dir: %p\n", str2);
// 	printf("strcpy ret: %p\n", ret);
	
	printf("strcpy: %s\n", strcpy(dst1, "ho"));
	printf("ft_strcpy: %s\n", ft_strcpy(dst2, "ho"));
	printf("strcpy: %s\n", strcpy(dst1, src));
	printf("ft_strcpy: %s\n", ft_strcpy(dst2, src));
	printf("strcpy: %s\n", strcpy(dst1, "hola"));
	printf("ft_strcpy: %s\n", ft_strcpy(dst2, "hola"));
//	printf("strcpy: %s\n", strcpy(dst1, "holaa"));
//	printf("ft_strcpy: %s\n", ft_strcpy(dst2, "holaa"));



	/* STRCMP */
	return (0);
}
