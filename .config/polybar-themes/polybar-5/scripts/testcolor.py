from __future__ import print_function
import sys

colour = sys.argv[1]

colour = colour.strip('#')

rgb = int(colour, 16)

r = (rgb & 0xff0000) >> 16
g = (rgb & 0xff00) >> 8
b = (rgb & 0xff)

dim = (r*0.299 + g*0.587 + b*0.114) # / 256;
print(int(dim))
