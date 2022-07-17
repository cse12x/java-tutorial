# <i class="fas fa-book fa-fw"></i> Strings

We have briefly mentioned the concept of a `String` in Java. A `String` is a sequence of characters, which we denote surrounded by double-quotes (e.g., `"Hello World!"`).

## String Concatenation

You can make variables of type `String` and you can even use `+` to combine `String`s together with **string concatenation**.

````{tab-set-code}

```{code-block} java
String greeting = "Hello";
String location = "Seattle";
String result = greeting + " " + location + "!";
System.out.println(result);

// Output:
// Hello Seattle!
```

```{code-block} python
greeting = "Hello"
location = "Seattle"
result = greeting + " " + location + "!"
print(result)

# Output:
# Hello Seattle!
```
````

In Java, you can also concatenate `String`s with other data types, and they will be converted to `String`s!

````{tab-set-code}

```{code-block} java
String s1 = "a";
String s2 = s1 + 4;
System.out.println(s2);  // a4
```

```{code-block} python
s1 = "a"
s2 = s1 + str(4)
print(s2)  # a4
```
````

## String Methods

Earlier, we mentioned that `String` is a bit special compared to other data types, indicated by having an upper-case name compared to the primitive data types such as `int`. This is because `String` is an example of a special "object type" that carries more complex functionalities. For example, you can ask `String`s to perform more complicated operation by calling **method**s on them. The following code snippet shows many of the most common methods useful for `String`s. You can learn about more of the methods [here](https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/lang/String.html).

````{tab-set-code}

```{code-block} java
String s1 = "Hello";

String s2 = s1.toUpperCase();  // "HELLO"
String s3 = s1.toLowerCase();  // "hello"

String s4 = s1.substring(1, 4);  // "ell"
String s5 = s1.substring(2);     // "llo"

char c = s1.charAt(1);    // 'e'
int i = s1.indexOf('l');  // 2
```

```{code-block} python
s1 = "Hello"

s2 = s1.upper()  # "HELLO"
s3 = s1.lower()  # "hello"

s4 = s1[1:4]  # "ell"
s5 = s1[2:]   # "llo"

c = s1[1]      # "e"
s1.index("l")  # 2
```
````

One thing to note, in particular, is that operations on `String`s **don't change the original `String`, but return a new one**. All of these method calls above are returning *new* `String`s and the original one is still stored in `s1`, unchanged.