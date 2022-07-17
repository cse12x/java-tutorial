# <i class="fas fa-book fa-fw"></i> Files and I/O


Very commonly, we store data in files that we want to read from in our programs. For example, things like Google Docs are backed by some files somewhere on Google's computers.

For simplicity, we will only focus on *text files* which store only text data such as the file `poem.txt`.

```text
she sells
sea
shells by
the sea shore
```

## Reading From a File

To read from a file in Java, we use a `Scanner` object that controls how to read the file. A `Scanner` keeps track of where we are in the file and how to read the next parts bit by bit. The following code snippet shows how to to create a Scanner and read the file each "token" at a time. A *token* is a series of characters separated by whitespace. It is the same idea as the concept of a "word", but more general since there are many non-words that are stored in computer files such as numbers.

````{tab-set-code}

```{code-block} java
public class FileReading {
    public static void main(String[] args) throws FileNotFoundException {
        Scanner fileInput = new Scanner(new File("poem.txt"));

        while (fileInput.hasNext()) {
            String token = fileInput.next();
            System.out.println(token);
        }
    }
}
```

```{code-block} python
def main():
    with open("poem.txt") as f:
        for line in f.readlines():
            tokens = line.split()
            for token in tokens:
                print(token)


if __name__ == "__main__":
    main()
```
````

This code yield the following output.

```text
she
sells
sea
shells
by
the
sea
shore
```

The `Scanner` object keeps track of which position we are in the file. The `hasNext()` method returns `true` if there are any remaining tokens, and the `next()` method will return the next token. In other words, this code is repeatedly asking for one token from the file at a time, until there are no more tokens.

To construct a `Scanner` we use the syntax to attach a `Scanner` to a particular file. Note that Java requires us to now change the `main` method declaration to include the statement `throws FileNotFoundException` because the file may not exist. You do not need to understand the `throws` keyword, outside you need to include this text when you are reading from files.

```java
Scanner fileInput = new Scanner(new File("poem.txt"));
```

## Line and Token Based Processing

Very commonly, we might need more granularity when it comes to how we want to read files. For example, consider the problem of counting the number of tokens that appear on each round. So for example, for our `poem.txt` above we might want to print out something like the following to count the number of words per line.

```text
1: 2
2: 1
3: 2
4: 3
```

The following code snippet shows how to do this in Java. Note that instead of calling the `next()` and `hasNext()` method, we are calling the `nextLine()` and `hasNextLine()`. These methods behave similarly, but instead of returning a single token returns the whole line of text. We then can actually use another `Scanner` made from this line to read just that line token by token! This is a common pattern for mixing line-based processing and token-based processing.

````{tab-set-code}

```{code-block} java
public class FileReading {
    public static void main(String[] args) throws FileNotFoundException {
        Scanner fileInput = new Scanner(new File("poem.txt"));

        int lineNum = 1;
        // Loop over every line of the file
        while (fileInput.hasNextLine()) {
            String line = fileInput.nextLine();

            // Make a new Scanner attached to just this line of text
            Scanner lineInput = new Scanner(line);

            // Loop over every token in this line
            int tokenCount = 0;
            while (lineInput.hasNext()) {
                lineInput.next();
                tokenCount++;
            }

            System.out.println(lineNum + ": " + tokenCount);

            // Update the line number for the next iteration
            lineNum++;
        }
    }
}
```

```{code-block} python
def main():
    line_num = 1
    with open("poem.txt") as f:
        for line in f.readlines():
            tokens = line.split()

            token_count = 0
            for token in tokens:
                token_count += 1

            print(str(line_num) + ": " + str(token_count))

            line_num += 1


if __name__ == "__main__":
    main()
```
````

The beauty of a `Scanner` is it hides all of the logic of figuring out what source of data it is attached to, how to fetch the next thing or tell if there is more data present. All we need to do as programmers is make a new `Scanner` instance and call the methods we want!

## User Input

Often, we also want to be able to interact with the user and ask them for input by having them type into the keyboard. It turns out that the `Scanner` was designed for this purpose to since user input is just another data source! We can make a new `Scanner` instance, but instead of attaching it to a file or a `String`, we can attach it to a special source for the user's keyboard called `System.in`. The following program asks the user for their name and age and prints a greeting. When we run this program, every time we call one of the `next` methods it will pause, and wait for the user to type in the requested info.

````{tab-set-code}

```{code-block} java
public class UserInput {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("What is your name? ");
        String name = input.nextLine();

        System.out.print("What is your age? ");
        int age = input.nextInt();

        System.out.println("Welcome " + name + " (" + age + ")!");
    }
}
```

```{code-block} python
def main():
    name = input("What is your name? ")
    age = int(input("What is your age? "))

    print("Welcome " + name + " (" + str(age) + ")!")


if __name__ == "__main__":
    main()
```
````

There are some things to note about this program:

* When constructing the `Scanner`, we say `new Scanner(System.in);` to attach it to the user's keyboard.
* We no longer need the `throws FileNotFoundException` in our `main` header since we are no longe reading from a file.
* To get the user's age, we called the method `nextInt()` instead of `next()`. It turns out that turning text data like the `String` `"16"` into a number is quite tricky. So instead, the `Scanner` provides other methods that do the conversion from text to the data type you are interested for you. Some of the methods that are most commonly used for interpreting a token of data include:
   * `next()` to get the next token as a `String`
   * `nextInt()` to get the next token as an `int`
   * `nextDouble()` to get the next token as a `double`
   * `nextBoolean()` to get the next token as a `boolean`
   * `nextLine()` get the whole line as a `String`
   * All of the equivalent `hasNextX()` methods such as `hasNext()` and `hasNextInt()`.