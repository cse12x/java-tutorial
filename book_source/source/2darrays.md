# <i class="fas fa-book fa-fw"></i> 2DArrays

## 2DArray Fundamentals

An 2D array is very similar to an 1D array, or just an array as we have learned, only that instead of storing primiative types, it stores another array. In other words, a 2D array is an array where each element contains another array. Commonly this is represented/used when dealing with images, graphs, tables, and various other 2D representations.

Much like how you would access a specific element in an array using square brackets '[]', for a 2D array, you need to add one more pair of brackets to access an element in a 2D array. For example, if you wanted to create a 2D array storing integers, an example syntax could be int[][] (read as a 2D array of ints or 2D int array). Although the specific lengths of the arrays can vary, these arrays still have a fixed length once created. For ease of representation, we typically repersent a 2D array with rows being the inner arrays and columns being the array of arrays. For example:
```
[[0 , 1 , 2 , 3 , 4],
[5 , 6 , 7 , 8 , 9 ],
[10, 11, 12, 13, 14],
[15, 16, 17, 18, 19],
[20, 21, 22, 23, 24]]
```
Notice there is an extra pair of opening and closing brackets, which represents the array that stores all of the other arrays. The syntax is commonly represented as array[row][col] as seen visually as well. Additionally, the call to an array using the syntax array[1] would still function, only instead of providing a primative type, it would instead provide the array stored at that index of the array of arrays.

````{tab-set-code}

```{code-block} java
int[][] array = new int[5][5];
array[1][2] = 1;
array[1][3] = 14;
array[3][4] = array[1][2];
array[4][4] = 5;

for (int i = 0; i < array.length; i++) {
    System.out.println(Arrays.toString(array[i]));
}
```

```{code-block} python
array = [[0]*5] *5  # Short-hand to make a 2D length 5 list
array[1][2] = 1;
array[1][3] = 14;
array[3][4] = array[1][2];
array[4][4] = 5;

print(array)
```

```{code-block} javascript
let array = [[0,0,0,0,0], [0,0,0,0,0], [0,0,0,0,0], [0,0,0,0,0], [0,0,0,0,0]];

array[1][2] = 1;
array[1][3] = 14;
array[3][4] = array[1][2];
array[4][4] = 5;

console.log(array);
```

```{code-block} c
int array[5][5] = {{0}};
array[1][2] = 1;
array[1][3] = 14;
array[3][4] = array[1][2];
array[4][4] = 5;

printf("[");
for (int i = 0; i < 5; i++) {
for (int j = 0; j < 5; j++) {
printf("%d, ", array[i][j]);
}
printf("\n");
}
```

```{code-block} c++
int array[5][5] = {
    {0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0},
};

array[1][2] = 1;
array[1][3] = 14;
array[3][4] = array[1][2];
array[4][4] = 5;
for (int i = 0; i < 5; ++i) {
for (int j = 0; j < 5; ++j) {
std::cout << array[i][j] << " ";
}
std::cout << std::endl; 
}
```
````

Similarily, if we want to change the value at (3,4) of the 2D array to 1, where 3 is the "x" coordinate or outside array and 4 is the "y" or inner array we would do something like array[3][4] = 1.

Two important notes about arrays in Java:
maybe add some things that are unique to 2D arrays and things like that??
* maybe how the array will only be of one type even tho there are two arrays


## Looping over 2D Arrays

We can also use a for loop to view and/or modify each index, although since this is a nested data structure (meaning there is a data structure within another data structure), we need to use a nested for loop in return. The starting value for each loop will typically start at 0, going to either array.length or array[0].length. Note the second for loop, we use array[0].length since we only want to loop through to the end of the inner array length, represented by array[0].


````{tab-set-code}

```{code-block} java
int[][] array = new int[5][5];
// Code to fill array with some values

int sum = 0;
for (int i = 0; i < array.length; i++) {
    for (int j = 0; j < array[0].length; j++) {
        sum += array[i][j];
    }
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

## Printing 2D Arrays

Note that unlike with a 1D array, we cannot simply do Arrays.toString(array) on the entire 2D array, instead we have to loop thorugh each of the rows of the 2D array, then call Arrays.toString(array[i]), where i are values 0 through array.length - 1.

````{tab-set-code}

```{code-block} java

int[][] array = new int[5][5];
array[1][2] = 1;
array[1][3] = 14;
array[3][4] = array[1][2];
array[4][4] = 5;

for (int i = 0; i < array.length; i++) {
    System.out.println(Arrays.toString(array[i]));
}
```

```{code-block} python
array = [0] * 3  # Short-hand to make a length 3 list
array[0] = 8
array[1] = 1
array[2] = 7

print(array)
// Output: [8, 1, 7]
```

```{code-block} javascript
let array = [[], [], [], []];


console.log(array);
// Output: [8, 1, 7]
```

```{code-block} c
int array[3];
array[0] = 8;
array[1] = 1;
array[2] = 7;

printf("[");
for (int i = 0; i < 2; i++) {
    printf("%d, ", array[i]);
}
printf("%d]\n", array[2]);
// Output: [8, 1, 7]
```

```{code-block} c++
int array[3];
array[0] = 8;
array[1] = 1;
array[2] = 7;

cout << "[";
for (int i = 0; i < 2; i++) {
    cout << array[i] << ", ";
}
cout << array[2] << "]" << endl;
// Output: [8, 1, 7]
```
````

This code yield the following output.

```text
[0, 0, 0, 0, 0]
[0, 0, 1, 14, 0]
[0, 0, 0, 0, 0]
[0, 0, 0, 0, 1]
[0, 0, 0, 0, 5]
```