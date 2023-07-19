# facial-recognition-project

A simple Face Recognition System implemented in MATLAB using an eigenvector-based approach. 
This project aims to demonstrate face recognition techniques without employing machine learning or Convolutional Neural Networks (CNN). 
The focus is on dataset preparation, loading, and using the dataset for face recognition.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Dataset](#dataset)
- [Project Structure](#project-structure)
- [Contributing](#contributing)

## Introduction

While taking an engineering based coding class in Spring 2023, I took it upon myself to create a MatLab focused project. Upon investigation,
I found that projects based upon machine learning could be used for facial recognition. This project presents a simple approach to face recognition 
using eigenvectors without involving complex machine learning techniques.

## Installation

1. Clone the repository: `git clone https://github.com/AlexxRomerro7/face-recognition-project`
2. Open MATLAB and navigate to the project directory.
3. Run the main script: `facial_recognition_main.m`.

## Usage

After following the installation steps, run the `facial_recognition_main.m` script in MATLAB. This script will demonstrate the face recognition process using the provided dataset.
You can modify the code to test with your own dataset. Be sure to use pgm files for this specific code.


## Dataset

To keep this face recognition system as simple as possible, a sample dataset is provided for demonstration purposes.
This dataset consists of 40 people, each having 10 pictures at different angles making different faces. All photos
can be found in the Dataset folder within this repository.

## Project Structure

The project directory structure is as follows:
├── main.m                   # Main script for running the face recognition system
├── dataset/                 # Folder containing the face image dataset
│   ├── person1/             # Images of person 1
│   ├── person2/             # Images of person 2
│   └── ...
└── README.md                # Project README file

## Contributing

Contributions to this project are welcome! If you have any suggestions, ideas, or improvements, please feel free to open an issue or submit a pull request.
