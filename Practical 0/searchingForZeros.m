function [out] = searchingForZeros(in)
    out = 0;
    for index = 1:length(in)
        
        if in(index) == 0
            out = out + 1;
        end
        
    end
end