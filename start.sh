#!/bin/bash

# Clone the repository
git clone https://github.com/ToonCrafter/ToonCrafter.git

# Change directory to the repository
cd ToonCrafter

# Install the required Python packages
pip install -r requirements.txt

# Create the checkpoints directory and navigate to it
mkdir checkpoints
cd checkpoints

# Create the tooncrafter_512_interp_v1 directory and navigate to it
mkdir tooncrafter_512_interp_v1
cd tooncrafter_512_interp_v1

# Download the model checkpoint
wget https://huggingface.co/Doubiiu/ToonCrafter/resolve/main/model.ckpt

# Navigate back to the repository root
cd ../..

# Run the Gradio app
python gradio_app.py
