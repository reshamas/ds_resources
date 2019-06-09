# Data Science Interview Questions

## Explain p-value
- Reference:  https://www.youtube.com/watch?v=9jW9G8MO4PQ
- we have null hypothesis
- high p-value:  low surprise
- low p-value: high surprise
- A low p-value makes our default action (or our null hypothesis) not likely to have happened

>Does the evidence we collected make our p-value look ridiculous?

## How do you handle imbalanced data?
- Reference:  [DEALING WITH IMBALANCED DATA: UNDERSAMPLING, OVERSAMPLING AND PROPER CROSS-VALIDATION](https://www.marcoaltini.com/blog/dealing-with-imbalanced-data-undersampling-oversampling-and-proper-cross-validation)
- can oversample or undersample
- recommend oversampling because that way we don't lose any data
- do cross-validation with care; watch for data leakage so the results can be generalizable

## Explain in-sample vs. out-sample
- Reference:  [stack overflow](https://stats.stackexchange.com/questions/260899/what-is-difference-between-in-sample-and-out-of-sample-forecasts)

>Was the particular observation used for the model fitting or not ? If it was used for the model fitting, then the forecast of the observation is in-sample. Otherwise it is out-of-sample.

>If you use data 1990-2013 to fit the model and then you forecast for 2011-2013, it's in-sample forecast. but if you only use 1990-2010 for fitting the model and then you forecast 2011-2013, then it's out-of-sample forecast.

