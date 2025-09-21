source dotfiles/runpod.sh

# Repos I'm using at the moment
git clone https://github.com/KoyenaPal/MedCalc-Bench.git
git clone https://github.com/KoyenaPal/instruction-induction.git
cd /root/MedCalc-Bench
source ~/.venv/bin/activate

uv pip install wandb nnsight pandas tiktoken openai matplotlib seaborn ipykernel nltk
python -m ipykernel install --user --name=myenv --display-name "Python (myenv)"

wandb login $RUNPOD_WB_TOKEN
