source dotfiles/runpod.sh

# Repos I'm using at the moment
git clone git@github.com:KoyenaPal/MedCalc-Bench.git

cd /root/MedCalc-Bench && git checkout dev && uv pip install -e .
# cd /root/steering-finetuning && git checkout cleanup && uv pip install -r requirements.txt

uv pip install wandb

wandb login $RUNPOD_SECRET_WANDB