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

# week4 
https://learning.monash.edu/mod/page/view.php?id=3760600

search for books:
grep "Mad Tea-Party" book*.txt
$ grep "Author:" book*.txt
$ for i in {1..10}; do grep "Author:" book${i}.txt; done

for i in {1..10}; do wc -w book${i}.txt; done


## ggplot
geom_boxplot()

## cygwin terminal
And then change directory to the books directory:

cd tutorial_data/books
We'll now have a look at "less", which is a very simple program for viewing (but not editing) text files.

Practice 2 : In which chapter did Alice go to a "Mad Tea-Party"?

less book1.txt
Practice 4: Now try to display the Author names for books 1 to 5 only? (Hint: Use bracketed wildcard characters)


