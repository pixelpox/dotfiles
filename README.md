# dotfiles

repo for personal dotfiles and public keys

## instal software

```bash
sudo apt-get install git openssh-server -y
```

## Add mount support

```bash
sudo apt install nfs-common cifs-utils -y
```

## Setup

```bash
sudo adduser simon
sudo usermod -aG sudo simon
```

```bash
cd ~
wget https://raw.githubusercontent.com/pixelpox/dotfiles/master/setupDotFileScript.sh
chmod u+x setupDotFileScript.sh
./setupDotFileScript.sh
```

## update

```bash

# Revert changes to modified files.
git reset --hard

# Remove all untracked files and directories.
# '-f' is force, '-d' is remove directories.
git clean -fd

git remote update origin --prune

git -C ~/github/dotfiles pull .
```
