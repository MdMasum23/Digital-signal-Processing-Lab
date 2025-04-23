
t = 0:0.01:2*pi; 

sine_wave = zeros(1, length(t));
cosine_wave = zeros(1, length(t));

function f = myFactorial(n)
    f = 1;
    for i = 1:n
        f = f * i;
    end
end


for i = 1:length(t)
    x = t(i);

    sine_val = 0;
    for n = 0:5  % 5 terms
        term = ((-1)^n) * (x^(2*n+1)) / myFactorial(2*n+1);
        sine_val = sine_val + term;
    end
    sine_wave(i) = sine_val;

    cosine_val = 0;
    for n = 0:5
        term = ((-1)^n) * (x^(2*n)) / myFactorial(2*n);
        cosine_val = cosine_val + term;
    end
    cosine_wave(i) = cosine_val;
end


figure;


subplot(2,1,1); 
plot(t, sine_wave, 'r');  
title('Sine Wave (Manual)');
xlabel('Time');
ylabel('Amplitude');


subplot(2,1,2); 
plot(t, cosine_wave, 'b');  
title('Cosine Wave (Manual)');
xlabel('Time');
ylabel('Amplitude');
