function [V] = problem3(A)
m = size(A, 1);
V = zeros(m, 1);
for i = 1:m
    V(i) = A(i, m - i + 1);
end

end