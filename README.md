# 🤖 dotfiles (Jon Chretien)

Homebase for my dev settings.

## Installation

### 1: prepare Mac OS X

Run through the steps in the [setup repo](https://github.com/jonchretien/setup).

### 2: Install [Oh My ZSH](https://ohmyz.sh)

```zsh
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Set up plugins:

```zsh
plugins=(git node npm nvm osx python zsh_reload)
```

Set up theme (agnoster):

- https://github.com/agnoster/agnoster-zsh-theme
- https://github.com/powerline/fonts
- https://github.com/powerline/fonts/issues/44

### 3: clone and install dotfiles

```zsh
git clone https://github.com/jonchretien/dotfiles.git && cd dotfiles && source bootstrap.sh
```

### 4: Custom ZSH Settings

- Update the custom folder directory in `.zshrc` to point to `ZSH_CUSTOM=$HOME/dotfiles/`.
- Disable git's [`autocorrect`](https://stackoverflow.com/questions/39708972/how-do-i-turn-off-git-autocorrect).

### 5: Custom Terminal login

[Message of the Day](https://sixcolors.com/post/2020/03/quick-tip-customize-your-terminal-login-with-a-message-of-the-day/)

## Credit

Much of this work is based on dotfiles from:

- [GitHub ❤ ~/](http://dotfiles.github.io)
- [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
- [Nicolas Gallagher](https://github.com/necolas/dotfiles)
- tips from friends and colleagues.
