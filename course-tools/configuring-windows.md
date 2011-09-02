# Some notes on configuring Windows

The latest version of Microsoft Windows, Windows 7, offers a very nice and polished user experience. Unfortunately, the default Windows configuration isn't ideal in terms or interacting with the command line. This section is focused on helping you to setup your Windows environment to make shell and command line usage more pleasant.

## Create a working directory for class files

Let's start off by creating a working directory called `bio313` for source and data files we'll be using for the class. I recommend you create it in your home directory; on Windows 7 the full path wil be `c:\Users\<username>\bio313`.

## Why should I bother learning to use the command line?

Why use the command line? Because if you learn to use it well, you'll be more efficient and productive.

## Cygwin provides a Unix-like environment under Windows

If your computer runs Windows you can have access to a Unix-like environment by installing a program called [Cygwin](http://www.cygwin.com).  Cygwin is a free, open source package of programs that provides common Unix programs.  Download the installer program (setup.exe) from the Cygwin website and place it in `c:\cygwin` (you'll need to create this directory; I recommend that you use this directory as the installation directory as well).  

During the installation you will have the choice of installing additional tools. I recommend you install the following packages (use the search box to find them):

    curl
    mintty

[curl](http://curl.haxx.se/) is a command line tool for transferring data over networks. It makes it easy to download packages and source code with a single text command. [mintty](http://code.google.com/p/mintty/) is a terminal window program for Cygwin that provides a nicer interface than the standard Windows terminal. 

The first time you run Cygwin I recommend you start it with the default terminal emular (the Cygwin shortcut on your desktop will link to the default). After that you can interface with the Cygwin tools via mintty. During the Cygwin installation a mintty shortcut was put in your Start Menu (under the Cygwin folder).  Since you'll be using the terminal frequently I recommend you pin the mintty shortcut to your taskbar (available via right clicking the mintty icon on Windows 7; copy the shortcut and drag the copy to your taskbasr on older version of Windows).


## Directory structure under Cygwin

**NOTE**: all the commands that follow should be executed from within the cygwin bash shell (i.e. in the terminal window you get when you click the Cygwin or mintty shortcuts).

Cygwin creates a set of subdirectories in `c:\cygwin` that mirrors the standard Unix file system (`/bin`, `/usr`, `/var`, `/home`, etc). When you start the Cygwin bash shell you will be in your home directory (`/home/<username>`). 
    
Cygwin will treat the directory where you installed it (`c:\cygwin` if you followed my instructions above) as if that was the 'root' directory of the Unix file system. So when you type `cd /home` from the shell in Cygwin, you're really in `c:\cygwin\home`. To access the standard Windows drive names, Cygwin provides a mapping through a directory called `/cygdrive`. For example, to list the contents of `c:\Python27` from Cygwin you would type:

    $ ls /cygdrive/c/Python27
    
## Setting up symbolic links and aliases in bash
    
The bash shell (the default shell under Cygwin) can be customized and configured to suit your needs.  Let's start by creating a convenient link between your cygwin home directory and your Windows home directory.

    $ cd ~  # makes sure your in your home directory
    $ ln -s /cygdrive/c/<username> ~/winhome
    
`ln -s` is a command that create a "symbolic" or "soft" link between files and directories.  This makes it convenient to quickly navigate from your cygwin home directory as so:

    $ cd ~/winhome
    $ ls 
    ... list of files and directories in your Windows home directory...
    
Let's make one more thing to customize our Cygwin working environment.  Using a programmer's text editor (e.g. SciTE, available under the Enthought directory on the Start Menu) enter the following text:

    alias pweave="python c:/Python27/Scripts/Pweave.py"
    
Save this file as `c:\cygwin\home\<username>\.bash_profile`.  Now either open a new Cygwin window or type `source .bash_profile` from your home directory.  This `.bash_profile` file gets read every time you start Cygwin. An alias is a command short cut. Now when you type `pweave` at the bash prompt in Cygwin the full text within the double quotes of the alias is substituted. Now you can conveniently run Pweave from the Cygwin bash shell as:
    
    $ pweave -f "tex" myweavefile.Pnw
    
