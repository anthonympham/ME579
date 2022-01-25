%% Problem 1-1c
f = 0:20:200; % Natural frequency is 20, so frequency spectrum should be divided into intervals of 20
k = 0:1:(200/20); % Want 11 points from 0 to 200
C_k = ((-1).^(-k) + (-1).^k)./(pi*(1+4*k.^2)); % e^-j*pi*k replaced with (-1)^(-k), e^j*pi*k replaced with (-1)^k
P = [C_k(1)^2 2*C_k(2:end).^2]; % One-sided power spectrum, C_0 not included in the *2 operation

Figure1 = figure(1);
set(Figure1, 'defaulttextinterpreter', 'latex')
stem(f,P) % Plotting the one-sided power spectrum using formula 2*C_k^2
xlim([f(1), f(end)])
xlabel('Frequency (Hz)')
ylabel('$|C_k|$')

%% Problem 1-3b
clear 

% Part (i)
t = 
N_1 = 64;
x_1 = 10*sin(2*pi*14)




