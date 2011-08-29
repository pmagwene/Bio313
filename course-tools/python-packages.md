
# Installing Python packages

The EPD distribution of Python comes with many of the Python packages we'll use over the course of the semester.  However, eventually you'll come across a new package that isn't included in EPD that you'll want to take advantage of.  There are a variety of ways to install packages but in recent years package managers have become the tool of choice.  A well designed package manager will download the package of interest plus any dependencies from a central repository ([PyPI](http://pypi.python.org/pypi) -- the Python Package Index), carry out any build instructions, and install the resulting code in the appropriate directories.

For  years the most commonly used package manager among Python users was a tool called `easy_install`. You already have access to `easy_install` as part of the EPD. You'll still see many references to using `easy_install` so you should be aware of it. However, recently a new package manager called Pip has become popular in the Python community. Pip offers some additional checks to prevent things like partially-completed installations, and offers the ability to easily uninstall packages as well.  We'll take a look at installing Pip and using it to install a literate programming package called Pweave.


## Downloading and installing Pip

The Pip installer can be downloaded from [get-pip.py](https://raw.github.com/pypa/pip/master/contrib/get-pip.py). Note: if downloaded this via a web-browser use `Right click > Save Link As`.

If you have access to the `curl` command line utility (available by default on OSX, available in the Cygwin package manager) then you can download `get-pip.py` as so:

    $ curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
    
Once you've downloaded `get-pip.py` you can install it

    $ sudo python get-pip.py # sudo NOT needed on cygwin
    
You'll get a variety of output, but the key line you want to see is `Successfully installed pip`. You can type `which pip` to confirm that pip has been installed correctly.

## Using Pip

Now that Pip is installed, let's take it for a quick test spin to check out some of it's features. Let's start by looking at the help:

    $ pip help | less  # use more as the pager on windows
    Usage: pip COMMAND [OPTIONS]
        ... lots of output truncated ...

    Commands available:
      bundle: Create pybundles (archives containing multiple packages)
      freeze: Output all currently installed packages (exact versions) to stdout
      help: Show available commands
      install: Install packages
      search: Search PyPI
      uninstall: Uninstall packages
      unzip: Unzip individual packages
      zip: Zip individual packages
        
Let's use the 'search' command to search for the Pweave package.

    $ pip search "Pweave"
    Pweave                    - Literate programming with reST or LaTeX in Sweave
                                style

Great, the package we want is available from PyPI. Now let's install it:

    $ sudo pip install Pweave
    
After a successful installation  we can check that Pweave is now available to us:

    $ which Pweave
    
That's all there is to it. See the [Pip docs](http://www.pip-installer.org/en/latest/index.html) for more info.
