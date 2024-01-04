#!/usr/bin/env bash
#SBATCH --job-name DP_job 
#SBATCH --time 144:00:00 
#SBATCH --cpus-per-task=4
#SBATCH --mem=16000
#SBATCH --partition=prioritized
#SBATCH --gres=gpu:v100:1
#SBATCH --nodelist=nv-ai-03

srun singularity exec --nv /home/bio.aau.dk/qn44np/software/deepmd-kit_2.2.1_cuda11.6_gpu.sif lmp -in input.lammps