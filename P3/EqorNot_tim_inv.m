function [ S ] = EqorNot_tim_inv(input_args1, input_args2, n0, n)

%%% Test both the outputs are same or not
if(isequal(input_args1,input_args2))

S1 = ['n = ', int2str(n), ' Systems pass the time invariance test for n0 = ',num2str(n0)];
else
S1 = ['n = ', int2str(n), ' Systems do not pass the time invariance test for n0 = ',num2str(n0)];   
end

S = S1;

end

