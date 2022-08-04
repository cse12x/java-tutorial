# <i class="fas fa-book fa-fw"></i> Methods

Methods allow you to define reusable bundles of code that can help reduce redundancy and organize your code for readability. The concept of methods, or also called functions in other languages, are the same in Java but the syntax looks a little bit different.

Like before, we will start by showing the syntax and then will explain the components.

````{tab-set-code}

```{code-block} java
public class Example {
    public static void main(String[] args) {
        System.out.println("The main method starts");
        String message = greetings(4, "Seattle");
        System.out.println(message);
        System.out.println("The main method ends");
    }

    public static String greetings(int times, String greetingTo) {
        System.out.println("Greetings starts");
        for (int i = 0; i < times; i++) {
            System.out.println("Hello " + greetingTo + "!");
        }
        System.out.println("Greetings ends");
        return "Greeted " + times + " times";
    }
}
```

```{code-block} python
def main():
    print("The main method starts")
    message = greetings(4, "Seattle")
    print(message)
    print("The main method ends")


def greetings(times, greeting_to):
    print("Greetings starts")
    for i in range(times):
        print("Hello " + greeting_to + "!")
    print("Greeting ends")
    return "Greeted " + str(times) + " times"


if __name__ == "__main__":
    main()
```

```{code-block} javascript
function main() {
  console.log("The main method starts");
  let message = greetings(4, "Seattle");
  console.log(message);
  console.log("The main method ends");
}

function greetings(times, greetingTo) {
  console.log("Greetings starts");
  for (let i = 0; i < times; i++) {
      console.log("Hello " + greetingTo + "!");
  }
  console.log("Greetings ends");
  return "Greeted " + times + " times";
}

main();
```

```{code-block} c
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

char *greetings(int times, char *greetingTo) {
    printf("Greetings starts\n");

    for (int i = 0; i < times; i++) {
        printf("Hello ");
        printf("%s", greetingTo);
        printf("!\n");
    }
    printf("Greetings ends\n");

    char *retGreeted = (char *) malloc(1024);
    char times_str[20];
    snprintf(times_str, "%d", times);

    strcpy(retGreeted, "Greeted ");
    strcat(retGreeted, times_str);
    strcat(retGreeted, " times");
    return retGreeted;
}

int main() {
    printf("The main method starts\n");
    char *message;
    message = greetings(4, "Seattle");
    printf("%s\n", message);
    free(message);
    printf("The main method ends\n");
    return 0;
```

```{code-block} c++
#include <iostream>
#include <string.h>

using namespace std;

char *greetings(int times, string greetingTo) {
    cout << "Greetings starts" << endl;

    for (int i = 0; i < times; i++) {
        cout << "Hello " << greetingTo << "!" << endl;
    }

    cout << "Greetings ends" << endl;

    char *retGreeted = (char *) malloc(1024);
    char times_str[20];
    sprintf(times_str, "%d", times);

    strcpy(retGreeted, "Greeted ");
    strcat(retGreeted, times_str);
    strcat(retGreeted, " times");
    return retGreeted;
}

int main() {
    cout << "The main method starts" << endl;
    char *message;
    message = greetings(4, "Seattle");
    cout << message << endl;
    free(message);
    cout << "The main method ends" << endl;

    return 0;
}
````

This code has the output:

```text
The main method starts
Greetings starts
Hello Seattle!
Hello Seattle!
Hello Seattle!
Hello Seattle!
Greetings ends
Greeted 4 times
The main method ends
```

In general, the syntax for defining a method in Java is the following:

```text
public static ReturnType methodName(ParameterType1 parameterName1,
                                    ParameterType2 parameterType2, ...) {
    code;
    code;
    code;
    return value;
}
```

Note that we generally will define methods starting with `public static` as part of the Java syntax. Like with control structures such as while loops, we use curly brackets to indicate what lines of code belong inside the method.

The scoping rules that Java uses apply here. This means variables defined inside methods will only be available in that method. This is what we can use **return**s to return a single value from a method to the method that called it. If a method does not need to return a value it doesn't need to, but then the return type should be declared a special value `void` such as

```java
public static void method() {
```

```{admonition} Note

Now that we have seen the general syntax, we can now see that the `main` method shown earlier is just that, a method. Java just requires this method
has this particular method name and parameter so it can call it to run the program.
```

To call a method in Java, you use parentheses after the method name and passing an parameters inside the parens.

```text
ReturnType variableName = methodName(value1, value2);
```