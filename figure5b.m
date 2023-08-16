
clearvars

load('time00_so1_condyle_v1.mat')
figure;
subplot(2,2,1);
p1 = plot(wav,mean(condyle_spectra,1),'b','Linewidth',2);
hold on
load('time09_so1_condyle_v1.mat')
p2 = plot(wav,mean(condyle_spectra,1),'r','Linewidth',2);
p1.Color(4) = 0.5;
p2.Color(4) = 0.5;
axis tight
xlim([602 1797])
ylim([0 2])
% axis square
set(gca,'Fontsize', 12)
% grid on
xlabel('Wavenumber (cm^{-1})')
ylabel('Intensity(a.u)')

subplot(2,2,2)
load('time00_so2_condyle_v1.mat')
p1 = plot(wav,mean(condyle_spectra,1),'b','Linewidth',2);
hold on
load('time09_so2_condyle_v1.mat')
p2 = plot(wav,mean(condyle_spectra,1),'r','Linewidth',2);
p1.Color(4) = 0.5;
p2.Color(4) = 0.5;
axis tight
xlim([602 1797])
ylim([0 1.6])
set(gca,'Fontsize', 12)
xlabel('Wavenumber (cm^{-1})')
ylabel('Intensity(a.u)')

subplot(2,2,3)
load('time00_so3_condyle_v1.mat')
p1 = plot(wav,mean(condyle_spectra,1),'b','Linewidth',2);
hold on
load('time09_so3_condyle_v1.mat')
p2 = plot(wav,mean(condyle_spectra,1),'r','Linewidth',2);
p1.Color(4) = 0.5;
p2.Color(4) = 0.5;
axis tight
xlim([602 1797])
ylim([0 1.6])
set(gca,'Fontsize', 12)
xlabel('Wavenumber (cm^{-1})')
ylabel('Intensity(a.u)')

subplot(2,2,4)
load('time00_so4_condyle_v1.mat')
p1 = plot(wav,mean(condyle_spectra,1),'b','Linewidth',2);
hold on
load('time09_so4_condyle_v1.mat')
p2 = plot(wav,mean(condyle_spectra,1),'r','Linewidth',2);
p1.Color(4) = 0.5;
p2.Color(4) = 0.5;
axis tight
xlim([602 1797])
ylim([0 1.6])
set(gca,'Fontsize', 12)
xlabel('Wavenumber (cm^{-1})')
ylabel('Intensity(a.u)')