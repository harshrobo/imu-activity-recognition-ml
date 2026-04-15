function model = train_svm(features, labels)

model = fitcsvm(features, labels, ...
    'KernelFunction', 'rbf', ...
    'Standardize', true);

end
