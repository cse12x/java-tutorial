# <i class="fas fa-hand-sparkles fa-fw"></i> Introduction and Hello World!

Welcome! 🎉

This is the Java tutorial! This tutorial is will be a crash course in the syntax of the Java programming language. **This tutorial assumes that you already know how to program** in *some* text-based language (e.g., Python, Javascript, C, etc.) and are interested in learning the fundamentals of programming in Java specifically. So for example, we won't completely explain programming concepts such as loops from scratch, but will teach you all of the details of the syntax for loops in Java.

This tutorial takes a *comparative approach* by showing the Java syntax next to the analogous syntax in other popular languages (currently Python, Javascript, C, and C++). As you will see in the section below, we show the syntax for a programming construct in Java and you can also use the language tabs to see the analogous syntax in another language you may be familiar with. **Learning a new language (programming or spoken) can be very difficult**. Fortunately, you already know many of the *programming ideas*, but just need to learn the "words" to say them in Java. It is important to tie in the new syntax you are learning to these foundational concepts you already know!

By the end of this tutorial, you will not be a master at Java. To gain fluency in a language you need to practice and practice takes time. Our hope is that this guide will make practicing easier and act as a reference for when you are trying to write Java. You will become familiar with looking up "How do I do X in Java", but after practicing for long enough you will start to think in Java instead of your previous language.

If you would like to request examples be added for another language or you spot a bug, please add a language to [this issue](https://github.com/cse12x/java-tutorial/issues/1) or vote on one someone else has suggested.

## Other Resources
* [Learn X in Y minutes (where X=Java)](https://learnxinyminutes.com/docs/java/)

## Hello World!

As is tradition when learning a new programming language, you often see the simplest program you could write that prints "Hello World!" to the screen. We will start by just showing the syntax and then we will explain the components. Reminder, you can click on the other programming language to see how the same program would be written in those languages.


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

That is a fair amount of text you have to write just to get the computer to say hello! One of the drawbacks of Java is it can be a bit verbose at times, but it something you get used to! Most of this code is what we might call "boiler plate" code, or code that you just have to write because the language requires it but doesn't really do anything important. It will take some time, but you will just need to memorize these wrapper components you will be writing for most Java programs. We'll start by explaining the simplest part, the print statement, and then will explain the rest.

* `System.out.println("Hello World!");` is the actual line that causes the computer to print. In Java, we interact with the `System.out` object when we want to print text. `System.out.println` is a method that we are calling passing `"Hello World!"` as a parameter. Note that the Java statements such as a print statement end in a semicolon (`;`) to indicate the end of the line of Java.
* Everything outside of that line is generic starter code that most Java programs need.
    * **Class definition**
      ```java
      public class HelloWorld {
          ...
      }
      ```

      Every Java file needs to contain a `class` that you put code inside. We will talk more about classes in another chapter, so all you need to know know is you will need to write `public class X { ... }` (where `...` is the rest of your code) for each new Java file you write. Importantly, the name of the class has to match the name of the file. So we named the class `HelloWorld` because it is in a file called `HelloWorld.java`.
    * **Main method**
      ```java
      public static void main(String[] args) {
         ...
      }
      ```
      Any runnable program will need a main method with this exact definition. We will talk about the details of this text more in the section on Methods, so for now you will just need to memorize these components and write them down.

      ```{admonition} Tip
        It's okay to copy and paste this line from file to file as you learn it, but we recommend practicing writing it out so you can memorize the parts*.
      ```
    * In Java, we use curly brackets (`{` and `}`) to indicate how lines of code belong inside a structure. Every opening curly bracket (`{`) should have a corresponding closing curly bracket (`}`) to close the structure. Note that the class definition and the main method definition both open a curly bracket to put stuff inside, so we need two closing curly brackets to close each one.
    * In Java, we use `//` to write single-line comments.

So to recap the whole program, we have

```java
// Contents of HelloWorld.java

public class HelloWorld {                   // Class definition (matches file name)
  public static void main(String[] args) {  // Main method definition (always same)
    System.out.println("Hello World!");     // Actual code to print (needs ; at end)
  }                                         // Closing curly bracket for main method
}                                           // Closing curly bracket for class
```
