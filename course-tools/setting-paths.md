# Setting PATH and other environment variables

## Setting the PATH on Windows

In order to run a program from the command prompt your OS must be able to find the program. The set of directories that the OS searches when trying to find an executable is refered to as the `PATH`.  Setting environment variables, including `PATH`, on Windows is a bit involved. Open the Control Panel and choose `System`. Under `System Properties` choose the `Advanced` tab and select the `Environment Variables` button at the bottom. You can add or edit variables both on a user basis or on a system wide basis. I suggest only working with the user variables.


## Setting the PATH in Unix

On Unix based operating systems you can set the path using an environment variable in your shell initialization file such as `.bash_profile` or `.profile`.  These shell initialization files can be edited with a text editor.

If you want to see what your PATH environment variable is currently set to type, in the bash shell (the default on OS X and most Linux systems) type the following:


    pmagwene$ env | grep PATH

You'll get something like the following:

    PATH=/Library/Frameworks/Python.framework/Versions/Current/bin:
    /Library/Frameworks/Python.framework/Versions/2.6/bin:/usr/bin:/bin:/usr/sbin:
    /sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin:/usr/X11/bin:
    /opt/local/bin
    
The `env` command prints the currently set environment variables. The `grep` command prints lines matching a pattern; in this case the pattern we're looking for is 'PATH'. The vertical line (`|`) between the `env` and `grep` commands is called a "pipe". Pipes are used to send the output of one program to be analyzed or used by another program.  Pipes are a common Unix tool and will come in handy later in the semester when we building a bioinformatics pipeline.

The `PATH` variables in your `.bash_profile` or `.profile` initialization file is simply a set of directory names separated by colons. If you want to add a new directory to your path simply append a colon and then the directory name to the end of the `PATH` line. 

## Setting the PYTHONPATH

Like the operating system, Python searches a set of default directories whenever you ask it to load a specific module.  Python knows where to find all of it's base modules, and a well written package will install it's files into one of the standard locations.

To see the directories that your Python installation searches by default try the following commands in the Python interpreter (your output will be different):

    >>> import sys
    >>> print sys.path
    ['C:\\Python25\\lib\\site-packages', 'C:\\Python24\\lib\\site-packages\\Numeric',
    'C:\\Python24\\lib\\site-packages\\PIL', 'C:\\Python24\\lib\\site-packages\\win32']

For your own code it's useful to setup a separate directory. Create a directory called `pycode` in your home directory or on the `C:\` drive (or equivalent). In order for Python to "see" the code in this directory you must add it to your `PYTHONPATH`.

To temporarily add a new directory to `sys.path`:

    >>> sys.path.append("c:\pycode") # substitute the path to the directory you created
    >>> print sys.path
    ['C:\\Python24\\lib\\site-packages', 'C:\\Python24\\lib\\site-packages\\Numeric',
    'C:\\Python24\\lib\\site-packages\\PIL', 'C:\\Python24\\lib\\site-packages\\win32', 
    'c:\\pycode']


This change applies only to your current interpreter and lasts until you close the interactive prompt. To make persistent changes to the Python seach path you need to create an environment variable called `PYTHONPATH` and add the desired directories.  You do this the same way you set your system `PATH`, but modify your shell initialization file (Unix or OS X) or using the System Properties tool in the control panel to create a new environment variable (Windows). I will demonstrate this in class.
