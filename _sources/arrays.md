# <i class="fas fa-book fa-fw"></i> Arrays

## Array Fundamentals

One of the most important capabilities in programming comes from the ability to process some *sequence of data*. For example we might write programs to process grades of students in a class, information about respondents to the US Census, or many other applications. Most programming languages provide a first introduction to processing sequences of data with the concept of *arrays*. An array is a *fixed-length* structure that stores multiple values of the same type.

In Java, the array syntax is mostly the same to how arrays are used in other languages. The largest difference is how you specify the type of an array. If you want an array storing integer values, the type is `int[]` (read as "int array"). The following code snippet makes an int array storing 5 elements, and uses assignment statements to fill in the array. One thing to note is that Java starts arrays with index 0. So an array of length 5 has valid indices `0, 1, 2, 3, 4`.


````{tab-set-code}

```{code-block} java
int[] array = new int[5];
array[0] = 1;
array[1] = 14;
array[3] = array[1];
array[4] = 5;

System.out.println(array);
```

```{code-block} python
array = [0] * 5  # Short-hand to make a length 5 list
array[0] = 1
array[1] = 14
array[3] = array[1]
array[4] = 5

print(array)
```

```{code-block} javascript
let array = [0, 0, 0, 0, 0];

array[0] = 1;
array[1] = 14;
array[3] = array[1];
array[4] = 5;

console.log(array);
```

```{code-block} c
int array[5];
array[0] = 1;
array[1] = 14;
array[2] = 0; // in C, you need to explictly 0 initialize memory
array[3] = array[1];
array[4] = 5;

printf("[");
for (int i = 0; i < 4; i++) {
    printf("%d, ", array[i]);
}
printf("%d]\n", array[4]);
```

```{code-block} c++
int array[5];
array[0] = 1;
array[1] = 14;
array[2] = 0; // in C++, you need to explictly 0 initialize memory
array[3] = array[1];
array[4] = 5;

cout << "[";
for (int i = 0; i < 4; i++) {
    cout << array[i] << ", ";
}
cout << array[4] << "]" << endl;
```
````

The syntax of assigning or getting a value inside an array is much like using a variable, but we add a `[x]` at the end to indicate we want to use index `x`. So on the left-hand of the `=` for assignment we are assigning *into* the variable at that index, and on the right side we are *getting* the value at that index.

By default, an array is initialized with the *zero-equivalent* of whatever type the array stores. So after creating the array in the example above, its contents start `[0, 0, 0, 0, 0]`.  By zero-equivalent, we mean there is a special value for each type that Java considers the most like 0 which will be the default contents for arrays of that type. So for a `boolean[]`, it defaults to `false` and for a `double[]` it defaults to `0.0`. You can also make arrays of object types such as `String[]` which defaults to a special value called `null`. Note that it is not expected that you understand the concept of `null` yet, so we do not explain what this special value means.

Two important notes about arrays in Java:
* Because Java requires you to declare types of variables ahead of time, it's not really possible to store an array of mixed types. You couldn't make an array of `boolean` or `int` types in the same array, since `int[]` only allows `int` and `boolean[]` only allows `boolean`.
* Arrays in Java are *fixed-length*. This means when you make an array, you have to specify how long it is in the line `new int[10]`. This is a limitation of arrays in that they are not dynamically sized. We will learn more complex data structures such as `ArrayList` later that dynamically resize based on what values you add.

## Looping over Arrays

Since arrays are designed to hold sequences of values, it is often useful to be able to process all of the values inside a loop rather than hard coding indices. In Java, an array knows how many elements are inside of it by accessing the `array.length` property. The loop is just using a for loop over all of the possible indices in the array. In our example above we said that for an array of length 5, the possible indices are `0, 1, 2, 3, 4` since the array indices start at 0. For a general array of length `array.length`, the possible indices are `0` (inclusive) to `array.length - 1` (inclusive). This is often equivalently written as `0` (inclusive) to `array.length` (exclusive), which is how the loop below is written.

````{tab-set-code}

```{code-block} java
int[] array = new int[5];
// Code to fill array with some values

int sum = 0;
for (int i = 0; i < array.length; i++) {
    sum += array[i];
}
```

