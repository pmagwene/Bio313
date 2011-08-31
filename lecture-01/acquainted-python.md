# Getting Acquainted with Python

## Starting the Python interpretter

The Python interpretter can be started in a number of ways. The simplest way is to open a terminal and type `python`. Go ahead and do this to make sure you have a working version of the default Python interpretter available on your system.  From within the default interpretter you can type `Ctrl-d` (Unix,Mac) or `Ctrl-z` (Windows) to stop the interpretter and return to the command line.

For interactive use, the default interpretter isn't very feature rich, so the Python community has developed a number of GUIs or shell interfaces that provide more functionality. For this class we will be using a shell interface called [IPython](http://ipython.org/). 

Recent versions of IPython (v0.11) provides both terminal and GUI-based shells. The EPD installer  will place a number of shortcuts on your Start Menu or in Launchpad on OS X 10.7, including ones that read `PyLab` and `QtConsole`.  These are a terminal based and GUI based versions of IPython respectively, both of which automatically load key numerical and plotting libraries. Click on both of these icons to compare their interfaces. 

To get the functionality of `PyLab` from the terminal, run the following command:

	$ ipython --pylab
	
To get the equivalent of `QtConsole` you can run ipython with the following arguments:

	$ ipython qtconsole --pylab
	
If you'd prefer a dark background, call QtConsole as so:

	$ ipython qtconsole --pylab --colors=linux

QtConsole is a recent addition to IPython and there may still be bugs to be sorted out, but it provides some very nice features like 'tooltips' (shows you useful information about functions as you type) and the ability to embed figures and plots directly into the console, and the ability to save a console session as a web page (with figures embedded!).

### Quick IPython tips

