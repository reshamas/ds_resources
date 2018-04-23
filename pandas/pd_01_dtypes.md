```
%matplotlib inline
import pandas as pd
import numpy as np
from datetime import datetime

data = pd.read_csv('nyt1.csv')


def CheckData(df):
    print "len(data): ", len(df)
    print df.head(3)
    print df.dtypes
    #print df.tail(5)
    print "\ncolumn names: \n", df.columns
    print "\n"
    print df.describe()

CheckData(data)

```