```{code-block} python
array = [0] * 5  # Short-hand to make a length 5 list
# Code to fill array with some values

sum = 0
for i in range(len(array)):
    sum += array[i]
```

```{code-block} javascript
let array = [0, 0, 0, 0, 0];
// Code to fill array with some values

let sum = 0;
for (let i = 0; i < array.length; i++) {
    sum += array[i];
}
```

```{code-block} c
int array[5];
// Code to fill array with some values

int sum = 0;
size_t length = sizeof(array) / sizeof(array[0]);
for (int i = 0; i < length; i++) {
    sum += array[i];
}
```

```{code-block} c++
int array[5];
// Code to fill array with some values

int sum = 0;
size_t length = sizeof(array) / sizeof(array[0]);
for (int i = 0; i < length; i++) {
    sum += array[i];
}
```

```{code-block} c++
int array[5];
// Code to fill array with some values

int sum = 0;
for (int i = 0; i < array.length; i++) {
    sum += array[i];
}
```
````

Array manipulations can be more complicated when it involves reading or accessing multiple indices at a time. Special care must be taken to make sure you never go **out of bounds** of an array. An `ArrayIndexOutOfBoundsException` occurs if you ever try to access an invalid index which is any index `< 0` or `>= array.length`.

The following code snippet shows how to write code that is careful about array indices in the task of trying to shift all the array elements to the left one index. So for example, if `array` stores the numbers `[1, 2, 3]`, then `shift(array)` should modify the array to store the numbers `[2, 3, 1]`. Note that since the loop is written to access both the values at index `i` and `i + 1`, we have to stop our loop one early so it doesn't cause an `ArrayOutOfBoundsException`. Also note the special case to handle the *empty array* case where the array length is 0!

````{tab-set-code}

```{code-block} java
public static void shift(int[] numbers) {
    if (numbers.length > 0) {
        // Save the first number for later
        int firstNumber = numbers[0];

        // Shift every number forward one index
        for (int i = 0; i < numbers.length - 1; i++) {
            numbers[i] = numbers[i + 1];
        }

        // Store the old first number at the last spot
        numbers[numbers.length - 1] = firstNumber;
    }
}
```

```{code-block} python
def shift(numbers):
    if numbers:
        first_number = numbers[0]

        for i in range(len(numbers)):
            numbers[i] = numbers[i + 1]

        numbers[len(numbers) - 1] = first_number
```

```{code-block} javascript
function shift(numbers) {
    if (numbers.length > 0) {
        // Save the first number for later
        let firstNumber = numbers[0];

        // Shift every number forward one index
        for (let i = 0; i < numbers.length - 1; i++) {
            numbers[i] = numbers[i + 1];
        }

        // Store the old first number at the last spot
        numbers[numbers.length - 1] = firstNumber;
    }
}
```

```{code-block} c
void shift(int numbers[]) {
    size_t length = sizeof(numbers) / sizeof(numbers[0]);
    if (length > 0) {
        // Save the first number for later
        int firstNumber = numbers[0];

        // Shift every number forward one index
        for (int i = 0; i < length - 1; i++) {
            numbers[i] = numbers[i + 1];
        }

        // Store the old first number at the last spot
        numbers[length - 1] = firstNumber;
    }
}
```

```{code-block} c++
void shift(int numbers[]) {
    size_t length = sizeof(numbers) / sizeof(numbers[0]);
    if (length > 0) {
        // Save the first number for later
        int firstNumber = numbers[0];

        // Shift every number forward one index
        for (int i = 0; i < length - 1; i++) {
            numbers[i] = numbers[i + 1];
        }

        // Store the old first number at the last spot
        numbers[length - 1] = firstNumber;
    }
}
```

```{code-block} c++
void shift(int numbers[]) {
    if (numbers.length > 0) {
        // Save the first number for later
        int firstNumber = numbers[0];

        // Shift every number forward one index
        for (int i = 0; i < numbers.length - 1; i++) {
            numbers[i] = numbers[i + 1];
        }

        // Store the old first number at the last spot
        numbers[numbers.length - 1] = firstNumber;
    }
}
```
````