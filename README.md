# tmux-rails

This script launches a Rails development environment in tmux. It takes a variable for the project name. The directory structure should be updated to match your local setup.

To start up run:

```
sh ~/tmux-rails/launch.sh project_name
```

This will open three windows: one for git (listing the local branches); one to tail the development log; and one for the console. It'll also launch Atom for the project folder.

To make this easier to load, you can create a function in `.bash_profile` or `.bashrc` like this:

```sh
tmuxr () {
  eval "sh ~/tmux-rails/launch.sh $1"
}
```

To start up this way run:

```
tmuxr project_name
```
