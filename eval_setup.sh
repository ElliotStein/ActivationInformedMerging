# find parent directory
PARENT_DIR=$(dirname $(pwd))

git clone --depth 1 https://github.com/EleutherAI/lm-evaluation-harness $PARENT_DIR/lm-evaluation-harness

cd $PARENT_DIR/lm-evaluation-harness
pip install -e .
cd $PARENT_DIR/ActivationInformedMerging

pip install -r requirements.txt

cd $PARENT_DIR/ActivationInformedMerging/Data
python run_this.py
cd $PARENT_DIR/ActivationInformedMerging
