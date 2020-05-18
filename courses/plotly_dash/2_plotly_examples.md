# Plotly Examples
- [looping over days in week](https://github.com/Pierian-Data/Plotly-Dashboards-with-Dash/blob/master/1-03E-LineChartExercises/Sol2a-Linechart.py)
- [looping over days in week](https://github.com/Pierian-Data/Plotly-Dashboards-with-Dash/blob/master/1-03E-LineChartExercises/Sol2b-Linechart.py)

```python
# Perform imports here:
import plotly.offline as pyo
import plotly.graph_objs as go
import pandas as pd

# Create a pandas DataFrame from 2010YumaAZ.csv
df = pd.read_csv('../data/2010YumaAZ.csv')

# Define a data variable
data = [{
    'x': df['LST_TIME'],
    'y': df[df['DAY']==day]['T_HR_AVG'],
    'name': day
} for day in df['DAY'].unique()]

# Define the layout
layout = go.Layout(
    title='Daily temperatures from June 1-7, 2010 in Yuma, Arizona',
    hovermode='closest'
)

# Create a fig from data and layout, and plot the fig
fig = go.Figure(data=data, layout=layout)
pyo.plot(fig, filename='solution2b.html')
```

## Multiple subplots (Heatmaps example)
