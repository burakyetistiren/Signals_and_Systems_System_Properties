function [ output_args ] = Syst_e(input_args)

    output_args = input_args;

    for i=1:length(input_args)
        sum = 0;
        for j=1:i
            sum = sum + input_args(j);
        end
        output_args(i) = sum;
    end
end

