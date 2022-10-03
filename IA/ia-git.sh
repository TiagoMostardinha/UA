ls

echo "repo name"
read name

cd $name

git remote add upstream git@github.com:detiuaveiro/iia-ia-guiao-python.git
sleep 0.2
git fetch upstream
sleep 0.2
git checkout master 
sleep 0.2
git merge --allow-unrelated-histories upstream/master 

sleep 1

python3 -m venv venv
sleep 0.2
source venv/bin/activate
sleep 0.2
pip install -r requirements.txt
