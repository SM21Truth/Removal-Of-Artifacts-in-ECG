clc, clear, close all

signal         = load('ECG.txt');
EstimationOfDC = calculateWanderInDC(signal); % Estimation of Distortion in DC value of signal ... 
                                              % ... that is Baseline Wander     
correctECG     = signal-EstimationOfDC;                                              
figure(2)
subplot(3,1,1)
plot(signal,'b','LineWidth',1)
subtitle('Original Signal with artifact')

subplot(3,1,2)
plot(signal,'b','LineWidth',1)
hold on
plot(EstimationOfDC,'r','LineWidth',3)
subtitle('Signal with estimation of Baseline wandering')
legend('Signal with artifact','estimated Baseline')

subplot(3,1,3)
plot(correctECG,'b','LineWidth',1)
subtitle('Signal after correction In BaseLine')

sgtitle('         Output')