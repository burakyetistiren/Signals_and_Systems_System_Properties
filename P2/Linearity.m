function Linearity(System, isN)
    %%% Clear the workspace and command window
    clc;
    
    
    %%% an input sequence:
    x11 = [-3 -4 2 0 1 4 3 6 3 7];
    x12 = [2 5 -1 7 -3 6 12 -9 8 -4];
    
    x21 = [9 23 15 -10 18 14 5 -1 6 11];
    x22 = [2 5 -1 7 -3 6 12 -9 8 -4];
    
    first = [newline, 'Inputs:', newline, 'x11: ', int2str(x11), newline, 'x12: ', int2str(x12), newline];
    disp(first)
    
    for n=1:10
        for a = -5:5
            for b = -5:5
                %%% Implementation linearity sys1
                if(~isN)
                    y1 = a.*(System(x11));
                    y2 = b.*(System(x12));
                else
                    y1 = a.*(System(x11, n));
                    y2 = b.*(System(x12, n));
                end
        
                w = y1 + y2;
        
                %%% Implementation linearity sys2
                x = a.*x11 + b.*x12;
                if(~isN)
                    y = System(x);
                else 
                    y = System(x, n);
                end
        
        
                %%% Display the result for Systems
                [ S1 ] = EqorNot_lin(w(1:n), y(1:n), a, b, n);
                disp(S1);
            end
        end
    end
    
    second = [newline, 'Inputs:', newline, 'x21: ', int2str(x21), newline, 'x22: ', int2str(x22), newline];
    disp(second)
    
    for n=1:10
        for a = -5:5
            for b = -5:5
                %%% Implementation linearity sys1
                if(~isN)
                    y1 = a.*(System(x21));
                    y2 = b.*(System(x22));
                else
                    y1 = a.*(System(x21, n));
                    y2 = b.*(System(x22, n));
                end

                w = y1 + y2;
                
                %%% Implementation linearity sys2
                x = a.*x21 + b.*x22;
                if(~isN)
                    y = System(x);
                else
                    y = System(x, n);
                end

                %%% Display the result for Systems
                [ S2 ] = EqorNot_lin(w(1:n), y(1:n), a, b, n);
                disp(S2);
            end
        end
    end
end
