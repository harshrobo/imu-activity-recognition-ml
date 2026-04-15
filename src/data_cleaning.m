function allData = data_cleaning(data)
    allData = cell(1, length(data));

    for k = 1:length(data)
        currentTable = rmmissing(data{k});

        variableNames = currentTable.Properties.VariableNames;
        columnsToRemove = contains(variableNames, 'Sync') | ...
                          contains(variableNames, 'Offset') | ...
                          contains(variableNames, 'Annotation');

        currentTable(:, columnsToRemove) = [];

        allData{k} = currentTable;
    end
end
