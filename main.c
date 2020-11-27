#include <stdio.h>
#include <string.h>

size_t	ft_strlen(char *);
int main()
{
	size_t i;
	size_t j;
	i = strlen("holaaaa\n");
	printf("%zu\n", i);
	j = ft_strlen("holaaaa\n");
	printf("%zu\n", j);
	return (0);
}
