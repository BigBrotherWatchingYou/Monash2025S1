## read_csv and read.csv
read_csv is from package tidyverse
### %>%
pipe(%) means multiple operations
the result of the last operation will be used in the next pipe
e.g.
```{r eval=FALSE}
# First and last date in the data
ped_wide %>%
  arrange(Date) %>%
  summarise(first_date = first(Date),
      last_date = Last(Date))
```

### what column represent what kind of function

```{r eval=FALSE}
# Convert the data into a long form
ped <- ped_wide %>%
  ???(key = ???, value = ???, -???, -???, -???) %>%
  # Not necessary but there we use select() to rearrange the columns
  select(Sensor, everything(), Count)

# Print ped
???
```

## convert Y to X



## Motion Charts
its for data visualisation
learn it 