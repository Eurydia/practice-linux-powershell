# Commandline-based task solutions

## Task #1

**Answer A**- Printing out odd lines.

```sh
sed -n "p;n" testcase/S01-01.md | cat
```

**Note**:

Print the first line (odd), then skip the next line (even). 
Repeat.

**Answer B**- Printing out even lines.

```sh
sed -n "n;p" testcase/S01-01.md | cat
```

**Note**:

Skip the first line (odd), the print the next line (even).

## Task #2

**Answer**

```sh
chmod 660 testcases/S02-01.md
```

## Task #3

**Answer**:

```sh
uniq -u testcases/S03-01.md
```

## Task #4

**Answer**:

```sh
tar -czv -f testcases.tar.gz testcases/
```

**Note**:

- use `-c` to create a `.tar`,
- use `-z` to compress the `.tar` into a `.gz`, and
- use `-f` to specify the name.

## Task #5

**Answer**:

To start a background process, add the `&` operator after the command
Alternatively, `bg $<JOB-ID>` can be used move jobs to the background.

To stop a background process, use `kill -STOP %<JOB-ID>`.

To terminate a background process, use `kill %<JOB-ID>`.

To cancel a foreground process, use `CTRL + C`.

## Task #6

**Answer**:

```sh
echo Korn && sleep 5 && echo Com-Sci && sleep 5 && Thailand
```

## Task #7

**Answer**:

```sh
awk '{print $1, $3}' testcases/S07-01.md
```

## Task #8

**Answer**:

```sh
ls > items.md
ls | tee items_tee.md
```

**Note**:

The difference between `>` and `tee` is that `tee` also print the content to the terminal as well as copy content to a file.

## Task #9

**Answer**:

```sh
sleep 500 &
sleep 500 &
kill %1 %2

sleep 500 &
sleep 500 &
sleep 500 &
killall
```

**Note**:

The difference between `kill` and `killall` is that `killall` stops all running processes, while `kill` only stop the given processes.

## Task #10

**Answer**:

```sh
sleep 500 &
sleep 500 &
sleep 500 &

kill -STOP %2
kill %3

jobs
```

## Task #11

**Answer**:

```sh
wc -w testcases/S11-01.md | awk '{print $1}'
```

## Task #12

Same as **##Task #9**.

## Task #13

**Answer**:

```sh
grep -E -v -i "blue" testcases/S13-01.md
```

**Note**:

Using the `-v` flag to invert the pattern.

## Task #14

**Answer**:

```sh
sed -E "s/Apple/Mango/g" testcases/S14-01.md | cat
```

## Task #15

**Answer**:

```sh
awk "{if (NR == 1 || NR == NF) {print $1}}" testcases/S15-01.md
```

**Note**:

This task is not even a question.
Anything can be an answer if it includes `NF` and `NR`.

In this solution, the first and last rows are printed.

## Task #16

**Answer**:

```sh
echo "hsifrats etah I" | rev
```

## Task #17

**Answer**:

```sh
awk "{print $1 $4}" testcases/S17-01.md
```

## Task #18

**Answer**:

```sh
who | tee who.md
finger @b9xp3x | tee user.md
```

**Note**:

`who` displays all logged in users and `finger` gives more information of a specific user.

## Task #19

**Answer**:

```sh
sleep 500 &
fg %1
```

## Task #20

**Answer**:

```sh
echo $0
```

**Note**:

Prints the path to shell.

## Task #21

**Answer**:

```sh
split -l 4 testcases/S21-01.md
```

## Task #22

**Answer**:

```sh
echo "I like flowers" | tr a-z A-Z
```

## Task #23

**Answer**:

```sh
echo "How many spaces do I have?" | grep " " | wc -l
```

## Task #24

**Answer**:

```sh
echo "How many words do I have?" | wc -w
```

## Task #25

**Answer**:

```sh
ln -f testcases/S25-01.md hard_link
ln -f -s testcases/S25-01.md sym_link

rm testcases/S25-01.md
cat hard_link
cat sym_link
```

**Note**:

Symbolic links do not persist if the original file or directory is removed, while hard links do.

## Task #26

**Answer**:

```sh
test -f testcases/S26-01.md && echo YES || echo NO
```
