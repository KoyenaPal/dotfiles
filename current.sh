source dotfiles/runpod.sh

# Repos I'm using at the moment
git clone https://github.com/KoyenaPal/MedCalc-Bench.git

cd /root/MedCalc-Bench
source ~/.venv/bin/activate

uv pip install wandb nnsight pandas tiktoken openai

wandb login $RUNPOD_WB_TOKEN
