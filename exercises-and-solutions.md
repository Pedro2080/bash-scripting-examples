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
