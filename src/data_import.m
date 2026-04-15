function allData = data_import(filePaths)
    allData = cell(1, length(filePaths));

    for k = 1:length(filePaths)
        filePath = string(filePaths{k});
        
        fileID = fopen(filePath, 'r');
        labelRows = cell(4, 1);

        for i = 1:4
            labelRows{i} = fgetl(fileID);
        end
        fclose(fileID);

        labelRows = cellfun(@(x) strsplit(x, '\t'), labelRows, 'UniformOutput', false);
        variableNames = strcat(labelRows{1}, '_', labelRows{2});

        data = readtable(filePath);
        data.Properties.VariableNames = variableNames;

        allData{k} = data;
    end
end
