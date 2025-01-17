source /opt/intel/oneapi/setvars.sh
conda config --add channels intel
conda create -y -n PT intelpython3_full
conda activate PT
conda install -y -c conda-forge jupyterlab
conda install -y -c conda-forge ipywidgets
conda install -y -c anaconda seaborn pandas 
pip install torch==1.13.0a0+git6c9b55e torchvision==0.14.1a0  intel_extension_for_pytorch==1.13.120+xpu -f https://developer.intel.com/ipex-whl-stable-xpu
pip install plotext opencv-python albumentations tabulate shapely diffusers transformers
#python -m ipykernel install --user --name PT --display-name "PT"
python 02_Prepare_Data.py
#conda activate PT
