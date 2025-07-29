#!/bin/bash

#SBATCH --job-name="velocity_fitting"
#SBATCH --time=10:00:00
#SBATCH --array=1-2
#SBATCH --mem=2G
#SBATCH --output=out-array_%A_%a.out  *change this into desired location
#SBATCH --error=err-array_%A_%a.err  *change this into desired location
#SBATCH --partition=obs
#SBATCH --ntasks=1

# Print the task id.
echo "My SLURM_ARRAY_TASK_ID: " $SLURM_ARRAY_TASK_ID

# Add lines here to run your computations.

module load python
conda activate /Users/mariasanchezrincon/anaconda3/envs/emcee_fitting

python3 O3_1comp.py $SLURM_ARRAY_TASK_ID
Collapse









