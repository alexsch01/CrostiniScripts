wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash
sudo apt install -y nodejs nano codium
cd ~
echo -e "alias ll='ls -l'\nalias code='codium'" >> .bashrc
source .bashrc
