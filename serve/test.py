import time
import datetime
iteration = 0
while True:
    meta = 'iteration: ' + str(iteration) + '\n' + 'time: ' + str(datetime.datetime.now())

    print("Executing")
    print(meta)
    print('\n\n')
    iteration += 1
    time.sleep(10)
