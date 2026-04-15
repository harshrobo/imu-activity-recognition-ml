function data_out = filtering(data_in)

data_out = cell(1, length(data_in));

for k = 1:length(data_in)

    tbl = data_in{k};

    % Apply simple moving average filter
    windowSize = 5;

    numericData = tbl{:,:};

    filteredData = movmean(numericData, windowSize);

    tbl{:,:} = filteredData;

    data_out{k} = tbl;

end

end
