function [out] = addOneWithFors(in)
    for i = 1:length(in)
        in(i) = in(i) + 1;
    end
    out = in;
end