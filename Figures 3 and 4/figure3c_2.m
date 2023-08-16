clearvars

load('data_matrix_raman_cartilage.mat')

plot_spectra = so4_spectra;
plot_tag = so4_tag;

GAG_so1_time00 = plot_spectra(plot_tag == 1 | plot_tag == 2 | plot_tag == 3, :);
GAG_so1_time03 = plot_spectra(plot_tag == 31 | plot_tag == 33 | plot_tag == 34, :);
GAG_so1_time06 = plot_spectra(plot_tag == 61 | plot_tag == 62 | plot_tag == 63, :);
GAG_so1_time09 = plot_spectra(plot_tag == 91 | plot_tag == 92 | plot_tag == 93, :);

p1 = plot(wav,mean(GAG_so1_time00,1) + 1,'b','Linewidth',2);
hold on
p2 = plot(wav,mean(GAG_so1_time09,1),'r','Linewidth',2);
p1.Color(4) = 0.5;
p2.Color(4) = 0.5;

xlim([602 1797])
% ylim([0 1.6])
set(gca,'Fontsize', 12)
xlabel('Wavenumber (cm^{-1})')
ylabel('Intensity(a.u)')
axis tight
axis square
title('SO4 spectra time 00 and time 09')