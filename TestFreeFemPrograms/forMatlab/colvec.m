function [S] = colvec(S)
    [sz1,sz2]=size(S);
    if sz1<sz2
        S=S.';
    end
end