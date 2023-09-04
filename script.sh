wget -qO - https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo dd of=/usr/share/keyrings/packages.microsoft.gpg
echo 'deb [ signed-by=/usr/share/keyrings/packages.microsoft.gpg ] https://packages.microsoft.com/repos/code stable main' | sudo tee /etc/apt/sources.list.d/vscode.list

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

sudo apt install -y nano nodejs code
mkdir -p ~/.local/lib
npm config set prefix '~/.local/'

if ! grep -R 'export PATH=~/.local/bin/:$PATH' ~/.bashrc > /dev/null; then
        echo 'export PATH=~/.local/bin/:$PATH' >> ~/.bashrc
fi

sed -i "s/#alias ll='ls -l'/alias ll='ls -l'/" ~/.bashrc
source ~/.bashrc
