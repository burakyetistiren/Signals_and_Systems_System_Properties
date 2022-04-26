function Time_invariance(System, isN)    
    %%% Clear the workspace and command window
    clc;
    
    
    %%% an input sequence:
    x1 =[-3 -4 2 0 1 4 3 6 3 7];
    x2 = [5 -11 9 2 3 -6 0 -7 3 10];
    
    disp(newline)
    to_disp = ['Input: ', num2str(x1)];
    disp(to_disp);
    disp(newline)
    for n=1:10
        for n0 = -50:1:50
            if(n0 ~= 0)
                %%% Implementation time invariance
                if(~isN)
                    w = Delay_module(System(x1), n0);
                    y = (System(Delay_module(x1, n0)));
                else
                    w = Delay_module(System(x1, n), n0);
                    y = (System(Delay_module(x1, n0), n));
                end

                
                %%% Display the result
                %%% Just use the samples after the delay of 2 steps to compare
                [ S1 ] = EqorNot_tim_inv(w(1:n), y(1:n), n0, n);
                disp(S1);
            end
        end
    end
    
    disp(newline)
    to_disp = ['Input: ', num2str(x2)];
    disp(to_disp)
    disp(newline)
    for n=1:10
        for n0 = -50:1:50
            if(n0 ~= 0)
                %%% Implementation time invariance
                if(~isN)
                    w = Delay_module(System(x2), n0);
                    y = (System(Delay_module(x2, n0)));
                else
                    w = Delay_module(System(x2, n), n0);
                    y = (System(Delay_module(x2, n0), n));
                end
                
                %%% Display the result
                %%% Just use the samples after the delay of 2 steps to compare
                [ S1 ] = EqorNot_tim_inv(w(1:n), y(1:n) , n0, n);
                disp(S1);
            end
        end
    end
end
