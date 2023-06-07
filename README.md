# genCrypt

## Model Introduction:

The phenotype prediction model is trained using LASSO regression.
Training was performed using LogitNet and ElasticNet from package
‘glmnet’ (Lasso and Elastic-Net Regularized Generalized Linear Models)
for the continuous and binary phenotypes respectively with default
parameters. The submitted model coefficients is a 20391*5 matrix,
which contains weights for the 20390 genotypes and biases for the 5
phenotypes. All data provided was used for training, and no pre-
training scaling was done.

## Encryption Method
Encryption of the model and inputs is performed using Lattigo, a Go
module that implements Ring-Learning-With-Errors-based homomorphic-
encryption primitives and Multiparty-Homomorphic-Encryption-based
secure protocols. For our task, we use the Full-RNS Homomorphic
Encryption for Arithmetic for Approximate Numbers (HEAAN, a.k.a. CKKS)
scheme.

## Security level
With this method 128-bit security is maintained. We implement our
method with the following parameter PN13QP218 choice. This includes a
ring dimension of 8,192 and logQP equal to 218. More information about
this parameter choice can be found with this link https://github.com/
tuneinsight/lattigo/blob/master/ckks/params.go.


## Submitted Data and Code Description
The submitted folder was initiated as a Go module, with packages and
directories configured for main.go. File “coefs_1.csv” is the model
parameters plaintext. After running the main function, a new file
named “pheno_data.csv” will appear in the folder, which is the
phenotype prediction of the model. Please don’t delete or rename the
directories in the folder.

Note: run our code within the folder provided with the following
commands (use the new genotypes.txt file in the second argument - move
this file into our folder)
'''
cd EJ_idash2022
go run ./main.go ./genotypes_1.txt ./coefs_1.csv
'''

Steps to run Program in docker:

1. Unzip folder and copy genotype.txt file into folder
cp <path to genotype.txt file> <path to unzipped folder>/
EJ_idash2022T2/
2. Open terminal and enter into folder, build docker container in
folder with command as follows:
  
'''
cd EJ_idash2022T2
docker build -t my_docker
'''
  
3. Open docker image and run:
  
'''
go run ./main.go ./genotypes.txt ./coefs_1.csv
'''  

4.This will result in the creation of pheno_data.csv after the program
has terminated.
You can copy this file from the container to the host to save the
results.
Alternatively: Instead of copying genotype file into folder before
building docker image you can complete the following step.
*) In a new terminal window/tab, copy the genotype txt files
from the host into the currently running container as follows:

```
docker cp /path/to/genotype.txt container_id:/home/EJ_idash2022T2/
genotype.txt
```

## alternative method with environment: 
```bash
module load miniconda
conda activate go_env
go run main.go <path/to/genotypeMatrix> <path/to/model> <phenotype name> <number_iterations> <parameter_number>

```

