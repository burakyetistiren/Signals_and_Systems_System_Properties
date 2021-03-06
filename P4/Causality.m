function Causality(System, isN)  
    for n = 1:10
        x =[-3 -4 2 0 1 4 3 6 3 7];
        z = x;
    
        z(1:n) = x(1:n);  
    
        z1 = z;
        z2 = z;
    
        % keep future values
        z1(n+1:length(x)) = x(n+1:length(x));
    
        % eliminate future values
        z2(n+1:length(x)) = zeros(1, length(x)-n);
        
        if(~isN)
            w = System(z1);
            y = System(z2);
        else
            w = System(z1, n);
            y = System(z2, n);
        end
    
        [S1] = EqorNot_caus(w(1:n), y(1:n), n);
        disp(S1);
    end
end