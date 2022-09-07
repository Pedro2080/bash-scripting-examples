Bash Scripting - Exercises & Solutions
===============================

1. Simple Hello World Script

```sh
#! /bin/bash

echo "Hello World!"
```

2. Echo Command Without Newlines

```sh
#! /bin/bash

echo -n "Hello"
echo "World!"

echo -n "No"
echo "NewLines"
```

3. String Concatenation With Echo

```sh
#! /bin/bash

echo "one" "two" "three" "four" "five"
```

4. String Continuation Character

```sh
#! /bin/bash

echo "one" "two" "three" "four" "five" \
        "six" "seven" "eight"

# \ -> string continuation character
```

5. Echo with Tab Characters

```sh
#! /bin/bash

echo -e "one\ttwo\three\tfour\tfive"

# \t -> tab character
```

6. Echo with Newline Characters

```sh
#! /bin/bash

echo -e "one\ntwo\nhree\nfour\nfive"

# \n -> newline character
```

7. Echo with -x to Display All Commands and their outputs

```sh
#! /bin/bash -x

echo "one"
echo "two"
echo "three"
```

8. Printing Strings That Contain Single Quotes

```sh
#! /bin/bash

echo "Hello, meet John! He's Peter's Father."
```

9. Printing Strings That Contain Double Quotes

```sh
#! /bin/bash

echo "Hello, meet Joao Pedro! He's \"Silva's Father\"!" 
```

10. Write a message into a File

```sh
#! /bin/bash

echo "Hello, meet John! He's \"Peter's Father\"!" > ./file.txt
```

11. Overwrite to a File

```sh
#! /bin/bash

echo "Hello, meet John! He's \"Peter's Father\"!" > ./file.txt

echo "This message will overwrite the message to the message above!" > ./file.txt
```


12. Append a new line to an exsting file

```sh
#! /bin/bash

echo "This message will be added as a new line!!!" >> ./file.txt
```

13. Single Line Comments. Multi Line Comments Using Heredocs

```sh
#! /bin/bash

# Single line comment
echo "This message will be added as a new line!!!" >> ./file.txt

<<Multi_line_comments
echo "This message will be added as a new line!!!" >> ./file.txt
echo "This message will be added as a new line!!!" >> ./file.txt
echo "This message will be added as a new line!!!" >> ./file.txt
echo "This message will be added as a new line!!!" >> ./file.txt
Multi_line_comments

echo "This has not been commented!"
```

14. Create a Variable and echo it.

```sh
# ! /bin/bash

greeting="Hello World!"
echo $greeting
```

15. Multi Word Variables Combinations with Quotes

```sh
# ! /bin/bash

a="my favourite"
b="car is Mercedes"
c="${a} ${b}"

echo $c
```

16. Using the "HOME" variable, write a script that displays the user's home path and lists all the existing files in there

```sh
# ! /bin/bash

VAR_PATH=$HOME
echo "$VAR_PATH"

ls "$VAR_PATH"
```

17. Using the "USER" variable, echo the current username

```sh
# ! /bin/bash

VAR=$USER
echo "$VAR"
```

18. Using the "HOSTNAME" variable, echo the current hostname

```sh
# ! /bin/bash

VAR=$HOSTNAME
echo "$VAR"
```

19. Echo $HOME with Escape to Avoid Expansion

```sh
#! /bin/bash

echo "\$HOME"
```

20. Writing to file in HOME Directory Using HOME Environment Variable

```sh
#! /bin/bash

cd $HOME

echo "I like coding" > test.txt

cat test.txt
```

21. Write a script that create a new file and lists all the existing items in the current directory
```sh
#! /bin/bash

touch new-file.txt

ls
```

22. Using the "Link" command createa copy of an existing file, Write a messago into it, and display the file content
```sh
#! /bin/bash

ln -s new-file.txt link1
ls

echo "Echoing from the the file link1" >> link1

# link is the copy of file new-file.txt

cat link1
```

23. Define an underscore variable with a message, create a new file, use underscore variable to Append to this new file and display.
```sh
#! /bin/bash

UND_VAR="Hello everyone, this is an underscore variable"
touch new-file.txt
echo "$UND_VAR" > new-file.txt
cat new-file.txt
```

24. Let Command Arithmetic
```sh
#! /bin/bash

let a=5
let b=10
let c=a+b

echo "$a $b $c"
```

25. Using "expr" perform 4 Basic Operators: Add, Subtract, Multiply, Divide 
```sh
#! /bin/bash

num1=10
num2=2

expr $num1 + $num2
expr $num1 - $num2
expr $num1 \* $num2
expr $num1 / $num2
```

26. Increment a variable 3 times with Increment Operator 
```sh
#! /bin/bash

VAR=1

echo "$VAR"
VAR=$((VAR+=1))

echo "$VAR"
VAR=$((VAR+=1))

echo "$VAR"
VAR=$((VAR+=1))

echo "$VAR"
VAR=$((VAR+=1))
```

