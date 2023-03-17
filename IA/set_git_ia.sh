echo "Setting up Git Upstream..."

git remote add upstream git@github.com:detiuaveiro/iia-ia-guiao-python.git
sleep 0.2
git fetch upstream
sleep 0.2
git checkout master 
sleep 0.2
git merge --allow-unrelated-histories upstream/master 
