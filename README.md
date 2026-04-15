# 🚀 Human Activity Recognition using IMU Sensor Data (ANN & SVM)

## 📌 Overview
This project implements a Human Activity Recognition (HAR) system using Inertial Measurement Unit (IMU) sensor data.

The pipeline processes raw sensor signals, performs data cleaning and synchronization, applies filtering, and uses machine learning models (ANN and SVM) to classify human activities.

The system demonstrates a full end-to-end workflow:
data import → preprocessing → filtering → model training → evaluation

---

## 🎯 Objectives
- Import raw IMU sensor data
- Clean and preprocess data for analysis
- Synchronize timestamps across multiple sensors
- Apply signal filtering to reduce noise
- Train machine learning models for classification
- Compare ANN and SVM performance
- Evaluate results using confusion matrices

---

## 📁 Repository Structure

src/
├── main.m                         # Main pipeline execution script
├── data_import.m                 # Imports raw IMU data files
├── data_cleaning.m              # Cleans dataset (NaNs, invalid entries, formatting)
├── timestamp_unify.m            # Aligns timestamps across sensors
├── filtering.m                  # Applies signal filtering / smoothing
├── train_ann.m                  # Trains Artificial Neural Network model
├── train_svm.m                  # Trains Support Vector Machine model
├── README.md                    # Project documentation
└── results/
    ├── Confusion_matrix.png
    ├── ANN and SVM confusion Matrix.png
    ├── filtered data.png

---

## ⚙️ System Pipeline

Raw IMU Sensor Data
        ↓
Data Import (data_import.m)
        ↓
Data Cleaning (data_cleaning.m)
        ↓
Timestamp Synchronization (timestamp_unify.m)
        ↓
Signal Filtering (filtering.m)
        ↓
Feature Preparation
        ↓
Model Training
   ├── ANN (train_ann.m)
   └── SVM (train_svm.m)
        ↓
Model Evaluation
        ↓
Confusion Matrix Generation

---

## 🧠 Machine Learning Models

### 🔵 Artificial Neural Network (ANN)
- Used for nonlinear classification of IMU time-series data
- Captures complex relationships between motion signals
- Provides high classification accuracy on processed data

### 🟠 Support Vector Machine (SVM)
- Used as a baseline classifier
- Works on structured feature representations
- Enables performance comparison with ANN

---

## 📈 Results

Model performance is evaluated using confusion matrices.

### 📊 Output Files
- Confusion_matrix.png
- ANN and SVM confusion Matrix.png

### 📌 Observations
- ANN generally achieves higher accuracy than SVM
- Proper preprocessing significantly improves classification performance
- Timestamp alignment is critical for accurate model training
- Signal filtering improves stability of classification results

---

## 📊 Data Processing Steps

### 1. Data Import
Handled by data_import.m:
Loads raw IMU sensor data and structures it for processing.

### 2. Data Cleaning
Handled by data_cleaning.m:
Removes NaN values, invalid entries, and standardizes dataset format.

### 3. Timestamp Synchronization
Handled by timestamp_unify.m:
Aligns multiple sensor streams into a consistent time reference.

### 4. Signal Filtering
Handled by filtering.m:
Applies smoothing techniques to reduce noise in IMU signals.

---

## 🛠️ How to Run

Requirements:
- MATLAB R2022 or later recommended

Run the project:
main.m

This will:
- Load IMU dataset
- Perform preprocessing
- Train ANN and SVM models
- Generate confusion matrix outputs

---

## 📷 Results Folder

The results folder contains:
- Confusion matrices (ANN & SVM)
- Filtered signal visualization
- Model comparison plots

---

## 💡 Applications

- Wearable motion tracking systems
- Prosthetic limb control systems
- Rehabilitation monitoring
- Human activity recognition systems
- Biomechanical signal analysis

---

## 🚀 Future Improvements

- Add feature engineering (time + frequency domain)
- Improve ANN architecture tuning
- Implement deep learning models (CNN / LSTM)
- Enable real-time IMU classification
- Improve subject-independent generalization

---

## 👨‍💻 Author
Harsh Sharma
