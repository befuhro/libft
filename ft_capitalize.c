/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_capitalize.c                                  .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: befuhro <marvin@le-101.fr>                 +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2017/12/01 15:32:57 by befuhro      #+#   ##    ##    #+#       */
/*   Updated: 2017/12/01 15:32:57 by befuhro     ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"

char	*ft_capitalize(char *s)
{
	int i;

	i = 0;
	while (s[i])
	{
		if (s[i] >= 'A' && s[i] <= 'Z')
			s[i] += 32;
		i++;
	}
	i = 0;
	if (s[i] >= 'a' && s[i] <= 'z')
		s[i] -= 32;
	while (s[i])
	{
		if ((s[i] >= 'a' && s[i] <= 'z') && \
			(s[i - 1] == ' ' || s[i - 1] == '\t'))
			s[i] -= 32;
		i++;
	}
	return (s);
}
