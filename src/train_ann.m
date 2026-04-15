function net = train_ann(features, labels)

labels_categorical = categorical(labels);

net = patternnet(10);

net = train(net, features', dummyvar(labels_categorical)');

end