IPython has a wealth of features, many of which are detailed in its [documentation](http://ipython.org/documentation.html). There are also a number of videos available on the IPython page which demonstrate some of it's power.  Here are a few key features to get you started and save you time:

- *Don't retype that long command!* -- You can scroll back and forth through your previous inputs using the up and down arrow keys (or `Ctrl-p` and `Ctrl-n`); once you find what you were looking forward you can edit or change it. For even faster searching, start to type the beginning of the input and then hit the up arrow.

- *Navigate using standard Unix commands* -- IPython lets you use standard Unix commands like `ls` and `cd` and `pwd` to navigate around your file system (even on Windows!)

- *Use \<Tab\> for command completion* -- when your navigating paths or typing function names in  you can hit the `<Tab>` key and IPython will show you matching functions or filenames (depending on context). For example, type `cd ./<Tab>` and  IPython will show you all the files and subdirectories of your current working directory. Type a few of the letters of the names of one of the subdirectories and hit `<Tab>` again and IPython will complete the name if it finds a unique match. Tab completeion allows you to very quickly navigate around the file system or enter function names so get the hang of using it.

## Accessing the Documentation in Python

Python comes with extensive HTML documentation and the Python
interpreter has a help function that works similar to R's `help()`.

    >>> help(sum)
    Help on built-in function sum in module __builtin__:

    sum(...)
        sum(sequence, start=0) -> value
    
        Returns the sum of a sequence of numbers (NOT strings) plus the value
        of parameter 'start'.  When the sequence is empty, returns start.

IPython also lets you use proceed the function name with a question mark, like in R:

	In [1]: ?sum
	Type:       builtin_function_or_method
	Base Class: <type 'builtin_function_or_method'>
	String Form:<built-in function sum>
	Namespace:  Python builtin
	Docstring:
	sum(sequence[, start]) -> value

	Returns the sum of a sequence of numbers (NOT strings) plus the value
	of parameter 'start' (which defaults to 0).  When the sequence is
	empty, returns start.


## Using Python as a Calculator

As with R, the simplest way to use Python is as a fancy calculator.
Let’s explore some simple arithmetic operations:

    >>> 2 + 10   # this is a comment
    12
    >>> 2 + 10.3
    12.300000000000001  # 0.3 can't be represented exactly in floating point precision
    >>> 2 - 10
    -8
    >>> 1/2  # integer division
    0
    >>> 1/2.0  # floating point division
    0.5
    >>> 2 * 10.0
    20.0
    >>> 10**2  # raised to the power 2
    100
    >>> 10**0.5  # raised to a fractional power
    3.1622776601683795
    >>> (10+2)/(4-5)
    -12
    >>> (10+2)/4-5  # compare this answer to the one above 
    -2

In addition to integers and reals (represented as floating points
numbers), Python knows about complex numbers:

    >>> 1+2j    # Engineers often use 'j' to represent imaginary numbers
    (1+2j)		
    >>> (1 + 2j) + (0 + 3j)
    (1+5j)

Some things to remember:

-   Integer and floating point division are not the same in Python. Generally you’ll want to use floating point numbers.

- The exponentiation operator in Python is `**`

- Be aware that certain operators have precedence over others. For example multiplication and division have higher precedence than addition and subtraction. Use parentheses to disambiguate potentially confusing statements.

- The standard math functions like `cos()` and `log()` are not available to the Python interpeter by default. To use these functions you’ll need to `import` the math library as shown below.

For example:

    >>> 1/2
    0
    >>> 1/2.0
    0.5
    >>> cos(0.5)

    Traceback (most recent call last):
      File "<pyshell#2>", line 1, in -toplevel-
        cos(0.5)
    NameError: name 'cos' is not defined
    >>> import math	# make the math module available
    >>> math.cos(0.5) # access the cos() function in the math module
    0.87758256189037276
    >>> pi	# pi isn't defined in the default namespace

    Traceback (most recent call last):
      File "<pyshell#5>", line 1, in -toplevel-
        pi
    NameError: name 'pi' is not defined
    >>> math.pi # however pi is defined in math
    3.1415926535897931
    >>> from math import * # bring everything in the math module into the current namespace
    >>> pi
    3.1415926535897931
    >>> cos(pi)
    -1.0



## Comparison Operators in Python

The comparison operators in Python work the same was as they do in R
(except they don’t work on lists default). Repeat the comparison
excercises given above.

## More Data Types in Python

You’ve already seen the three basic numeric data types in Python -
integers, floating point numbers, and complex numbers. There are two
other basic data types - Booleans and strings.

Here’s some examples of using the Boolean data type:

    >>> x = True
    >>> type(x)
    <type 'bool'>
    >>> y = False
    >>> x == y
    False
    >>> if x is True:
    ...     print 'Oh yeah!'
    ... 
    Oh yeah!
    >>> if y is True:
    ...     print 'You betcha!'
    ... else:
    ...     print 'Sorry, Charlie'
    ... 
    Sorry, Charlie
    >>>

And some examples of using the string data type:

    >>> s1 = 'It was the best of times'
    >>> type(s1)
    <type 'str'>
    >>> s2 = 'it was the worst of times'
    >>> s1 + s2
    'It was the best of timesit was the worst of times'
    >>> s1 + ', ' + s2
    'It was the best of times, it was the worst of times'
    >>> 'times' in s1
    True
    >>> s3 = "You can nest 'single quotes' in double quotes"
    >>> s4 = 'or "double quotes" in single quotes'
    >>> s5 = "but you can't nest "double quotes" in double quotes"
      File "<stdin>", line 1
        s5 = "but you can't nest "double quotes" in double quotes"
                                       ^
    SyntaxError: invalid syntax

Note that you can use either single or double quotes to specify strings.

## Simple data structures in Python: Lists

Lists are the simplest ‘built-in’ data structure in Python. List
represent ordered collections of arbitrary objects.

    >>> l = [2, 4, 6, 8, 'fred']
    >>> l
    [2, 4, 6, 8, 'fred']
    >>> len(l)
    5

Python lists are zero-indexed. This means you can access lists elements
`0` $\ldots$ `len(x)-1`.

    >>> l[0]
    2
    >>> l[3]
    8
    >>> l[5]
    Traceback (most recent call last):
      File "<stdin>", line 1, in <module>
    IndexError: list index out of range

You can use negative indexing to get elements from the end of the list:

    >>> l[-1] # the last element
    'fred'
    >>> l[-2] # the 2nd to last element
    8
    >>> l[-3] # ... etc ...
    6

Python lists support the notion of ‘slices’ - a continuous sublist of a
larger list. The following code illustrates this concept:

    >>> y = range(10)  # our first use of a function!
    >>> y
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    >>> y[2:8]
    [2, 3, 4, 5, 6, 7]
    >>> y[2:-1]	# the slice
    [2, 3, 4, 5, 6, 7, 8]
    >>> y[-1:0] # how come this didn't work? see the next example...
    []
    >>> y[-1:0:-2]  # slice from the last element to the first, stepping backwards by 2
    [9, 7, 5, 3, 1]

## Using NumPy arrays

As mentioned during lecture, Python does not have a built-in data
structure that behaves in quite the same way as do vectors in R.
However, we can get very similar behavior using a library called
`NumPy`.

NumPy does not come with the standard Python distribution, but it does
come as an included package if you use the Enthought Python
distribution. Alternately you can download NumPy from the SciPy project
page at: http://numpy.scipy.org.

The NumPy package comes with documentation and a tutorial. You can
access the documentation at <http://docs.scipy.org/doc/>

    >>> from numpy import array # a third form of import 
    >>> x = array([2,4,6,8,10])
    >>> -x
    array([ -2,  -4,  -6,  -8, -10])
    >>> x ** 2
    array([  4,  16,  36,  64, 100])
    >>> pi * x # assumes pi is in the current namespace
    array([  6.28318531,  12.56637061,  18.84955592,  25.13274123,  31.41592654])
    >>> y = array([0, 1, 3, 5, 9])
    >>> x + y
    array([ 2,  5,  9, 13, 19])
    >>> x * y
    array([ 0,  4, 18, 40, 90])
    >>> z = array([1, 4, 7, 11])
    >>> x+z
    Traceback (most recent call last):
      File "<stdin>", line 1, in <module>
    ValueError: shape mismatch: objects cannot be broadcast to a single shape

The last example above shows that, unlike R, NumPy arrays in Python are
not ‘recycled’ if lengths do not match.

Remember that lists and arrays in Python are zero-indexed rather than
one-indexed.

    >>> x
    array([ 2,  4,  6,  8, 10])
    >>> len(x)
    5
    >>> x[0]
    2
    >>> x[1]
    4
    >>> x[4]
    10
    >>> x[5]

    Traceback (most recent call last):
      File "<pyshell#52>", line 1, in -toplevel-
        x[5]
    IndexError: index out of bounds

Numpy arrays support the comparison operators and return arrays of
booleans.

 	>>> x < 5 
	array([ True, True, False, False, False], dtype=bool)
 	>>> x >= 6 
	array([0, 0, 1, 1, 1])

NumPy  also supports the combination of comparison and indexing that R vectors can do. There are also a variety of more complicated indexing functions available for NumPy; see the [Indexing Routines](http://docs.scipy.org/doc/numpy/reference/routines.indexing.html) in the Numpy docs.

    >>> x[x < 5]
    array([2, 4])
    >>> x[x >= 6]
    array([ 6,  8, 10])
    >>> x[(x<4)+(x>6)]  # 'or'
    array([ 2,  8, 10])

Note that Boolean addition is equivalent to ’or’ and Boolean
multiplication is equivalent to ’and’.

Most of the standard mathematical functions can be applied to NumPy
arrays however you must use the functions defined in the `numpy` module.

    >>> x
    array([ 2,  4,  6,  8, 10])
    >>> import math
    >>> math.cos(x)

    Traceback (most recent call last):
      File "<pyshell#67>", line 1, in -toplevel-
        math.cos(x)
    TypeError: only length-1 arrays can be converted to Python scalars.
    >>> import numpy
    >>> numpy.cos(x)
    array([-0.41614684, -0.65364362,  0.96017029, -0.14550003, -0.83907153])

## Simple Plots in Python

The Matplotlib package is the de facto standard for producing publication quality scientific graphics in Python.  Matplotlib is included with the EPD and was automatically pulled into the interpretter namespace if you're using the IPython PyLab or QtConsole configurations.

Here are some simple plotting examples using matplotlib:

	# only necessary if not using pylab
	>>> from pylab import * 
	
	>>> import numpy as np # use a shorter alias
	
	# load the turtle data using the numpy.loadtxt function (see ?np.loadtxt)
	# we skipped the first row (header) and the first column (info about sex)
	# we'll see how to deal with more sophisticated data import next week

	>>> turt = np.loadtxt('turtles.txt', skiprows=1, usecols=(1,2,3))
	>>> turt.shape
	(48, 3)
	
	# draw bivariate scatter plot
	>>> scatter(turt[:,0], turt[:,1])
	
	# give the axes some labels and a title for the plot
	>>> xlabel('Length')
	>>> ylabel('Width')
	>>> title('Turtle morphometry')
	
	

