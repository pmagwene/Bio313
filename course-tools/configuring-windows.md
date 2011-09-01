# Some notes on configuring Windows

The latest version of Microsoft Windows, Windows 7, offers a very nice and polished user experience. Unfortunately, the default Windows configuration isn't ideal in terms or interacting with the command line. This section is focused on helping you to setup your Windows environment to make shell and command line usage more pleasant.

## Why should I bother learning to use the command line?

Why use the command line? Because if you learn to use it well, you'll be more efficient and productive.

## Cygwin provides a Unix-like environment under Windows

If your computer runs Windows you can have access to a Unix-like environment by installing a program called [Cygwin](http://www.cygwin.com).  Cygwin is a free, open source package of programs that provides common Unix programs.  Download the installer program (setup.exe) from the Cygwin website and place it in `c:\cygwin` (you'll need to create this directory; I recommend that you use this directory as the installation directory as well).  After installation the Cygwin setup program will install an icon on your desktop that you can double click to open a bash shell. 

## Directory structure under Cygwin

Cygwin creates a set of subdirectories in `c:\cygwin` that mirrors the standard Unix file system (`/bin`, `/usr`, `/var`, `/home`, etc). When you start the Cygwin bash shell you will be in your home directory (`/home/<username>`). 
    
Cygwin will treat the directory where you installed it (`c:\cygwin` if you followed my instructions above) as if that was the 'root' directory of the Unix file system. So when you type `cd /home` from the shell in Cygwin, you're really in `c:\cygwin\home`. To access the standard Windows drive names, Cygwin provides a mapping through a directory called `/cygdrive`. For example, to list the contents of `c:\Python27` from Cygwin you would type:

    $ ls /cygdrive/c/Python27
    
