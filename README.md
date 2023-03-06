## funmoji
Print a cute kaomoji whenever you want

## Install
- Run `make install` to install both versions script.
- Run `make uninstall` to remove both versions of script.

## Usage
You may want to add it on your shells' rc script.
- For bash/zsh

Location: /home/[USER]/.bashrc (or .zshrc)
```bash
funmoji
# Show a random kaomoji when you clear your terminal
alias clear="clear && funmoji"
```
- For fish

Location: /home/[USER]/.config/fish/config.fish
```fish
if status is-interactive
    # Prevent from looping on each startup 
    funmoji.fish
end
set -g fish_greeting # Disable fish greeting message
# You can also disable fish greeting message globally
# by running set -U fish_greeting on a fish shell
alias clear="clear && funmoji.fish"
```

## Thanks
Very thanks to this lovely website, [kaomoji.ru](http://kaomoji.ru/)\
97% of Kaomojis are taken from there.
