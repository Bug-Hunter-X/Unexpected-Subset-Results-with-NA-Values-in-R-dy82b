```r
# This code attempts to subset a data frame based on a condition,
# but it produces unexpected results due to how R handles logical
# comparisons with NA values.

df <- data.frame(a = c(1, 2, NA, 4, 5), b = c(6, 7, 8, 9, 10))

subset <- df[df$a > 2, ]
print(subset)
```