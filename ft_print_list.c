/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_print_list.c                                  .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: befuhro <marvin@le-101.fr>                 +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2018/01/16 13:32:50 by befuhro      #+#   ##    ##    #+#       */
/*   Updated: 2018/01/16 13:32:51 by befuhro     ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"

void	ft_print_list(t_list *list)
{
	while (list)
	{
		ft_putstr(list->content);
		ft_putchar('\n');
		list = list->next;
	}
}
