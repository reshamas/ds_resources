#### Setting **global bash profile** 

(run once and the setup will be retained)

```
$ pwd                             # ensure you are in the home directory
/Users/reshamashaikh
$ emacs ~/.bash_profile           # edit file
$ source ~/.bash_profile          # run file

```
Edit .bash_profile by adding these aliases
```
alias ls='ls -G'
alias rm='rm -i'
```

>'ls -G'  will print directories in blue

>'rm -i'  will prompt user to confirm if file should be deleted

--

#### Setting **local session bash profile** 

(must be re-run each time terminal is started)

```
$ pwd
/Users/reshamashaikh
$ emacs .bash_profile
$ source .bash_profile
```
**Resources**

[My Mac OSX Bash Profile by Nathaniel Landau](http://natelandau.com/my-mac-osx-bash_profile/)

[Aaron's .bash_profile](https://github.com/ajschumacher/.emacs.d/blob/master/bash/.bashrc)

