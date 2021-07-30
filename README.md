# My Personal Dotfiles Repository
<!-- markdownlint-disable MD033 -->
<!-- markdownlint-disable MD032 -->
<!-- markdownlint-disable MD029 -->

## Set basic things up

1) Open Terminal and navigate to the home `"~"` directory.
2) Run `git clone https://github.com/SarveshMD/.dotfiles`.
3) Open the file explorer
4) Navigate to `.dotfiles/links` directory.
5) Copy all the items and paste them into the home `"~"` directory.
6) Navigate to the home directory
7) Cut the `snippets` folder, `keybindings.json` and `settings.json` files.
8) Navigate to `.config/Code/User` and paste them.
9) Run `fc-cache -fv` to update the font cache.
10) Run `fc-list -fv | grep Cascadia` to verify if the fonts are properly recognized.

## Setup Git SSH Key ([Source](https://www.youtube.com/watch?v=WgZIv5HI44o))

1) Open terminal and run `ssh-keygen -t rsa -b 4096 -C "76893756+SarveshMD@users.noreply.github.com"`.
2) Hit enter when it asks for file to save to go with the defaults.
3) Type in a passphrase and confirm it.
4) Run `ssh-add ~/.ssh/id_rsa`.
5) Run `cat ~/.ssh/id_rsa.pub` and copy the output.
6) Go to [https://github.com/settings/keys](https://github.com/settings/keys).
7) Click on `New SSH Key`, give your SSh Key a title and paste in the SSH Key and click `Add SSH Key`.
8) Enter your password and you're done !

## Setup Git GPG Key ([Source](https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification))

1) Open terminal and run `gpg --list-secret-keys --keyid-format=long`
to see the list of existing GPG Keys.
2) If you don't have any GPG keys already, run `gpg --full-generate-key`
to generate a new one.
   1) For the kind of key, select the first option - `RSA and RSA` which is the default option.
   2) For the keysize, you should type `4096` for the GPG key to work on GitHub.
   3) For the expiration time, select `0` so that the key never expires.
   4) Type the real name and use the GitHub noreply email
   `76893756+SarveshMD@users.noreply.github.com`.
   5) Enter a passphrase for your GPG Key.
   6) Check if your GPG Key was successfully generated with
   `gpg --list-secret-keys --keyid-format=long`. If you see the full name, email and the comment
   you entered while generating the GPG Key, your GPG Key is successfully generated :)
3) Run `gpg --list-secret-keys --keyid-format=long` again.
4) You will get an output that looks like this :
<pre>
    sec   4096R/3AA5C34371567BD2 2016-03-10 [expires: 2017-03-10]
    uid                          Hubot
    ssb   4096R/42B317FD4BA89E7A 2016-03-10
</pre>
5) In the line which starts with the word `sec`, after `4096R/`, we can find a GPG Key ID.
In this example, it is `3AA5C34371567BD2`. Copy the GPG Key ID.
6) Run `gpg --armor --export 3AA5C34371567BD2`, make sure you substitute your GPG Key ID in
this command
7) You will get a long output. It is your GPG Key.
8) Copy your GPG key, beginning with `-----BEGIN PGP PUBLIC KEY BLOCK-----` and ending with `-----END PGP PUBLIC KEY BLOCK-----`.
9) Go to [https://github.com/settings/keys](https://github.com/settings/keys).
10) Click on New GPG Key.
11) Paste the full copied GPG Key into the `Key` field and click `Add GPG Key`
12) It will prompt you for your GitHub password, enter the password and the GPG Key is added.
13) Run `gpg --list-secret-keys --keyid-format=long` again.
14) Copy the GPG Key ID which you already know how to.
15) Run `git config --global user.signingkey 3AA5C34371567BD2`, make sure you substitute
your GPG Key ID in this command too.
16) Run `git config --global commit.gpgsign true` to sign all your future commits automatically.

## Contents

- <span>README.md</span>
- .gitconfig
- .p10k.zsh
- .selected_editor
- .zshrc
- links -dir
- .CustomResources -dir
  - <span>compile.py</span>
  - <span>backup.py</span>
  - <span>emoji.sh</span>
- vscode -dir
  - snippets -dir
    - python.json
  - keybindings.json
  - settings.json
- .zsh
  - powerlevel10k -dir
  - zsh-autosuggestions -dir
  - zsh-syntax-highlighting dir
  - .p10k.zsh
  - .zsh_aliases
  - .zsh_keybindings
- .fonts -dir
  - .uuid
  - MesloLGS NF Regular.ttf
  - Cascadia_Code -dir
    - .uuid
    - CascadiaCode.ttf
    - CascadiaCodeItalic.ttf
    - CascadiaCodePL.ttf
    - CascadiaCodePLItalic.ttf
    - CascadiaMono.ttf
    - CascadiaMonoItalic.ttf
    - CascadiaMonoPL.ttf
    - CascadiaMonoPLItalic.ttf
  - Operator_Mono -dir
    - .uuid
    - OperatorMono-Book.ttf
    - OperatorMono-Medium.ttf
  - Source_Code_Pro -dir
    - .uuid
    - SourceCodePro-Black.ttf
    - SourceCodePro-BlackItalic.ttf
    - SourceCodePro-Bold.ttf
    - SourceCodePro-BoldItalic.ttf
    - SourceCodePro-ExtraLight.ttf
    - SourceCodePro-ExtraLightItalic.ttf
    - SourceCodePro-Italic.ttf
    - SourceCodePro-Light.ttf
    - SourceCodePro-LightItalic.ttf
    - SourceCodePro-Medium.ttf
    - SourceCodePro-MediumItalic.ttf
    - SourceCodePro-Regular.ttf
    - SourceCodePro-SemiBold.ttf
    - SourceCodePro-SemiBoldItalic.ttf

## Credits
[.zsh/powerlevel10k](https://github.com/romkatv/powerlevel10k) - [romkatv](https://github.com/romkatv)
[.zsh/zsh-autosuggestions](https://github.com/zsh-users) - [zsh-users](https://github.com/zsh-users/zsh-autosuggestions)
[.zsh/zsh-syntax-highlighting](https://github.com/zsh-users) - [zsh-users](https://github.com/zsh-users/zsh-syntax-highlighting)
