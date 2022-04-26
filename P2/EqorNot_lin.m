function [ S ] = EqorNot_lin(input_args1, input_args2, a, b, n)

%%% Test both the outputs are same or not
if(isequal(input_args1,input_args2))

S1 = ['n = ', int2str(n), ' Systems pass the linearity test for a = ',num2str(a),' and b = ',num2str(b)];
else
S1 = ['n = ', int2str(n), ' Systems do not pass the linearity test for a = ',num2str(a),' and b = ',num2str(b)];   
end

S = S1;

end

