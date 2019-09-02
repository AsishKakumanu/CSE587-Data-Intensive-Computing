from time import sleep
import time
import subprocess

def countdown(t):
    while t:
        mins, secs = divmod(t, 60)
        timeformat = '{:02d}:{:02d}'.format(mins, secs)
        print(timeformat, end='\r')
        time.sleep(1)
        t -= 1
    print('Goodbye!\n\n\n\n\n')


def scriptmain():
    print("Started...")
    while (True):
        print("Inside while loop .....")
        command = 'Rscript'
        path = "/Users/Asish/Downloads/Academia- Local/University/SEM2/DIC/Lab1/Work/Lab1:3/tweetcollectR.R"

        # Execute Command
        print("Executing Command")
        cmd = [command,path]

        # Write Output from the Command Execution
        x = subprocess.check_output(cmd, universal_newlines=True)

        print('The maximum of the numbers is:', x)

        sleep(900)
        countdown(900)



if __name__ == "__main__":
    scriptmain()