function B = optionA(A)
n = length(A);
record = zeros(n, 2); % Recording the consecutive times a number appears
idx = 0;
for i = 1:n
    if i == 1
        idx = 1;
        record(idx, :) = [A(i), 1];
    else
        if A(i) == A(i-1)
            record(idx, 2) = record(idx, 2) + 1;
        else
            idx = idx + 1;
            record(idx, :) = [A(i), 1];
        end
    end

end
record = record(1:idx, :);
my_max = 0;
B = 0;
for i = 1:idx
    if record(i, 2) > my_max
        my_max = record(i, 2);
        B = record(i, 1);
    end
    
end

end

