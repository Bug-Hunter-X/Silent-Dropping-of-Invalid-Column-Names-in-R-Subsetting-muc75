```R
#Improved code to handle invalid column names gracefully.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_subset <- c("A", "B", "D")

# Check if all columns exist before subsetting
valid_cols <- intersect(cols_to_subset, names(df))

if (length(valid_cols) != length(cols_to_subset)) {
  warning("Some specified columns are missing. Subsetting only valid columns.")
}

subset_df <- df[, valid_cols]

#Alternatively, using dplyr package offers more robust subsetting
library(dplyr)
subset_df_dplyr <- df %>% select(all_of(cols_to_subset))

#This approach will throw an error if any column doesn't exist.
#Helpful for catching errors early on.
```