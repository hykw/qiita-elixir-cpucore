from operator import add

print reduce(add, xrange(0, 10000*5000))
