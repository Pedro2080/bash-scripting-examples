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
