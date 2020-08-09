from pygurl import Batched
from time import time, clock
import gc
from numpy import ndarray, median, percentile, empty, mean
#gc.disable()

def parts(list, size):
    x = max(1, size)
    return [list[i:i + x] for i in xrange(0, len(list), x)]


with open("urls", "r") as f:
    x = 0
    data = f.readlines()
    data = parts(data, 20)
    times = len(data)*[0]
    for line in data:
        t = clock()
        a = Batched(line)
        times[x] = clock() - t
        x += 1
    print "total is - " + str(sum(times))
    print "mean is - " + str(mean(times))
    print "median is - " + str(median(times))
    print "90 percentile - " + str(percentile(times, 90))

