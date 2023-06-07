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

## data location

## requirements: 
Golang

To install Lattigo: 
```
go get github.com/tuneinsight/lattigo/v3/ckks 
go get github.com/tuneinsight/lattigo/v3/rlwe
```

External Libraries: 
"encoding/csv"
"os"
"strconv"
"time"
"log"
"fmt"

## to run code in folder: 
```bash
module load miniconda
conda activate go_env
go run main.go <path/to/genotypeMatrix> <path/to/model> <phenotype name> <number_iterations> <parameter_number>

```

