# <i class="fas fa-book fa-fw"></i> Loops

## While Loops

Just like most languages, Java has a notion of a `while` loop that runs multiple times while some condition is true. The syntax is similar to most other languages, with the normal Java requirements that we saw from if statements to have parentheses around the conditions and using curly brackets to indicate the start/stop of the loop body.


````{tab-set-code}

```{code-block} java
int n = 1;
while (n < 100) {
    System.out.println(n);
    n = 2 * n;
}

System.out.println("After loop");
```

```{code-block} python
n = 1
while n < 100:
    print(n)
    n = 2 * n

print("After loop")
```

```{code-block} javascript
let n = 1;
while (n < 100) {
    console.log(n);
    n = 2 * n;
}

console.log("After loop");
```

```{code-block} c
int n = 1;
while (n < 100) {
    printf("%d\n", n);
    n = 2 * n;
}

printf("After loop\n");
```

```{code-block} c++
int n = 1;
while (n < 100) {
    cout << n << endl;
    n = 2 * n;
}

cout << "After loop" << endl;
```
````

The semantics of the `while` loop are consistent across most languages: it repeatedly evaluates the condition and each time, if the condition is true, runs the body of the loop and stops once the condition is evaluated to false.

## For Loop
While the syntax for while loops is fairly consistent across languages, `for` loops generally have quite different syntax across languages. We will first show the syntax to print the numbers between 0 and 10 in Java, and then will explain all of parts of the syntax.

````{tab-set-code}

```{code-block} java
for (int i = 0; i < 11; i = i + 1) {
    System.out.println(i);
}
```

```{code-block} python
for i in range(11):
    print(i)
```

```{code-block} javascript
for (let i = 0; i < 11; i = i + 1) {
    console.log(i);
}
```

```{code-block} c
for (int i = 0; i < 11; i = i + 1) {
    printf("%d\n", i);
}
```

```{code-block} c++
for (int i = 0; i < 11; i = i + 1) {
    cout << i << endl;
}
```
````

The for loop in Java is fairly complex in that you have to specify a lot of things! The general format of the for loop in Java is the following:

```text
for (initialization; condition; update) {
    body;
}
```

So from the example above, the `for` loop runs the following steps (in order)
1. `initialization`: `int i = 0` this sets up a loop variable called `i` to start at 0
2. `condition`: `i < 11` this is the condition in which the for loop will continue to run. Think of this like the while loop condition.
3. `body`: `System.out.println(i)` is the body of the loop that will run once for each iteration of the loop.
4. `update`: `i = i + 1` is run to update the loop variable.
5. Repeat steps 2, 3, and 4 until the condition becomes false when we check step 3, in which case the loop stops.

### Short Update Syntax

It is quite tedious to write out `i = i + 1` every time you write a for loop, so Java provides two shorthand syntaxes to do the same thing. The following are essentially equivalent for almost all programming tasks.

* `i = i + 1;`
* `i += 1;`
* `i++;`

Similarly, there are operators for subtracting by 1 with

* `i = i - 1;`
* `i -= 1;`
* `i--;`

So this means we would write the loop above as:

```java
for (int i = 0; i < 11; i++) {
    System.out.println(i);
}
```

## Scope
An important notion in Java is the concept of a variable's **scope**. A variable is only defined in a certain part of the program, and we call this part of the program the variable's scope. In Java, scope is fairly simple in that a variable is only defined after its declaration until the next set of a closing curly bracket. The following code snippet demonstrates the concept of the variable `n` by showing where it is valid to reference it and where you can't. In the context of programming, we call trying to use a variable that is not defined in your current scope using something "out of scope".

```java
System.out.println(n);  // Out of scope: Not defined yet
for (int i = 0; i < 10; i++) {
    System.out.println(n); // Out of scope: Not defined yet
    int n = 2 * i;  // n is now defined and its scope is the for loop body
    System.out.println(n);  // n is in scope
}
System.out.println(n);  // Out of scope: No longer defined
```

Note how the variable `n` is only defined after its declaration but only until the body of the for loop continues. Outside of the loop, `n` can no longer be referenced since it is out of scope.

One variable to not in particular is the loop variable `i` in the example above. `i`'s scope is limited to the for loop body and the for loop "header" (the initialization, condition, and update). This means you can refer to `i` in any of those parts, but not outside the loop.