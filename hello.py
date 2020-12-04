import numpy as np

il = []
for i in range(0,5):
    print("Hello world {}".format(i))
    il.append(i)
il = np.array(il)
print(il)
