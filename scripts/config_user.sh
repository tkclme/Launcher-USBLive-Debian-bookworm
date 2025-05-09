# Saving user info + Ip

echo "user name: " ; read name
echo "email: " ; read email
whoami old_user

# Changement de nom d'utilisateur

sudo usermod --login $name $user
sudo usermod --login $name --move-home --home /home/$name $old_user
sudo passwd $name

# Configuration Git

git config --global user.name "$name"
git config ---global user.email "$email"

# Création de clé SSH

ssh-keygen -t ed25519 -C "$email"

