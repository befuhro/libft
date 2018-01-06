/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_memalloc.c                                    .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: befuhro <marvin@le-101.fr>                 +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2017/12/01 15:32:59 by befuhro      #+#   ##    ##    #+#       */
/*   Updated: 2017/12/01 15:32:59 by befuhro     ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memalloc(size_t size)
{
	size_t	i;
	void	*ret;

	i = 0;
	if (!(ret = (void*)malloc(sizeof(void) * size)))
		return (0);
	while (i < size)
	{
		((char*)ret)[i] = 0;
		i++;
	}
	return (ret);
}
