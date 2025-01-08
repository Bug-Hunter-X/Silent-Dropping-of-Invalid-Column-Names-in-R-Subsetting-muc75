This repository demonstrates a subtle but common error in R when subsetting data frames using character vectors.  The issue arises when the character vector contains column names that do not exist in the data frame.  Instead of throwing an error, R silently drops these invalid names, leading to potential bugs that are hard to track down.  The `bug.R` file shows the problematic code and the `bugSolution.R` offers a solution.