function [X_k, f_k]  = mydft(x_n, n, N, f_s)
% Sampled time history is x_n
% n = 0,1,... N-1
% N is the number of samples in the time history to be used
% f_s is the sampling rate

k = (-N/2):((N/2)-1);

f_k = k*f_s/N;
X_k = zeros(1, length(k));

for i = 1:length(k)
    X_k(i) = sum(x_n.*exp(-1j*2*pi.*n*k(i)/N));
end

end