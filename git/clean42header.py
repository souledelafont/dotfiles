import sys
import re

headerPattern = re.compile(
'''
/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   filename.[ch]                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: studname1(<=8) <mail regex>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/12/15 11:49:05 by studname1         #+#    #+#             */
/*   Updated: 2017/03/15 00:47:00 by studname2        ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */''')

class source42():
    def __init__(self, lines):
        self.code = lines[:-1] #somehow stdin.read() adds an ending CR

    def verify42source(self):
        header = '\n'.join(self.code.split('\n')[:11])
        if (header ==
        print(header)
        return (1)
         
if __name__ == "__main__":
    source = source42(sys.stdin.read())
    if not source.verify42source():
        print(sourcefile.code)
        exit(0)
