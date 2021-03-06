# Metagenomics Workflows
Workflows for metagenomic sequence data processing and analysis.  Further documentation found in each workflow folder.

### bin_label_and_evaluate

Snakemake workflow for aligning, binning, classifying and evaluating a
metagenomic assembly.

### assembly_comparison_circos
Snakemake workflow for visualizing assemblies of a particular genome across conditions and time points.  Calls out pre-identified sequences, highlights selected contigs.



# Installing workflows

First, install miniconda3. This is an environment management system that should keep everything organized.

Then install snakemake.  This can be done with:

	pip install snakemake

Next, clone this github directory to some location where it can be stored permanently.

    git clone https://github.com/elimoss/metagenomics_workflows.git

Then enter the newly downloaded directory

    cd metagenomics_workflows

And create the new conda environments with

	conda update conda
	conda env create -f <absolute path to>/envs/mgwf.yaml

Now activate the environment with

    source activate mgwf

This is a step that must be repeated whenever using any metagenomics workflow.


If there are dependency issues, please check for environment updates by running

	git pull
	conda env update -f envs/mgwf.yaml

Instructions to enable Snakemake to schedule cluster jobs with SLURM can be found at https://github.com/bhattlab/slurm
