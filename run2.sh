#!/bin/bash
#SBATCH --output pheno2-%A_%1a-%N.out
#SBATCH --job-name pheno2
#SBATCH --mem-per-cpu 200g -t 24:00:00 --mail-type ALL
#SBATCH --cpus-per-task 1
#SBATCH --partition bigmem

module load miniconda
conda activate go_env
go run ../main.go /home/jl3786/gibbs/HE_PRS/thirty_take3/ridge/genotype_matrix_1k_ind_130k_SNPs_csv.csv /home/jl3786/gibbs/HE_PRS/thirty_take3/ridge/130k_beta_coefficients_2_csv2.csv pheno2 1 1
# go run main.go /home/jl3786/gibbs/HE_PRS/thirty_take3/ridge/genotype_matrix_1k_ind_10k_SNPs_csv.csv /home/jl3786/gibbs/HE_PRS/thirty_take3/ridge/10k_beta_coefficients_2_csv2.csv pheno2 1 2
# go run main.go /home/jl3786/gibbs/HE_PRS/thirty_take3/ridge/genotype_matrix_1k_ind_10k_SNPs_csv.csv /home/jl3786/gibbs/HE_PRS/thirty_take3/ridge/10k_beta_coefficients_2_csv2.csv pheno2 1 3
# go run main.go /home/jl3786/gibbs/HE_PRS/thirty_take3/ridge/genotype_matrix_1k_ind_10k_SNPs_csv.csv /home/jl3786/gibbs/HE_PRS/thirty_take3/ridge/10k_beta_coefficients_2_csv2.csv pheno2 1 4
# go run main_2.go /home/jl3786/gibbs/HE_PRS/thirty_take3/ridge/genotype_matrix_1k_ind_130k_SNPs_csv.csv /home/jl3786/gibbs/HE_PRS/thirty_take3/ridge/10k_beta_coefficients_2_csv2.csv pheno2_10k 1 2 2000
# go run main_2.go /home/jl3786/gibbs/HE_PRS/thirty_take3/ridge/genotype_matrix_1k_ind_130k_SNPs_csv.csv /home/jl3786/gibbs/HE_PRS/thirty_take3/ridge/10k_beta_coefficients_2_csv2.csv pheno2_10k 1 3 2000
# go run main_2.go /home/jl3786/gibbs/HE_PRS/thirty_take3/ridge/genotype_matrix_1k_ind_130k_SNPs_csv.csv /home/jl3786/gibbs/HE_PRS/thirty_take3/ridge/10k_beta_coefficients_2_csv2.csv pheno2_10k 1 4 2000