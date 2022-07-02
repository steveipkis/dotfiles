# dotfiles

## Installing

You can simply use the [install.sh](install.sh) file to setup the environment, however, it's been untested and instead you may want to use each section of the code sparringly and verify that the installation steps accurately reflect the changes they intend to make. Code does change quite often.

***NOTE:*** These dot files assume that the system being used is amd64 Mac OS X machine.

## Configuration

This configuration entails:

* [install.sh](install.sh): installs xcode, homebrew and a bunch of plugins. It also copies configurations from this repo to the system.
* [.zshrc](.zshrc): sets up aliases, exports as well as zsh related configurations.
* [.oh-my-zsh/custom](.oh-my-zsh/custom): Custom packages that I use with my zsh configuration.
* [.my_zsh_functions](.my_zsh_functions): Custom functions I wrote and loaded into the environment.
* [.config/nvim](.config/nvim): this configures nvim to use fzf, ag and a bunch of plugins to make vim use easy.

## External Apps to Install

* [iTerm2](https://iterm2.com/downloads.html)
* [MacPass](https://github.com/MacPass/MacPass)
* [PostgresApp](https://postgresapp.com/downloads.html)
* [Postico](https://eggerapps.at/postico/)
* [Postman](https://www.postman.com/downloads/)
* [VsCode](https://code.visualstudio.com/download)
  * [Foam](https://github.com/foambubble/foam)

## Deploying changes

Since your machine is usually configured with another github account, you can simply [create a personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) and use that to commit changes to this repo.

```bash
git push https://${GITHUB_API_TOKEN}@github.com/steveipkis/dotfiles.git
```
