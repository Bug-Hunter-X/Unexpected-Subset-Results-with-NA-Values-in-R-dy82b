```r
# This code addresses the issue by explicitly handling NA values using is.na().

df <- data.frame(a = c(1, 2, NA, 4, 5), b = c(6, 7, 8, 9, 10))

# Method 1: Remove rows with NA in column 'a'
#subset <- df[!is.na(df$a) & df$a > 2, ]

# Method 2: Treat NA as FALSE (NA values are excluded from subset)
subset <- df[df$a > 2 | is.na(df$a), ]

# Method 3:  Treat NA as TRUE (NA values are included in subset)
#subset <- df[df$a > 2 | is.na(df$a), ]

print(subset)
```