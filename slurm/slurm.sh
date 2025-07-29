#!/bin/bash

#SBATCH --job-name="velocity_fitting"
#SBATCH --time=10:00:00
#SBATCH --array=1-2
#SBATCH --mem=2G
#SBATCH --output=output.log  
#SBATCH --error=output.log 
#SBATCH --partition=obs
#SBATCH --ntasks=1


echo "My SLURM_ARRAY_TASK_ID: " $SLURM_ARRAY_TASK_ID



module load python
conda activate /Users/mariasanchezrincon/anaconda3/envs/conda_emcee_fitting

python3 O3_1comp.py $SLURM_ARRAY_TASK_ID
Collapse









