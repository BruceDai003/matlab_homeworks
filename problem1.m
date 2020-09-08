x = 0:0.1:3.6;
n = length(x);
y = zeros(1, n);
cnt = 1;
for i = x
    y_i = 1000 / (200 * 10^9 * 6.87 * 10^(-6)) * (-0.0625 * ...
    singularity_func(i, 0.6, 4) + 0.0625 * singularity_func(i, 1.8, 4) + ...
    0.4333 * i^3 - 0.2 * singularity_func(i, 0.6, 3) - ...
    0.72 * singularity_func(i, 2.6, 2) - 2.692 * i);
    y(cnt) = y_i;
    cnt = cnt + 1;
end
figure;
plot(x, y);
xlabel('x');
ylabel('y');
title('Elastic Curve');

function y = singularity_func(x, a, n)

if x < a
    y = 0;
else
    y = (x - a).^n;
end

end