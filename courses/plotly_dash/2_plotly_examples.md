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
- video:  https://www.udemy.com/course/interactive-python-dashboards-with-plotly-and-dash/learn/lecture/9570018?start=244#overview
- (at 12:00)
- 
```python
from plotly import tools

fig = tools.make_subplots(rows=1, cols=3, subplot_titles='title1', 'title2', 'title3: alaska'],
    shared_yaxes=True)
    
fig.append_trace(trace1, 1, 1)
fig.append_trace(trace2, 1, 2)
fig.append_trace(trace3, 1, 3)

fig['layout'].update(title='Temps')

pyo.plot(fig)
```

## Dash
- Dash is for creating dashboards purely in Python
- These dashboards are served as web applications that you can deploy, not static .html files
- We can connect and interact with the dashboards
- Dash apps are composed of two parts:
    1. Layout of the app and it describes what the application looks like
    2. Describes the interactivity of the application
- Dash offers two distinct component libraries:
    1. `dash_html_components` which has a Python component for every single HTML tag
    2. `dash_core_components` offers higher-level, interactive components that are generated with JavaScript, HTML, and CSS through the React.js library
- 








