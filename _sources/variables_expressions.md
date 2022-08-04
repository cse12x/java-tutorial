# <i class="fas fa-book fa-fw"></i> Variables, Types, Expressions

## Variables
Every variable and Java must be declared with a **type** to indicate which type of data will be stored in that variable. For example, the following program makes a variable called `x` and another variable called `y` and prints them out. Note that you have to specify when declaring the variable `x` that it will store an integer number (`int`).

````{tab-set-code}

```{code-block} java
public class Variables {
    public static void main(String[] args) {
        int x = 4;
        int y = 6;
        System.out.println(x);
        System.out.println(y);
    }
}
```

```{code-block} python
x = 4
y = 5
print(x)
print(y)
```

```{code-block} javascript
let x = 4;
let y = 5;
console.log(x);
console.log(y);
```

```{code-block} c
#include <stdio.h>

int main()
{
    int x = 4;
    int y = 6;
    printf("%d\n", x);
    printf("%d\n", y);
    return 0;
}
```

```{code-block} c++
#include <iostream>

using namespace std;

int main()
{
    int x = 4;
    int y = 6;
    cout << x << endl;
    cout << y << endl;

    return 0;
}
```
````

```text
4
5
```

Note that you only have to specify the type of the variable when you first **declare** the variable. In other lines of code when you are using the variable, you just use the variable name (i.e., `System.out.println(x)`).

## Assignment
Variables in Java operate like most other languages such that you can update their values with an assignment statement. The following program makes a variable `x`, prints it out and then updates the value before printing it again. Note that as we said above, we don't need to specify the type in the assignment statement, only the initial declaration.

````{tab-set-code}

```{code-block} java
public class Assignment {
    public static void main(String[] args) {
        int x = 4;
        System.out.println(x);
        x = 7;
        System.out.println(x);
    }
}
```

```{code-block} python
x = 4
print(x)
x = 7
print(x)
```

```{code-block} javascript
let x = 4;
console.log(x);
x = 7;
console.log(x);
```

```{code-block} c
#include <stdio.h>

int main()
{
    int x = 4;
    printf("%d\n", x);
    x = 7;
    printf("%d\n", x);
    return 0;
}
```

```{code-block} c++
#include <iostream>

using namespace std;

int main()
{
    int x = 4;
    cout << x << endl;
    x = 7;
    cout << x << endl;

    return 0;
}
```
````

## Types
Since you have to be explicit in Java about types, it's important to know some of the fundamental data types that you can use in your programs. The following list shows the most common data types used in Java.

* `int` typed variables store integer numbers such as `5`.
* `double` typed variables store real numbers such a `4.5`.
* `boolean` typed variables store `true` or `false`.
* `char` typed variables store a single character such as `'a'`.
* `String` typed variables store a sequence of characters such as `"Hello"`

Note that `String` starts with a capital letter! This is because it is an "Object type" rather than a "primitive type". We won't cover this distinction in this section, but just note that `String`s can do more than simpler data types such as an `int` can. Also note that you surround a `char` value with single-quotes (`'`) and `String`s with double-quotes (`"`).

````{tab-set-code}

```{code-block} java
public class Types {
    public static void main(String[] args) {
        int a = 5;
        double b = 4.5;
        boolean c = true;
        char d = 'a';
        String e = "Hello";
    }
}
```

```{code-block} python
a = 5
b = 4.5
c = True

# Note that Python doesn't really distinguish between
# and a string of characters

d = "a"
e = "Hello"
```

```{code-block} javascript
let a = 5;
let b = 4.5;
let c = true;

// Note that Javascript doesn't really distinguish between
// and a string of characters

let d = "a";
let e = "Hello";
```

```{code-block} c
#include <stdio.h>

int main()
{
    int a = 5;
    double b = 4.5;
    int c = 1; // c doesn't have a boolean type
    char d = 'a';
    char *e = "Hello";
    return 0;
}
```

```{code-block} c++
#include <iostream>

int main()
{
    int a = 5;
    double b = 4.5;
    bool c = true;
    char d = 'a';
    string e = "Hello";

    return 0;
}
```
````

Once a variable has a defined type, you cannot change the type of that variable. Java is also very strict when it comes to types. By saying `x` is of type `int`, you can only store integers in that variable. For example, the following code would cause a type error.

```java
public class Types {
    public static void main(String[] args) {
        int a = 5;
        a = 4.5;  // Error! Incompatible types
    }
}
```

