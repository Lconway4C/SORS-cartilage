clearvars

load('data_matrix_raman_cartilage.mat');

%normalize with peak at 1635 cm-1. This is at 613 index.
for ii = 1:size(so1_spectra,1)
    so1_spectra(ii,:) = so1_spectra(ii,:)./so1_spectra(ii,613);
end

% time 00
sample_102_mech = (657.7951082 + 422.4702217)/2;
sample_102_so1 = (max(so1_spectra(so1_tag == 1, 260:294), [], 2));

sample_301_mech = (368.86 + 512.4)/2;
sample_301_so1 = (max(so1_spectra(so1_tag == 2, 260:294), [], 2));

sample_601_mech = (481.4255655 + 412.2668481)/2;
sample_601_so1 = (max(so1_spectra(so1_tag == 3, 260:294), [], 2));

% time 03
sample_201_mech = (47.42 + 19.057)/2;
sample_201_so1 = (max(so1_spectra(so1_tag == 31, 260:294), [], 2));

sample_602_mech = 195.74;
sample_602_so1 = (max(so1_spectra(so1_tag == 33, 260:294), [], 2));

sample_701_mech = (61.38749937 + 122.0448621)/2;
sample_701_so1 = (max(so1_spectra(so1_tag == 34, 260:294), [], 2));


% time 06
sample_302_mech = (24.72456171 + 13.65399779)/2;
sample_302_so1 = (max(so1_spectra(so1_tag == 61, 260:294), [], 2));

sample_401_mech = (16.79175336 + 16.35645779)/2;
sample_401_so1 = (max(so1_spectra(so1_tag == 62, 260:294), [], 2));

sample_702_mech = (42.19193007 + 29.25662341)/2;
sample_702_so1 = (max(so1_spectra(so1_tag == 63, 260:294), [], 2));

% time 09
sample_101_mech = (14.51211953 + 10.76077209)/2;
sample_101_so1 = (max(so1_spectra(so1_tag == 91, 260:294), [], 2));

sample_402_mech = (15.71209727 + 17.71411142)/2;
sample_402_so1 = (max(so1_spectra(so1_tag == 92, 260:294), [], 2));

sample_502_mech = 11.6033475604604;
sample_502_so1 = (max(so1_spectra(so1_tag == 93, 260:294), [], 2));

%%

all_mean_mech_val = [sample_102_mech; sample_301_mech; sample_601_mech; ...
sample_201_mech; sample_602_mech; sample_701_mech; ...
sample_302_mech; sample_401_mech; sample_702_mech; ...
sample_101_mech; sample_402_mech; sample_502_mech];

log_val = log10(all_mean_mech_val);

Raman_derived_GAG = [mean(sample_102_so1); mean(sample_301_so1); mean(sample_601_so1); ...
    mean(sample_201_so1); mean(sample_602_so1); mean(sample_701_so1); ...
    mean(sample_302_so1); mean(sample_401_so1); mean(sample_702_so1); ...
    mean(sample_101_so1); mean(sample_402_so1); mean(sample_502_so1)];

sz = 10;

figure;
errorbar(mean(sample_102_so1), log10(all_mean_mech_val(1)), std(sample_102_so1)/2, ...
    'horizontal',"o","MarkerSize",sz,"MarkerEdgeColor",[0.5 0 1], ...
    "MarkerFaceColor",[0.5 0 1],'Color',[0.5 0 1])
hold on
errorbar(mean(sample_301_so1), log10(all_mean_mech_val(2)), std(sample_301_so1)/2, ...
    'horizontal',"o","MarkerSize",sz,"MarkerEdgeColor",[0.5 0 1], ...
    "MarkerFaceColor",[0.5 0 1],'Color',[0.5 0 1])
errorbar(mean(sample_601_so1), log10(all_mean_mech_val(3)), std(sample_601_so1)/2, ...
    'horizontal',"o","MarkerSize",sz,"MarkerEdgeColor",[0.5 0 1], ...
    "MarkerFaceColor",[0.5 0 1],'Color',[0.5 0 1])

errorbar(mean(sample_201_so1), log10(all_mean_mech_val(4)), std(sample_201_so1)/2, ...
    'horizontal',"diamond","MarkerSize",sz,"MarkerEdgeColor",[0.5 0.8 0.9], ...
    "MarkerFaceColor",[0.5 0.8 0.9],'Color',[0.5 0.8 0.9])
errorbar(mean(sample_602_so1), log10(all_mean_mech_val(5)), std(sample_602_so1)/2, ...
    'horizontal',"diamond","MarkerSize",sz,"MarkerEdgeColor",[0.5 0.8 0.9], ...
    "MarkerFaceColor",[0.5 0.8 0.9],'Color',[0.5 0.8 0.9])
errorbar(mean(sample_701_so1), log10(all_mean_mech_val(6)), std(sample_701_so1)/2, ...
    'horizontal',"diamond","MarkerSize",sz,"MarkerEdgeColor",[0.5 0.8 0.9], ...
    "MarkerFaceColor",[0.5 0.8 0.9],'Color',[0.5 0.8 0.9])

errorbar(mean(sample_302_so1), log10(all_mean_mech_val(7)), std(sample_302_so1)/2, ...
    'horizontal',"square","MarkerSize",sz,"MarkerEdgeColor",[1 0.64 0], ...
    "MarkerFaceColor",[1 0.64 0],'Color',[1 0.64 0])
errorbar(mean(sample_401_so1), log10(all_mean_mech_val(8)), std(sample_401_so1)/2, ...
    'horizontal',"square","MarkerSize",sz,"MarkerEdgeColor",[1 0.64 0], ...
    "MarkerFaceColor",[1 0.64 0],'Color',[1 0.64 0])
errorbar(mean(sample_702_so1), log10(all_mean_mech_val(9)), std(sample_702_so1)/2, ...
    'horizontal',"square","MarkerSize",sz,"MarkerEdgeColor",[1 0.64 0], ...
    "MarkerFaceColor",[1 0.64 0],'Color',[1 0.64 0])

errorbar(mean(sample_101_so1), log10(all_mean_mech_val(10)), std(sample_101_so1)/2, ...
    'horizontal',"pentagram","MarkerSize",sz,"MarkerEdgeColor",[1 0 0], ...
    "MarkerFaceColor",[1 0 0],'Color',[1 0 0])
errorbar(mean(sample_402_so1), log10(all_mean_mech_val(11)), std(sample_402_so1)/2, ...
    'horizontal',"pentagram","MarkerSize",sz,"MarkerEdgeColor",[1 0 0], ...
    "MarkerFaceColor",[1 0 0],'Color',[1 0 0])
errorbar(mean(sample_502_so1), log10(all_mean_mech_val(12)), std(sample_502_so1)/2, ...
    'horizontal',"pentagram","MarkerSize",sz,"MarkerEdgeColor",[1 0 0], ...
    "MarkerFaceColor",[1 0 0],'Color',[1 0 0])

x = linspace(0.9, 2.1, 100);
m = 2.3584;
c = -1.8455;
y = m.*x + c;
plot(x,y, '--', 'Linewidth', 2,'Color','g');

set(gca, 'Fontsize', 16)
xlabel('GAG value')
ylabel('Youngs Modulus [KPa] [log scale]')
title('On-axis')
xlim([1.1 2.1])



