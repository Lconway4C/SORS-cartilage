clearvars

load('data_matrix_raman_cartilage.mat');

plot_spectra = so2_spectra;
plot_tag = so2_tag;

GAG_peak_val_time00 = max(plot_spectra(plot_tag == 1 | plot_tag == 2 | plot_tag == 3, 260:294),[],2);
GAG_peak_val_time03 = max(plot_spectra(plot_tag == 31 | plot_tag == 33 | plot_tag == 34, 260:294),[],2);
GAG_peak_val_time06 = max(plot_spectra(plot_tag == 61 | plot_tag == 62 | plot_tag == 63, 260:294),[],2);
GAG_peak_val_time09 = max(plot_spectra(plot_tag == 91 | plot_tag == 92 | plot_tag == 93, 260:294),[],2);

all_peak_val = [GAG_peak_val_time00; GAG_peak_val_time03; GAG_peak_val_time06; GAG_peak_val_time09];
all_peak_grp = [zeros(size(GAG_peak_val_time00,1),1); 3.*ones(size(GAG_peak_val_time03,1),1); ...
    6.*ones(size(GAG_peak_val_time06,1),1); 9.*ones(size(GAG_peak_val_time09,1),1)];

meanWeight = groupsummary(all_peak_val,all_peak_grp,'mean');
figure;
boxchart(categorical(all_peak_grp), all_peak_val, "BoxFaceColor",'#bf5b17'); % so2
set(gca,'Fontsize', 14)
ylim([0.7 1.8])
xlabel('Time to trypsin treatment (hrs)')
ylabel('GAG values')
title('SO - 4 mm GAG values')