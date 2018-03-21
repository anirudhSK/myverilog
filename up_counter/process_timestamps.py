import sys
import numpy
last_ts=-1
samples=[]
for line in sys.stdin.readlines():
  records = line.split()
  assert(records[4] == "0x41");
  if (last_ts != -1):
    samples += [float(records[1]) - float(last_ts)]
    print((float(records[1]) - float(last_ts)), "\tmean: ", numpy.mean(samples), "\tstd: ", numpy.std(samples))
  last_ts = records[1]
