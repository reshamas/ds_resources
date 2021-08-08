## Reminders for Pull Requests

Working on this issue:  https://github.com/scikit-learn/scikit-learn/issues/20308

1.  Ensure your virtual environment has been activated.  
```bash
conda env list
conda activate 
```
2.  Ensure that your main branch is synced.
```bash
git branch
git checkout main
git pull upstream main
git push origin <feature_branch>
```

3.  Run `python setup.py develop` to keep your environment updated.
4.  Run `pytest sklearn`
