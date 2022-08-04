# <i class="fas fa-book fa-fw"></i> Printing and Comments

## Printing

We already saw in the introduction our first "Hello World!" program that prints out to the console.

````{tab-set-code}

```{code-block} java
// Contents of Printing.java

public class Printing {
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

```{code-block} javascript
// Contents of hello_world.js

console.log("Hello World!");
```

```{code-block} c
// Contents of hello_world.c

#include <stdio.h>

int main()
{
    printf("Hello World!\n");
    return 0;
}
```

```{code-block} c++
// Contents of hello_world.cpp

#include <iostream>

using namespace std;

int main()
{
    cout << "Hello World!" << endl;
    return 0;
}
```
````

In Java, we print by interacting with `System.out` which represents the output console (i.e., the screen). `println` is a method that stands for "print line". The `println` method prints a line of text based on the parameter you give it. You can print as many lines as you want by calling the method multiple times.

````{tab-set-code}

```{code-block} java
public class Printing {
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

```{code-block} javascript
// Contents of hello_world.js

console.log("Hello World!");
console.log("Hello Seattle!");
console.log("Hello UW!");
```

```{code-block} c
#include <stdio.h>

int main()
{
    printf("Hello World!\n");
    printf("Hello Seattle!\n");
    printf("Hello UW!\n");
    return 0;
}
```

```{code-block} c++
#include <iostream>

using namespace std;

int main()
{
    cout << "Hello World!" << endl;
    cout << "Hello Seattle!" << endl;
    cout << "Hello UW!" << endl;
    return 0;
}
```
````

This will print the following output. Notice that each call to `println` corresponds to one line of output as `println` also prints a new-line character.

```text
Hello World!
Hello Seattle!
Hello UW!
```

### `print` vs. `println`

Sometimes, you want to have finer-grained control of how your printing is formatted, so Java provides an alternate method called `System.out.print`. `print` operates just like `println` but does **not** include a new-line at the end. So the same program as above but using `print` instead  of `println` would yield the following output.

````{tab-set-code}

```{code-block} java
public class Printing {
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

```{code-block} javascript
// Javascript doesn't have a native command to print without including a new-line at the end.
// However, we can emulate this in node.js

process.stdout.write("Hello World!");
process.stdout.write("Hello Seattle!");
process.stdout.write("Hello UW!");
```

```{code-block} c
#include <stdio.h>

int main()
{
    printf("Hello World!");
    printf("Hello Seattle!");
    printf("Hello UW!");
    return 0;
}
```

```{code-block} c++
#include <iostream>

using namespace std;

int main()
{
    cout << "Hello World!" << "Hello Seattle!" << "Hello UW!";
    return 0;
}
```
````

```text
Hello World!Hello Seattle!Hello UW!
```

Notice that there are no spaces after each thing printed, since `print` doesn't include any trailing characters. If you would want the program to have spaces between calls of `print`, you must write the spaces yourself in the text you are printing.

````{tab-set-code}

```{code-block} java
public class Printing {
    public static void main(String[] args) {
        System.out.print("Hello World! ");   // Note the space in the string!
        System.out.print("Hello Seattle! ");
        System.out.print("Hello UW!");
    }
}
```

```{code-block} python
print("Hello World!", end=" ")
print("Hello Seattle! ", end=" ")
print("Hello UW!", end="")
```

```{code-block} javascript
// Javascript doesn't have a native command to print without including a new-line at the end.
// However, we can emulate this in node.js

process.stdout.write("Hello World! ");
process.stdout.write("Hello Seattle! ");
process.stdout.write("Hello UW! ");
```

```{code-block} c
#include <stdio.h>

int main()
{
    printf("Hello World! ");
    printf("Hello Seattle! ");
    printf("Hello UW! ");
    return 0;
}
```

```{code-block} c++
#include <iostream>

using namespace std;

int main()
{
    cout << "Hello World! " << "Hello Seattle! " << "Hello UW! ";
    return 0;
}
```
````

### Mixing `print` and `println`

It is completely possible to mix-up your use of both `print` and `println` to format your output how you want! This will make more sense when we get to the chapter on looping or conditionals, but for example you could write a program like the following. Note that each call to `print` prints the text exactly while each call to `println` prints the text and then moves to the next line.

````{tab-set-code}

```{code-block} java
public class Printing {
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

```{code-block} javascript
// Javascript doesn't have a native command to print without including a new-line at the end.
// However, we can emulate this in node.js

process.stdout.write("A");
process.stdout.write("A");
console.log("A");
process.stdout.write("B");
console.log("B");
console.log("C");
```

```{code-block} c
#include <stdio.h>

int main()
{
    printf("A");
    printf("A");
    printf("A\n");
    printf("B");
    printf("B\n");
    printf("C\n");
    return 0;
}
```

```{code-block} c++
#include <iostream>

using namespace std;

int main()
{
    cout << "A";
    cout << "A";
    cout << "A" << endl;
    cout << "B";
    cout << "B" << endl;
    cout << "C" << endl;

    return 0;
}
```
````

```text
AAA
BB
C
```

## Comments

Comments are useful to provide documentation and leave notes to yourself or other programmers who are working on your code with you. There are two main ways to write comments in Java (where `...` is some text):
* Single-line comments with `// ...`
* Multi-line comments with `/* ... */`

Here is an example program that uses comments

````{tab-set-code}

```{code-block} java
public class Comments {
    public static void main(String[] args) {
        // This is a single-line comment
        System.out.println("First");
        /*
        This is
        a comment
        that spans multiple
        lines
        */
        System.out.println("Second");
    }
}
```

```{code-block} python
# This is a single-line comment
print("First")
"""
This is
a comment
that spans multiple
lines
"""
print("Second")
```

```{code-block} javascript
// This is a single-line comment
console.log("First");
/*
This is
a comment
that spans multiple
lines
*/
console.log("Second");
```

```{code-block} c
#include <stdio.h>

int main()
{
    // This is a single-line comment
    printf("First\n");
    /*
    This is
    a comment
    that spans multiple
    lines
    */
    printf("Second\n");
    return 0;
}
```

```{code-block} c++
#include <iostream>

using namespace std;

int main()
{
    // This is a single-line comment
    cout << "First" << endl;
    /*
    This is
    a comment
    that spans multiple
    lines
    */
    cout << "Second" << endl;

    return 0;
}
```
````

You write comments on any line of a program, even above a method or a method definition. It is very common to provide documentation for your class and your methods by leaving a comment above those methods. You normally don't need to comment your `main` method though.

```java
// This is a comment explaining what this class does
public class Example {
    // This is a comment explaining this method
    public static void main(String[] args) {
        // These comments are for you and your coworkers to explain complicated code
        System.out.println("Hello!");
    }
}