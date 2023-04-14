# Script-based examination tasks

## Group A

Tasks:

1. Create a shell script which evaluate the result of the following expression: 

    ```math
    5*P*P+3*P+1
    ```

    where $P$ is number given by as a positional parameter.
    If the user miss to give the parameter then read the number from the keyboard.


1. Create a shell script which behaves different dependent on the parameter!
    If the parameter:
        `-g` (then write out a greeting text)
        `-l` (list the content of your directory)
        `-w` (write out the logged in users)
        `-?` (writes out a small help about the parameters)

1. Create a script which gets two numbers as positional parameters!
    The script should write out each square numbers between the parameters. 
    
    E.g. the parameters are: $3$ and $7$ then write out $9$, $16$, $25$, $36$, $49$.

    Check wheather the order of the numbers is good or not.
    If the second number is less then the first, swap them!

1. Create a script which writes out each odd lines of a file!
    The file is given by it’s name through a parameter!

1. Create a script which deletes the 3 digits long numbers from a file!
    The filename is given by a parameter!


## Group B

Tasks:

1. Create a shell script which writes out three numbers sorted from the smallest to the greatest!
    The numbers are given by positional parameters.
    If the user miss to give the parameters then read the numbers from the keyboard!

2. Create a script which counts those lines of a file $F$, which starts with word $W$!
    The $F$ file and the word $W$ is given by parameters!
    Check whether the $F$ file is exists or not!

3. Create a script, which gives back the greatest common divisor of two numbers!
    The numbers are given by parameters.
    
    E.g. the numbers are $12$ and $30$ then the result is $6$!

4. Create a script which writes out a square from $A$ characters. 

    The number of lines and columns is given by a parameter.
    
    E.g. the parameter is 3, then the result is:
    
    ```
    AAA
    AAA
    AAA
    ```

5. Create a script which gets a file and change a given word to another if they are at the first or last position of a line!
    The filename and the words are given by parameters!


## Group C

Tasks:

1. Create a shell script which writes out $N$-th even number!

    E.g. the number is $3$ then the result is $6$ – because the first even number is $2$, the second is $4$, and the third is $6$.
    
    The $N$ number is given by a positional parameter.
    If the user miss to give the parameters then read the number from the keyboard!

2. Create a script which writes out the first $N$ element of a mathematical serie.
    The first element is $3$, the step is $4$ and $N$ is given by a positional parameter!
    
    E.g. if the $N$ is $5$, then the elements of the serie are:

    $$3, 7, 11, 15, 19$$

3. Create a script, which gives back those lines of a file $F$ which starts with a given name $N$. 
    $F$ and $N$ are given by parameters! 
    Check whether the file is exists or not!

4. Create a script which writes out an empty square from A characters.
    We can call it empty, because only the frame of the square is signed by A-s.
    The number of lines and columns is given by a parameter. 
    
    E.g. the parameter is $3$, then the result is:
    
    ```
    AAA
    A A
    AAA
    ```

5. There are a file which contains $2$ words and a number in each line (word, number, word)!
    Create a script which adds the numbers from the file!
