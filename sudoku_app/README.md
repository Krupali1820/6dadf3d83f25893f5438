###ID 
6dadf3d83f25893f5438

Task: Create an API endpoint that allows a client to send in an array representing an unsolved Sudoku puzzle, and responds with the solved puzzle.

The goal of Sudoku is to fill in a 9×9 grid with digits so that each column, row, and 3×3 section contain the numbers between 1 to 9. At the beginning of the game, the 9×9 grid will have some of the squares filled in. Your job is to use logic to fill in the missing digits and complete the grid.
Constraints:

Any row cannot contain more than one of the same number from 1 to 9
Any column cannot contain more than one of the same number from 1 to 9
Any 3×3 grid cannot contain more than one of the same number from 1 to 9
Example input and output:
(Note: Input will be an array of arrays. They represent rows on the Sudoku board.)

POST /api/sudoku
{ "data":
    [
      [2, null, 5, null, null, 9, null, null, 4],
      [null, null, null, null, null, null, 3, null, 7],
      [7, null, null, 8, 5, 6, null, 1, null],
      [4, 5, null, 7, null, null, null, null, null],
      [null, null, 9, null, null, null, 1, null, null],
      [null, null, null, null, null, 2, null, 8, 5],
      [null, 2, null, 4, 1, 8, null, null, 6],
      [6, null, 8, null, null, null, null, null, null],
      [1, null, null, 2, null, null, 7, null, 8]
    ]
}

Output example:
{ "solution": [
      [2, 1, 5, 3, 7, 9, 8, 6, 4],
      [9, 8, 6, 1, 2, 4, 3, 5, 7],
      [7, 3, 4, 8, 5, 6, 2, 1, 9],
      [4, 5, 2, 7, 8, 1, 6, 9, 3],
      [8, 6, 9, 5, 4, 3, 1, 7, 2],
      [3, 7, 1, 6, 9, 2, 4, 8, 5],
      [5, 2, 7, 4, 1, 8, 9, 3, 6],
      [6, 4, 8, 9, 3, 7, 5, 2, 1],
      [1, 9, 3, 2, 6, 5, 7, 4, 8]
    ]
}

Note: Set 3000 as the default port.

Github repository link
Create your repository with text below
6dadf3d83f25893f5438 builder
Enter your github username
Enter username
55 min 19 sec remaining