## Expressions

Java provides operators to combine values in a particular way for computation. All of the usual operators such as addition (`+`), subtraction (`-`), multiplication (`*`) and division (`/`) are present.

````{tab-set-code}

```{code-block} java
public class Expressions {
    public static void main(String[] args) {
        int x = 5;
        int y = 3;
        double z = 4.5;
        System.out.println(x + z - x / y);
    }
}
```

```{code-block} python
x = 5
y = 3
z = 4.5
print(x + z - x // y)
# Note that / in Java does integer division
```

```{code-block} javascript
let x = 5;
let y = 3;
let z = 4.5;
console.log(x + z - Math.floor(x / y));
// Note that / in Java does integer division (no need for Math.floor)
```

```{code-block} c
#include <stdio.h>

int main()
{
    int x = 5;
    int y = 3;
    double z = 4.5;
    printf("%f\n", x + z - x / y);
    return 0;
}
```

```{code-block} c++
#include <iostream>

int main()
{
    int x = 5;
    int y = 3;
    double z = 4.5;
    cout << x + z - x / y << endl;

    return 0;
}
```
````

The output of this code is 8.5, which you may or may not have expected! One thing to note is that division between integers uses a special rule for **integer division**. When `x` is 5 and `y` is 3, `x / y` evaluates to 1 since 3 only goes into 5 one time evenly! You have to pay particular attention to when you are doing division to make sure if integer division is appropriate or not. If you do division involving a `double`, then "normal division" will be used.

Related to the concept of integer division is computing the remainder of a division operation. Java provides the **modulo operator** or **mod** to compute the remainder from integer division with the symbol `%`. Using the numbers from above, the expression `x % y` would equal 2 since the remainder of dividing 5 by 3 is 2.

Java has no operator for exponentiation (e.g., $3^2$). Instead, you have to use the `Math` module to do powers.

````{tab-set-code}

```{code-block} java
public class Expressions {
    public static void main(String[] args) {
        int x = 3;
        int y = Math.pow(x, 2);
    }
}
```

```{code-block} python
x = 3
y = x ** 2
```

```{code-block} javascript
let x = 3;
let y = x ** 2;
```

```{code-block} c
#include <stdio.h>
#include <math.h>

int main()
{
    int x = 3;
    int y = pow(x, 2);
    printf("%d\n", y);
    return 0;
}
```

```{code-block} c++
#include <iostream>
#include <bits/stdc++.h>

using namespace std;

int main()
{
    int x = 3;
    int y = pow(x, 2);
    cout << y << endl;

    return 0;
}
```
````

## Casting

You are able to convert between types by **casting**. Casting is the process of converting one type to another. Note that there are special rules for what values can or can't be cast from one type to another that we will not discuss completely. The most important casting scenarios involve:

* Converting an `int` to a `double`
* Converting a `double` to an `int`

The following program shows the syntax to cast from these two types. For example, `(double) a` is an expression that interprets the value stored in `a` as a double. Note that it doesn't actually change the value stored in `a`, just returns the `double` version of whatever value is currently inside `a`.

````{tab-set-code}

```{code-block} java
public class Casting {
    public static void main(String[] args) {
        int a = 5;
        double b = 3.5;
        double c = (double) a;
        int d = (int) b;
        System.out.println(c);  // Prints 5.0
        System.out.println(d);  // Prints 3
    }
}
```

```{code-block} python
a = 5
b = 3.5
c = float(a)
d = int(b)
print(c)  # Prints 5.0
print(d)  # Prints 3
```

```{code-block} javascript
// JavaScript only has a Number type that stores floating point / doubles values
// There is no distinction between integers and doubles, and no way to convert between them
```

```{code-block} c
#include <stdio.h>

int main()
{
    int a = 5;
    double b = 3.5;
    double c = (double) a;
    int d = (int) b;
    printf("%f\n", c);  // Prints 5.0
    printf("%d\n", d);  // Prints 3
    return 0;
}
```

```{code-block} c++
#include <iostream>
#include <bits/stdc++.h>

using namespace std;

int main()
{
    int a = 5;
    double b = 3.5;
    double c = static_cast<double>(a);
    int d = static_cast<int>(b);
    cout << c << endl;  // Prints 5.0
    cout << d << endl;  // Prints 3

    return 0;
}
```
````

Note that converting from `double` to `int` *loses precision* in that the things after the decimal are lost.
