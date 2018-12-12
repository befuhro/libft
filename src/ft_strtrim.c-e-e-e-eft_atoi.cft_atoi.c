/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_strtrim.c                                     .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: befuhro <marvin@le-101.fr>                 +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2018/01/16 13:41:46 by befuhro      #+#   ##    ##    #+#       */
/*   Updated: 2018/01/16 13:41:47 by befuhro     ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */


char	*ft_strtrim(char const *s)
{
	char	*dst;
	int		i;
	int		end;
	int		start;

	i = 0;
	start = 0;
	if (!s)
		return (NULL);
	while (s[start] == ' ' || s[start] == '\t' || s[start] == '\n')
		start++;
	end = ft_strlen(s) - 1;
	if (ft_strlen(s + start) == 0)
		return (dst = ft_strnew(0));
	while (s[end] == ' ' || s[end] == '\t' || s[end] == '\n')
		end--;
	if (!(dst = ft_strnew(end - start + 1)))
		return (NULL);
	while (start + i <= end)
	{
		dst[i] = s[start + i];
		i++;
	}
	dst[i] = 0;
	return (dst);
}
