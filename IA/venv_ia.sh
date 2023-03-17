echo "Setting (venv) Python Enviroment..."

python3 -m venv venv
sleep 0.2
source venv/bin/activate
sleep 0.2
pip install -r requirements.txt
pytest
