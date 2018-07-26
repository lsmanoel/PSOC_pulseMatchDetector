Fs = 3200;                    % Frequência de Amostragem
Ts = 1/Fs;                     % Período de Amostragem
N = 1425;                     % Número de amostras
t = (0:N-1)*Ts;                % Vetor de tempo t[n]=(n*Ts)

% Sum of a 50 Hz sinusoid and a 120 Hz sinusoid
x = (sin(100*pi*t)+1.5).^2;
y = sig_3;     % ADD Noise => x[n]
figure(1)
plot(Fs*t(1:50),y(1:50));
title('Signal Corrupted with Zero-Mean Random Noise');
xlabel('time (milliseconds)');

NFFT = 2^nextpow2(N); % Next power of 2 from length of y
Y = fft(y,NFFT)/N;
f = Fs/2*linspace(0,1,NFFT/2+1);

% Plot single-sided amplitude spectrum.
figure(2)
plot(f,2*abs(Y(1:NFFT/2+1))); 
title('Single-Sided Amplitude Spectrum of y(t)');
xlabel('Frequency (Hz)');
ylabel('|Y(f)|');