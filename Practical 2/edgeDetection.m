function [Edges, Ihor, Iver] = edgeDetection(Iin, B1, B2)

    Ihor  = filter2(B1, Iin);
    Iver  = filter2(B2, Iin);
    Edges = sqrt((Ihor).^2 + (Iver).^2);

end