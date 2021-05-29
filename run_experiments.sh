###  This small script runs the experiments from our paper.  ###
###  Uncomment a line to run the respective experiment.      ###
###  These experiments are actually run multiple times,      ###
###  once for each set of random seeds in configuration.py.  ###
###  For this reason we recommend not uncommenting more      ###
###  than one line at a time.                                ###

mkdir data
mkdir results

cd data
wget https://zenodo.org/record/1127774/files/train.cpkl.gz
wget https://zenodo.org/record/1127774/files/test.cpkl.gz

gzip -d train.cpkl.gz
gzip -d test.cpkl.gz
cd ..

python experiment_runner.py no_conv.yml
#python experiment_runner.py single_weight_matrix.yml
#python experiment_runner.py node_average.yml
#python experiment_runner.py node_edge_average.yml
#python experiment_runner.py diffusion_p2_noDO.yml
#python experiment_runner.py diffusion_p5_noDO.yml
#python experiment_runner.py deep_tensor.yml
#python experiment_runner.py order_dependent.yml
