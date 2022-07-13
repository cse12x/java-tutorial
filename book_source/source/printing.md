# <i class="fas fa-book fa-fw"></i> Printing

We already saw in the introduction our first "Hello World!" program that prints out to the console.

````{tab-set-code}

```{code-block} java
// Contents of HelloWorld.java

public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello World!");
    }
}
```

```{code-block} python
# Contents of hello_world.py

# Option 1
print("Hello World!")

# Option 2
def main():
    print("Hello World!")

if __name__ == "__main__":
    main()
```
````

In Java, we print by interacting with `System.out` which represents the output console (i.e., the screen). `println` is a method that stands for "print line". The `println` method prints a line of text based on the parameter you give it. You can print as many lines as you want by calling the method multiple times.

````{tab-set-code}

```{code-block} java
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello World!");
        System.out.println("Hello Seattle!");
        System.out.println("Hello UW!");
    }
}
```

```{code-block} python
print("Hello World!")
print("Hello Seattle!")
print("Hello UW!")
```
````

This will print the following output. Notice that each call to `println` corresponds to one line of output as `println` also prints a new-line character.

```text
Hello World!
Hello Seattle!
Hello UW!
```

## `print` vs. `println`

Sometimes, you want to have finer-grained control of how your printing is formatted, so Java provides an alternate method called `System.out.print`. `print` operates just like `println` but does **not** include a new-line at the end. So the same program as above but using `print` instead  of `println` would yield the following output.

````{tab-set-code}

```{code-block} java
public class HelloWorld {
    public static void main(String[] args) {
        System.out.print("Hello World!");
        System.out.print("Hello Seattle!");
        System.out.print("Hello UW!");
    }
}
```

```{code-block} python
print("Hello World!", end="")
print("Hello Seattle!", end="")
print("Hello UW!", end="")
```
````

```text
Hello World!Hello Seattle!Hello UW!
```

Notice that there are no spaces after each thing printed, since `print` doesn't include any trailing characters. If you would want the program to have spaces between calls of `print`, you must write the spaces yourself in the text you are printing.

````{tab-set-code}

```{code-block} java
public class HelloWorld {
    public static void main(String[] args) {
        System.out.print("Hello World! ");   // Note the space in the string!
        System.out.print("Hello Seattle! ");
        System.out.print("Hello UW!");
    }
}
```

```{code-block} python
print("Hello World!", end=" ")
print("Hello Seattle! ", end="")
print("Hello UW!", end="")
```
````

## Mixing `print` and `println`

It is completely possible to mix-up your use of both `print` and `println` to format your output how you want! This will make more sense when we get to the chapter on looping or conditionals, but for example you could write a program like the following. Note that each call to `print` prints the text exactly while each call to `println` prints the text and then moves to the next line.

````{tab-set-code}

```{code-block} java
public class HelloWorld {
    public static void main(String[] args) {
        System.out.print("A");
        System.out.print("A");
        System.out.println("A");
        System.out.print("B");
        System.out.println("B");
        System.out.println("C");
    }
}
```

```{code-block} python
print("A", end="")
print("A", end="")
print("A")
print("B", end="")
print("B")
print("C")
```
````

```text
AAA
BB
C
```