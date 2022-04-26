function [ S ] = EqorNot_caus(input_args1, input_args2, n)

%%% Test both the outputs are same or not
if(isequal(input_args1,input_args2))
    S1 = ['Systems pass the causality test for n = ',num2str(n)];
else
    S1 = ['Systems do not pass the causality test for n = ',num2str(n)];   
end

S = S1;
end