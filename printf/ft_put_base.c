/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_put_base.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ansilva- <ansilva-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/20 13:31:32 by anastacia         #+#    #+#             */
/*   Updated: 2023/04/12 18:47:22 by ansilva-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

char	*ft_put_base(unsigned int n, char *base)
{
	int				len;
	unsigned int	nb;
	char			*s;
	size_t			len_base;

	nb = n;
	len = 0;
	while (nb != 0)
	{
		nb /= 10;
		len++;
	}
	s = malloc(sizeof(*s) * len + 1);
	if (s == NULL)
		return (NULL);
	len_base = ft_strlen(base);
	s[len] = '\0';
	len--;
	while (n > 0)
	{
		s[len] = base[n % len_base];
		n /= len_base;
		len--;
	}
	return (s);
}
