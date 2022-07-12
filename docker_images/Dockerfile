FROM python:3.7-bullseye

RUN apt-get update && \
    apt-get install -y --allow-unauthenticated \
    bat \
    curl \
    fzf \
    neovim \
    peco \
    silversearcher-ag

# Install Node js for vim coc autocompletion
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs

# Copy nvim config file
COPY config /root/.config

# Install vim-plug for plugin management
RUN sh -c 'curl -fLo /root/.config/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

WORKDIR app
