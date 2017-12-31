#!/bin/bash
ssh-keygen -t rsa -b 4096 -C "federico.marcos@celerative.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
echo "copy the key with:  xclip -sel clip < ~/.ssh/id_rsa.pub"

