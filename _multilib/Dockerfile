FROM archlinux/archlinux:multilib-devel 
LABEL maintainer="Zero <github.com/z-nerd>" 
LABEL description="Zero custom archlinux" 

COPY mirrorlist /etc/pacman.d/mirrorlist
COPY pacman.conf /etc/pacman.conf

RUN pacman-key --init && \
  pacman -Syu --noconfirm 

RUN pacman -S --needed --noconfirm sudo wget curl git unzip unrar \
  zsh grml-zsh-config zsh-completions less vim reflector && \
  yes | sudo pacman -Scc

ARG user=yay
RUN useradd --system --create-home --shell /bin/zsh $user && \
  echo "$user ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$user

USER $user
WORKDIR /home/$user

RUN git clone https://aur.archlinux.org/yay-bin.git && \
  pushd yay-bin && \
  makepkg -si --noconfirm && \
  popd && \
  sudo rm -rf .cache yay-bin /etc/pacman.d/gnupg/  

