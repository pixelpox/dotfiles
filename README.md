# dotfiles

repo for personal dotfiles and public keys

## instal software

```bash
sudo apt-get install git openssh-server -y
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
git -C ~/github/dotfiles pull .
```
