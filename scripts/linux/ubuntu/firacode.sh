keyword=FiraCode
url=$(curl -s https://api.github.com/repos/tonsky/FiraCode/releases/latest | jq -r ".assets[] | select(.name | test(\"${keyword}\")) | .browser_download_url")
curl -L $compose_url -o firacode.zip
unzip firacode.zip
