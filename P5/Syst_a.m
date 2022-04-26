function [ output_args ] = Syst_a(input_args, n)
    delay = -2;

    % zero padding
    input_args = [zeros(1, abs(delay)), input_args];
    input_args = [input_args, zeros(1, abs(delay))];

    if(delay > 0)
        output_args = zeros(1,length(input_args));
        output_args(delay+1:length(input_args)) = input_args(1:length(input_args)-delay);
    else
        output_args = zeros(1,length(input_args));
        output_args(1:length(input_args)+ delay) = input_args(-delay+1:length(input_args));
    end

    output_args = output_args * n;
end

