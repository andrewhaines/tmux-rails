# tmux-rails

This script launches a Rails development environment in tmux. It takes a variable for the project name. The directory structure should be updated to match your local setup.

To start up run:

```console
sh ~/tmux-rails/launch.sh project_name
```

This will open three windows: one for git (listing the local branches); one to tail the development log; and one for the console. It'll also launch Atom for the project folder.