27. Decrement a variable 3 times with Decrement Operator 
```sh
#! /bin/bash

VAR=4

echo "$VAR"
VAR=$((VAR-=1))

echo "$VAR"
VAR=$((VAR-=1))

echo "$VAR"
VAR=$((VAR-=1))

echo "$VAR"
VAR=$((VAR-=1))
```

28. Combine Strings In One Line With Variables 
```sh
#! /bin/bash

VAR1="Hello World"
VAR2="Let's concatenate"
VAR3="Let's do it again"
CONCATENATION="${VAR1} ${VAR2} ${VAR3}"

echo "$CONCATENATION"
```

29. Create Multi-Line String Variable with HEREDOC 
```sh
#! /bin/bash

VAR=$(cat<<'END_HEREDOC'
Here we could
write
multi line string
using heredoc
END_HEREDOC
)

echo "$VAR"
```

30. Cat Multi-Line HEREDOC Text 
```sh
#! /bin/bash

cat<<MULTI_LINE
The current working directory is: $PWD
You are logged in as: $(whoami)
MULTI_LINE
```

31. Test if File exists
```sh
#! /bin/bash

FILE="file1.txt"
if [ -e "$FILE" ]
then
    echo "$FILE exists!"
else
    echo "$FILE doesn't exist!"
fi

########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u        True if the user id is set on a file
# -w        True if the file is writable
# -x        True if the file is an executable
# -z        True if the string/file is not empty
########
```


32. Test if File is not zero size.
```sh
#! /bin/bash

FILE="file1.txt"
if [ -s "$FILE" ]
then
    echo "$FILE is not of zero size or not empty!"
else
    echo "$FILE is of zero size or empty!"
fi
```


33. Test if File is a Directory
```sh
#! /bin/bash

PATH=dir
if [[ -d $PATH ]]
then
    echo "$PATH is a directory and not file"

elif [[ -f $PATH ]]
then
    echo "$PATH is a file and not a directory"
else
    echo "$PATH is not valid"
fi
```


34. Test if a file is A Symbolic Link
```sh
#! /bin/bash

FILE=link1
if [[ -L "$FILE" ]]
then
    echo "$FILE is a symbolic link"
else
    echo "$FILE is not a symbolic link"
fi
```


35. Test if a File has Permission: Read, Write, Execute
```sh
#! /bin/bash

FILE=script1.sh

# Test if file has read permission
if [[ -r $FILE ]]
then
    echo "$FILE has read permission"
else
    echo "$FILE doesn't have read permission"
fi


# Test if file has write permission
if [[ -w $FILE ]]
then
    echo "$FILE has write permission"
else
    echo "$FILE doesn't have write permission"
fi


# Test if file has executation permission
if [[ -x $FILE ]]
then
    echo "$FILE has execution permission"
else
    echo "$FILE doesn't have execution permission"
fi
```


36. Case Conditional Statement With Numbers
```sh
#! /bin/bash

VAR=10
case $VAR in
    10)
        echo "it's 10"
        ;;
    20)
        echo "it's 20"
        ;;
    30)
        echo "it's 30"
        ;;
    *)
        echo "number is not 10 or 20 or 30, it's something else"
        ;;
esac
```


37. Case Conditional Statement With Strings
```sh
#! /bin/bash

CAR="BMW"
case $CAR in
    Audi)
        echo "it's an Audi"
        ;;
    Mercedes)
        echo "it's a Mercedes"
        ;;
    BMW)
        echo "it's a BMW"
        ;;
    *)
        echo "It's some other brand"
        ;;
esac
```


38. Case Conditional Statement With Wildcards (user input)
```sh
#! /bin/bash

# example 1
case $1 in      #evaluting the first word
    req*)
        echo "it's a requirement or request"
        ;;
    meet*)
        echo "it's a meeting"
        ;;
    *)
        echo "This is a default statement"
esac

# executing the file
# ./script38.sh "some word"


# example 2
# CASE - SWITCH
read -p "Are you 21 or over? Y/N " ANSWER   # what does -p do?
case "$ANSWER" in
    [yY] | [yY][eE][sS])
        echo "You can get a driving license"
        ;; # -> break
    [nN] | [nN][oO])
        echo "Sorry, no drinking"
        ;; 
    *)
        echo "Please enter y/yes or n/no"
        ;;
esac
```


39. Execute a Command And Capture STDERR (standard error) into a new file
```sh
#! /bin/bash

VAR=$(cat file.txt)
$VAR > stderr.txt
```


40. Execute a Command And Capture the return Code
```sh
#! /bin/bash

VAR=$(cat file.txt)
echo "$VAR"
echo $? > returncode.txt

# $? -> capture the return code
```

