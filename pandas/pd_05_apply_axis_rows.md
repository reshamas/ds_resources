```
def gender_and_signedin_one(row):
    if row['Gender'] == 1 and row['Signed_In'] == 1:
       return 1:
    else:
       return 0

# axis = 1, means working with rows, not columns
# axis = 0, default, working with columns

nyt['new_column'] = nyt.apply(gender_and_signedin_one, axis=1)
```
