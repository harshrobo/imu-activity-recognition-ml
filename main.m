clc; clear; close all;

addpath('src');

%% STEP 1: Load data
filePaths = {'data1.dat','data2.dat'};  % replace with your files
data = data_import(filePaths);

%% STEP 2: Clean
data = data_cleaning(data);

%% STEP 3: Timestamp alignment
data = timestamp_unify(data);

%% STEP 4: Filtering
data = filtering(data);

%% STEP 5: Feature extraction
windowSize = 50;
stepSize = 10;

[features, labels] = feature_extraction(data, windowSize, stepSize);

%% STEP 6: Train SVM
svmModel = train_svm(features, labels);

%% STEP 7: Train ANN
annModel = train_ann(features, labels);

disp("Training Complete");
