# IMU-Based Human Activity Recognition using Machine Learning

## 📌 Overview
This project focuses on classifying human activities using multi-sensor IMU data for biomechatronics and prosthetic applications.

The system processes raw sensor data and uses machine learning models to accurately identify different activities of daily living.

---

## ⚙️ Problem Statement
Understanding user intent is critical for prosthetic and rehabilitation systems.

This project uses IMU data from multiple body segments to classify activities such as:
- Walking
- Ramp Ascending
- Sitting to Standing
- Standing to Sitting

---

## 🧠 Approach

### 1. Data Processing
- Imported raw `.dat` files
- Cleaned missing and inconsistent data
- Unified timestamps across sensors

### 2. Signal Processing
- Applied filtering (Kalman filter selected)
- Removed noise and smoothed signals

### 3. Feature Engineering
- Sliding window technique (400ms window, 100ms step)
- Extracted time-domain features
- Flattened data into ML-ready format

### 4. Machine Learning Models
- Artificial Neural Network (ANN)
- Support Vector Machine (SVM)

---

## 📊 Results

| Model | Accuracy |
|------|--------|
| ANN  | 99.7%  |
| SVM  | 97.6%  |

### Key Insights:
- Pelvis IMU provided the highest classification accuracy
- Magnetometer features were most significant
- ANN outperformed SVM for temporal gait data

---

## 📷 Results Visualization

(Add your confusion matrix images here)

---

## 🛠️ Tools & Technologies
- MATLAB
- Machine Learning Toolbox
- Signal Processing Techniques

---

## 📂 Project Structure
(Explain folders briefly)

---

## 🚀 Future Work
- Implement CNN / LSTM for temporal modeling
- Real-time deployment on embedded systems
- Integration with prosthetic control systems

---

## 👤 Author
Harsh Sharma
