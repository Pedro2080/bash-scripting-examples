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

