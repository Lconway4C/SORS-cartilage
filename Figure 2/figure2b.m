clearvars

load('figure2_data.mat');

figure;
p1 = plot(wav, plastic_petridish + 1, 'Linewidth',2);
hold on
p2 = plot(wav, tissue, 'Linewidth',2);
axis tight
p1.Color(4) = 0.5;
p2.Color(4) = 0.5;
set(gca,'Fontsize', 16)
xlabel('Wavenumber (cm^{-1})')
ylabel('Intensity (a.u)')