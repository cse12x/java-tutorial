# <i class="fas fa-book fa-fw"></i> If/Else Statements

```{admonition} Info
In the following section, we will not include the class definition or main method to focus on the syntax at hand.
```

## Comparisons
Very commonly, we use `boolean`s when comparing two numbers. Java provides operators to compare two numbers with the following syntax.

````{tab-set-code}

```{code-block} java
int x = 4;
int y = 5;
System.out.println(x == y);  // Equal
System.out.println(x != y);  // Not equal
System.out.println(x < y);   // Less than
System.out.println(x <= y);  // Less than or equal to
System.out.println(x > y);   // Greater than
System.out.println(x >= y);  // Greater than or equal to
```

```{code-block} python
x = 4
y = 5
print(x == y)
print(x != y)
print(x < y)
print(x <= y)
print(x > y)
print(x >= y)
```

```{code-block} javascript
let x = 4;
let y = 5;
console.log(x === y);
console.log(x !== y);
console.log(x < y);
console.log(x <= y);
console.log(x > y);
console.log(x >= y);
```

```{code-block} c
int x = 4;
int y = 5;
printf("%d\n", x == y);  // Equal
printf("%d\n", x != y);  // Not equal
printf("%d\n", x < y);   // Less than
printf("%d\n", x <= y);  // Less than or equal to
printf("%d\n", x > y);   // Greater than
printf("%d\n", x >= y);  // Greater than or equal to
```

```{code-block} c++
int x = 4;
int y = 5;
cout << (x == y) << endl;  // Equal
cout << (x != y) << endl;  // Not equal
cout << (x < y) << endl;   // Less than
cout << (x <= y) << endl;  // Less than or equal to
cout << (x > y) << endl;   // Greater than
cout << (x >= y) << endl;  // Greater than or equal to
```
````

## Boolean Operators

Booleans represent true or false values. You can combine boolean values using the logical operators:
* `a && b` for "and". This evaluates to true if and only if both `a` and `b` are true, otherwise it is false.
* `a || b` for "or". This evaluates to true if any of `a` or `b` are true. It is only false if both `a` and `b` are false.
* `!a` for "not". This "negates" the value such that is `false` if `a` was `true`, otherwise it is `true` if `a` was false.

The following code shows how to use these operators.

````{tab-set-code}

```{code-block} java
boolean b1 = true;
boolean b2 = false;
boolean b3 = b1 && b2;
boolean b4 = b3 || !b2;
boolean b5 = b3 == b4;
```

```{code-block} python
b1 = True
b2 = False
b3 = b1 and b2
b4 = b3 or not b2
b5 = b3 == b4
```

```{code-block} javascript
let b1 = true;
let b2 = false;
let b3 = b1 && b2;
let b4 = b3 || !b2;
let b5 = b3 === b4;
```

```{code-block} c
int b1 = 1;
int b2 = 0;
int b3 = b1 && b2;
int b4 = b3 || !b2;
int b5 = b3 == b4;
```

```{code-block} c++
bool b1 = true;
bool b2 = false;
bool b3 = b1 && b2;
bool b4 = b3 || !b2;
bool b5 = b3 == b4;
```
````

```{admonition} Test your understanding: What is the value of b4?
:class: dropdown

`b4` is `true`. To figure this out, we can identify the value of each variable.

* `b1` is `true`
* `b2` is `false`
* `b3` is `false` because `b1 && b2` evaluates to `false (at least one argument is `false`).
* `b4` is `true`. To evaluate `b3 || !b2` we first evaluate `!b2` to get `true`, and then `b3 || true` is `true`
* `b5` is `false` because `b3` is `false` and `b4` is `true`, which means they are not equal.
```

## Conditionals

Conditional statements or if/else statements in Java behave similarly to other languages. Important things to note about conditionals in Java are:

* `if` and `else if` statements require parentheses around their conditions.
* Java uses curly brackets (`{}`) to denote the opening and closing of an if/ese statement's body. Anything inside the curly brackets of a if/else statement only run if the condition for that block is met.
* Proper indentation is not a requirement of the Java language, but it is **strongly recommended** that you use proper indentation to show what lines of code belong inside/outside the body of an if statement.

````{tab-set-code}

```{code-block} java
int n = 4;
if (n % 3 == 0) {
    System.out.println("Case 0");
} else if (n % 3 == 1 || n % 2 == 0) {
    System.out.println("Case 1");
} else {
    System.out.println("Case 2");
}
System.out.println("After if/else");
```

```{code-block} python
n = 4
if n % 3 == 0:
    print('Case 0')
elif n % 3 == 1 or n % 2 == 0:
    print('Case 1')
else:
    print('Case 2')
print('After if/else')
```

```{code-block} javascript
let n = 4;
if (n % 3 === 0) {
    console.log('Case 0');
} else if (n % 3 === 1 || n % 2 === 0) {
    console.log('Case 1');
} else {
    console.log('Case 2');
}
console.log('After if/else');
```

```{code-block} c
int n = 4;
if (n % 3 == 0) {
    printf("Case 0\n");
} else if (n % 3 == 1 || n % 2 == 0) {
    printf("Case 1\n");
} else {
    printf("Case 2\n");
}
printf("After if/else\n");
```

```{code-block} c++
int n = 4;
if (n % 3 == 0) {
    cout << "Case 0" << endl;
} else if (n % 3 == 1 || n % 2 == 0) {
    cout << "Case 1" << endl;
} else {
    cout << "Case 2" << endl;
}
cout << "After if/else" << endl;
```
````

The output of this block is

```text
Case 1
After if/else
```