## Python libraries for visualization
- Matplotlib (modeled after MatLab)
  - static
  - lots of options
- Seaborn
  - static
  - uses matplotlib on backend
  - limited plot types
- Pandas
  - uses matplotlib on backend through simple `.plot()` calls
  - limited scope of plots
  - static plots

# Plotly and Dash

## Plotly
- both a company and open source library
- focused on **interactive** visualizations
- Plotly has libraries for Javascript, React, R and Python
- the most popular version is the Python library
- **interactive** plots as **html** files
- plotly connected to set data files (not changing)

## Dash
Dash is an **open source** library from the Plotly company that allows you to create a full dashboard with multiple components, interactivity, and multiple plots.  
Provides functionality for:  
- can update plots in **real time** ("dash" --> "dashboards")
- can have plots interact with each other

Plot creates an `.html` file and Dash creates a **dashboard web app** at a local url [127.0.0.1:8050](http://127.0.0.1:8050/)

---

## Numpy
- `np.linspace(0, 10, 200)` produces 200 numbers from 0 to 100, **linearly spaced**
- `np.random.seed(101)` sets a seed of 101.

## Pandas
- library built on top of Numpy
```python
ser_of_bool = df['Age'] > 30
print(df[ser_of_bool])
```
