function data_out = timestamp_unify(data_in)

data_out = cell(1, length(data_in));

for k = 1:length(data_in)
    
    tbl = data_in{k};
    
    % Assume first column is time
    time = tbl{:,1};
    
    % Normalize time starting from zero
    time = time - time(1);
    
    tbl{:,1} = time;
    
    data_out{k} = tbl;
end

end
