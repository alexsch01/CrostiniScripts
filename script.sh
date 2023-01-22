wget -qO - https://packages.microsoft.com/keys/microsoft.asc \
        | gpg --dearmor \
        | sudo dd of=/usr/share/keyrings/packages.microsoft.gpg
echo 'deb [ signed-by=/usr/share/keyrings/packages.microsoft.gpg ] https://packages.microsoft.com/repos/code stable main' \
        | sudo tee /etc/apt/sources.list.d/vscode.list
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash
sudo apt install -y nano nodejs code
mkdir -p ~/.local/lib
npm config set prefix '~/.local/'

if ! grep -R 'export PATH=~/.local/bin/:$PATH' ~/.bashrc > /dev/null; then
        echo 'export PATH=~/.local/bin/:$PATH' >> ~/.bashrc
fi

sed -i "s/#alias ll='ls -l'/alias ll='ls -l'/" ~/.bashrc
source ~/.bashrc
