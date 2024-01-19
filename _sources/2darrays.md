# <i class="fas fa-book fa-fw"></i> 2DArrays

## 2DArray Fundamentals

A 2D or "two-dimensional" array is very similar to the arrays that we talked about in the previous section, but instead of elements of types like `int`, `double`, `String`, etc, its element type is _array_. In other words, a 2D array is an array where each element is a reference to _another_ array. This type of data structure is helpful for representing many different kinds of scenarios, such as in applications using images, graphs, and tables. 

A grid is typically represeted using columns and rows, where columns are all the elements of a vertical line of the grid and a row is all of the elements on a horizontal line of a grid. The same logic applies to a 2D array where a commonly used reprensetation to describe the arrays is that the outer array's indexes are the rows of the grid, and the inner arrays indexes are the columns. This can be seen in the 2D array representation below.

You can access elements of a 2D array using square brackets `[]`, in the same way that we accessed elements of 1D arrays in the previous section. However, remember that the elements of a 2D array are arrays! If you want to get one of _those_ arrays' elements, you'll need to use two sets of square brackets `[][]`. For example, if you were dealing with a 2D array of integers `arr`, the type of the 2D array would be `int[][]` and you could access an individual `int` from the 2D array with `arr[_i_][_j_]` where `i` and `j` are the row and column index of the element we wanted. 
```
[[0 , 1 , 2 , 3 , 4],
[5 , 6 , 7 , 8 , 9 ],
[10, 11, 12, 13, 14],
[15, 16, 17, 18, 19],
[20, 21, 22, 23, 24]]
```

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
int array[5][5];
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
int array[5][5];

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

Note the syntax that we are using to assign values to integer elements of the 2D array - we need to use two pairs of square brackets `[][]` and specify the row _and_ column of the space we want to assign the value to. 

## Looping over 2D Arrays

To traverse over a 2D array, it's very common to use a _nested for loop structure_ where the outer for loops iterates over each _row_ of the 2D array, and the inner for loop iterates over each _element_ within each row. See some examples below. 


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

Recall that we would get a nicely-formatted String representation of a 1D array using `Arrays.toString(...)`. However, passing a 2D array to this method will probably not produce the output you're looking for. Instead, you should use the `Arrays.**deep**ToString(...)` method or iterate over each of the rows of the 2D array, then print out each individual row using `Arrays.toString(...)` as shown below. 

````{tab-set-code}

```{code-block} java

int[][] array = new int[5][5];
array[1][2] = 1;
array[1][3] = 14;
array[4][4] = 5;

for (int i = 0; i < array.length; i++) {
    System.out.println(Arrays.toString(array[i]));
}
```

```{code-block} python
array = [[0] * 5 for _ in range(5)]

array[1][2] = 1
array[1][3] = 14
array[4][4] = 5

for row in array:
    print(row)
```

```{code-block} javascript
let array = new Array(5).fill().map(() => new Array(5).fill(0));

array[1][2] = 4;
array[1][3] = 14;
array[4][4] = 5;

console.log(array);
```

```{code-block} c
int array[5][5];

array[1][2] = 4;
array[1][3] = 14;
array[4][4] = 5;

printf("[");
for (int i = 0; i < 5; i++) {
    printf("[");
    for (int j = 0; j < 5; j++){
        printf("%d, ", array[i][j]);
    }
    printf("]\n");
}
printf("]");
```

```{code-block} c++
int array[5][5];
array[1][2] = 4;
array[1][3] = 14;
array[4][4] = 5;

std::cout << "[";
for (int i = 0; i < 5; i++) {
    std::cout << "[";
    for (int j = 0; j < 5; j++){
        std::cout << array[i][j] << ", ";
    }
    std::cout << "]" << std::endl;
}
std::cout << "]" << std::endl;
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