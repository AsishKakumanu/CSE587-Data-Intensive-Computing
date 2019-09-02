#!/usr/bin/env python

import sys

for line in sys.stdin:
    # remove leading and trailing whitespace
    line = line.strip()
    # split the line into words
    words = line.split()

    for i in xrange(len(words)-1):
        for j in range(i + 1, len(words)):
            if (words[i] < words[j]):
                word1 = words[i]
                word2 = words[j]
            else:
                word1 = words[j]
                word2 = words[i]
            print "%s|%s\t%s" % (word1,word2, 1)