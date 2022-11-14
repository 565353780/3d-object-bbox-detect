cd ..
git clone https://github.com/JonasSchult/Mask3D.git
cd Mask3D

conda install openblas-devel -c anaconda

pip install torch torchvision \
  --extra-index-url https://download.pytorch.org/whl/cu116
pip install torch-scatter

pip install ninja==1.10.2.3
pip install pytorch-lightning fire imageio tqdm wandb \
  python-dotenv pyviz3d scipy plyfile scikit-learn trimesh \
  loguru albumentations volumentations

pip install antlr4-python3-runtime==4.8
pip install black==21.4b2
pip install omegaconf==2.0.6 hydra-core==1.0.5 --no-deps
pip install \
  'git+https://github.com/facebookresearch/detectron2.git@710e7795d0eeadf9def0e7ef957eea13532e34cf' \
  --no-deps

cd third_party/pointnet2 && python setup.py install

