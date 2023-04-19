conda env create -f environment.yml
conda activate realfusion
pip install -r requirements.txt

pip install ./raymarching
pip install ./shencoder
pip install ./freqencoder
pip install ./gridencoder

pip install git+https://github.com/NVlabs/nvdiffrast

# Trouble Shooting
# CUDA error: the provided PTX was compiled with an unsupported toolchain.
# update nvidia driver
