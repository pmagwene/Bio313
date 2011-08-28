
# Using the command line

If you're comfortable with using the command line or shell on your OS of choice feel free to skip this section.

All major operating systems  give you access to a command prompt or shell (also known as the "dos box" or "terminal" depending on operating system). The command prompt allows you to run programs, manipulate files and directories, etc. using a text-based interface.  While the GUI is usually the easiest way to perform an operation once or a few times, the command prompt is often the best alternative for running commands repeatedly or in batch.  The command prompt is also very handy for testing and debugging programs.

You can access the command prompt on Windows under `Start > Programs > Accessories`. On OS X, the shell program is called ''Terminal'' and can usually be found in `Applications > Utilities`. I recommend you create a shortcut on your desktop (Windows) or an icon on your Dock (OS X) for easy access to the shell. 


## Navigating via the command line on Windows

Basic commands available from the Windows command prompt include:

- `help` -- shows basic documentation for each of the available commands or for a specific command.
- `cd` -- Used to change directories or list the current directory.
- `dir` -- list the files in the current directory or a specified directory
- `more` -- a ''pager'' program to show the contents of a file one screen at a time. Useful for quickly checking the contents of a file.
- `.` --  a single period is short-hand for the current directory. Try the command `dir .`
- `..` -- a double period is short-hand for the directory above the current directory. Try the command `dir ..`

You can also execute any program of interest from the command prompt (you may have to set your `PATH` environment variable in order for Windows to find the executable; see [Setting Paths](./setting-paths.md)). For example, to start Python from the command prompt simply type: `python` (again, assuming it's on your `PATH`). To run a specific Python script type something like: `python <scriptname>`.



## Navigating via the command line in Unix

The equivalent commands on most Unix systems are:

- `man` -- brings up the manual pages for a given command. e.g. `man ls` will list the options for the `ls` command
- `pwd` -- list the present working directory.
- `cd` -- Used to change directories. 
- `ls` -- list the files in the current directory or a specified directory
- `more` or `less` -- "pager" programs to show the contents of a file one screen at a time. Useful for quickly checking the contents of a file. `less` is an improved version of `more`.
- `.` -- a single period  is short-hand for the current directory. 
- `..` -- a double period is short-hand for the directory above the current directory
- `~` -- tilde short-hand for your home directory. For example `ls ~` will list all the files and directories in your home directory regardless of your working directory.

## Hidden files and directories in Unix

Operating systems with Unix roots have a concept of "hidden" files or directories. These are files or directories whose names start with a period and they do not usually show up in the file explorer or finder, or when you use the `ls` command. Hidden files and directories are typically used for configuration data or other information that it is assumed the user doesn't need to be reminded of everytime they browse a directory.  To see these hidden files and directories use the `-a` argument to `ls` like so: 

    ls -a

Contrast the output you see to a regular `ls`.  Most of the additional items you see are simple files, but some are directories.  A useful way to tell the difference between files and directories is to use the `-F` argument to `ls`:

    ls -aF
    
When you do that you'll see a forward slash appended to the name of each item that is a directory. In many terminals (including OS X) you can also use an argument that colors the output:

    ls -aG
    
When I do that on my OS X laptop directories are colored dark blue. You can even combine the arguments like so:

    ls -aFG
    
Chaining arguments together like this is a common idiom in Unix.
