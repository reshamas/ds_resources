## Reminder for referencing scikit-learn documentation:  Use **DEV**, rather than "STABLE"

https://scikit-learn.org/dev/index.html

##  To look at rendered documentation

`ci/circleci: doc artifact`:  Link to 0/doc/_changed.html

## Reminders for Pull Requests

Working on this issue:  https://github.com/scikit-learn/scikit-learn/issues/20308

1.  Ensure your virtual environment has been activated.  
```bash
conda env list
conda activate /Users/reshamashaikh/anaconda3/envs/sklearn-dev
```

2.  Ensure that your main branch is synced.
```bash
git branch
git checkout main
git pull upstream main
git push origin <feature_branch>
```

3.  Keep your environment updated.
```bash
python setup.py
```

4.  Run suite of tests
```bash
pytest sklearn
```

## Working on Issue [#20308](https://github.com/scikit-learn/scikit-learn/issues/20308)

Example of how to run test
```bash
pytest maint_tools/test_docstrings.py -k FeatureAgglomeration-
```
