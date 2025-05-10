# Saving user info + Ip

echo "user name: " ; read name
echo "email: " ; read email

# Configuration Git

git config --global user.name "$name"
git config ---global user.email "$email"

# Création de clé SSH

ssh-keygen -t ed25519 -C "$email"

