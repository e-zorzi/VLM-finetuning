curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env
export UV_TORCH_BACKEND=cu126
uv venv --no-project --relocatable
source .venv/bin/activate
uv pip install packaging setuptools wheel
uv pip install torch==2.6.0 torchvision
uv pip install awscli pydantic
uv pip install --no-build-isolation axolotl[deepspeed,flash-attn]
echo "Remember to export your HF_TOKEN and WANDB login token"
