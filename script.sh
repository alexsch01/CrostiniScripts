wget -qO - https://packages.microsoft.com/keys/microsoft.asc \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/packages.microsoft.gpg
echo 'deb [ signed-by=/usr/share/keyrings/packages.microsoft.gpg ] https://packages.microsoft.com/repos/code stable main' \
    | sudo tee /etc/apt/sources.list.d/vscode.list
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash
sudo apt install -y nano nodejs code
npm config set prefix '~/.local/'
echo "alias ll='ls -l'" >> ~/.bashrc
echo 'export PATH=~/.local/bin/:$PATH' >> ~/.bashrc
source ~/.bashrc
