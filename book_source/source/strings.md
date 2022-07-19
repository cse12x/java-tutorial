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

```{code-block} javascript
let greeting = "Hello";
let location = "Seattle";
let result = greeting + " " + location + "!";
console.log(result);

// Output:
// Hello Seattle!
```

```{code-block} c
#include <stdio.h>
#include <string.h>

char result[50]; // buffer to hold result
char *greeting = "Hello";
char *location = "Seattle";
strcpy(result, greeting);
strcat(result, " ");
strcat(result, location);
strcat(result, "!");
printf("%s\n", result);

// Output:
// Hello Seattle!
```

```{code-block} c++
#include <iostream>

using namespace std;

string greeting = "Hello";
string location = "Seattle";
string result = greeting + " " + location + "!";
cout << result << endl;

// Output:
// Hello Seattle!
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

```{code-block} javascript
let s1 = "a";
let s2 = s1 + 4;
console.log(s2); // a4
```

```{code-block} c
char *s1 = "a";
char s2[2];
strcpy(s2, s1);
strcat(s2, "4");
printf("%s\n", s2); // a4
```

```{code-block} c++
string s1 = "a";
string s2 = s1 + "4";
cout << s2 << endl; // a4
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

c = s1[1]          # "e"
i = s1.index("l")  # 2
```

```{code-block} javascript
let s1 = "Hello";

let s2 = s1.toUpperCase();  // "HELLO"
let s3 = s1.toLowerCase();  // "hello"

let s4 = s1.substring(1, 4);  // "ell"
let s5 = s1.substring(2);     //"llo"

let c = s1[1];            // "e"
let i = s1.indexOf("l");  // 2
```

```{code-block} c
#include <stdio.h>
#include <string.h>
#include <ctype.h>

char *s1 = "Hello";
unsigned long int s1_len = strlen(s1);

char s2[s1_len];
for (int i = 0; i < s1_len; i++) {
    s2[i] = toupper(s1[i]); // "HELLO"
}

char s3[s1_len];
for (int i = 0; i < s1_len; i++) {
    s2[i] = tolower(s1[i]); // "hello"
}

char s4[4];
strncpy(s4, &s1[1], 3); // "ell"
s4[3] = '\0';

char s5[4];
strncpy(s5, &s1[2], 3); // "llo"
s5[3] = '\0';

char c = s1[1];                // 'e'
int  i = strstr(s1, "l") - s1; // 2
```

```{code-block} c++
#include <algorithm>
#include <string>

string s1 = "Hello";

transform(s1.begin(), s1.end(), s1.begin(), ::toupper);  // "HELLO"
transform(s1.begin(), s1.end(), s1.begin(), ::tolower);  // "hello"

string s4 = s1.substring(1, 3);  // "ell"
string s5 = s1.substring(2);     // "llo"

char c = s1.at(1);         // 'e'
int i = s1.find('l');      // 2
```
````

One thing to note, in particular, is that operations on `String`s **don't change the original `String`, but return a new one**. All of these method calls above are returning *new* `String`s and the original one is still stored in `s1`, unchanged.