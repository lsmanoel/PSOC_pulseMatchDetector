clear all;
clc;

%% Par?metros
Oc = 0.25*pi;                    % frequ?ncia limite da banda de passagem (freq. de corte)
M  = 67;                         % numero de coeficientes... ordem do polinômio
N  = (M-1)/2;

% coeficientes do filtro
n = 0:M-1;
h = sin(Oc*(n-N))./(pi*(n-N));

if mod(M,2)
    h(N+1) = Oc/pi;
end

% janela
w = hamming(M);

% filtro janelado
h = h(:).*w(:);

% resposta em frequ?ncia do filtro
NFFT  = 1024;                    % numero de pontos da fft
h_zeros = [h; zeros(NFFT-numel(h),1)];
H   = fft(h_zeros);
r   = 0:NFFT-1;
Omg = 2*pi*r/NFFT;

%% Salva filtro projetado
filename = 'filter.h';
save(filename, 'h');


%% Resultados

% resposta ao impulso do filtro FIR
f1 = figure('Color', [1 1 1], 'Unit', 'Centimeters', 'Position', [5, 5, 12, 8]); 
a1 = axes('FontName', 'Arial', 'FontSize', 9, 'Position', [0.1508 0.1225 0.8124 0.8245]);
stem(n,h, 'Marker', '.');

xlabel('Amostras');
ylabel('Coeficientes do filtro');
xlim([0, M-1]);

% resposta em frequ?ncia
f2 = figure('Color', [1 1 1], 'Unit', 'Centimeters', 'Position', [5, 5, 12, 8]); 
a2 = axes('FontName', 'Arial', 'FontSize', 9, 'Position', [0.1508 0.1225 0.8124 0.8245]);

set(f2, 'Color', [1 1 1], 'Unit', 'Centimeters', 'Position', [5, 5, 12, 8]); 
set(a2, 'FontName', 'Arial', 'FontSize', 9, 'Position', [0.1233 0.1225 0.8398 0.8245]);
plot(a2, Omg(1:NFFT/2), 20*log10(abs(H(1:NFFT/2))));

xlabel('Frequ?ncia digital (rad)');
ylabel('|H(\Omega)|');

xlim([0, pi]);