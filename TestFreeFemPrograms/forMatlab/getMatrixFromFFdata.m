function ff = getMatrixFromFFdata(filename)

sigma = readmatrix(filename);

sigma = sigma(:,2:end);
ff = [];
for in = 1:size(sigma,1)
    for jn = 1:size(sigma,2)
        if(isnan(sigma(in,jn)))
            continue;
        end
        ff = [ff sigma(in,jn)];
    end
end
ff = ff.';
