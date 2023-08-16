clearvars

load('data_matrix_raman_cartilage.mat');

%% Individual spectra and sample

% time 00

sample_102_mech = (657.7951082 + 422.4702217)/2;
sample_102_so1 = mean(max(so1_spectra(so1_tag == 1, 260:294), [], 2));
sample_102_so2 = mean(max(so2_spectra(so2_tag == 1, 260:294), [], 2));
sample_102_so3 = mean(max(so3_spectra(so3_tag == 1, 260:294), [], 2));
sample_102_so4 = mean(max(so4_spectra(so4_tag == 1, 260:294), [], 2));

sample_301_mech = (368.86 + 512.4)/2;
sample_301_so1 = mean(max(so1_spectra(so1_tag == 2, 260:294), [], 2));
sample_301_so2 = mean(max(so2_spectra(so2_tag == 2, 260:294), [], 2));
sample_301_so3 = mean(max(so3_spectra(so3_tag == 2, 260:294), [], 2));
sample_301_so4 = mean(max(so4_spectra(so4_tag == 2, 260:294), [], 2));

sample_601_mech = (481.4255655 + 412.2668481)/2;
sample_601_so1 = mean(max(so1_spectra(so1_tag == 3, 260:294), [], 2));
sample_601_so2 = mean(max(so2_spectra(so2_tag == 3, 260:294), [], 2));
sample_601_so3 = mean(max(so3_spectra(so3_tag == 3, 260:294), [], 2));
sample_601_so4 = mean(max(so4_spectra(so4_tag == 3, 260:294), [], 2));

% time 03

sample_201_mech = (47.42 + 19.057)/2;
sample_201_so1 = mean(max(so1_spectra(so1_tag == 31, 260:294), [], 2));
sample_201_so2 = mean(max(so2_spectra(so2_tag == 31, 260:294), [], 2));
sample_201_so3 = mean(max(so3_spectra(so3_tag == 31, 260:294), [], 2));
sample_201_so4 = mean(max(so4_spectra(so4_tag == 31, 260:294), [], 2));

sample_602_mech = 195.74;
sample_602_so1 = mean(max(so1_spectra(so1_tag == 33, 260:294), [], 2));
sample_602_so2 = mean(max(so2_spectra(so2_tag == 33, 260:294), [], 2));
sample_602_so3 = mean(max(so3_spectra(so3_tag == 33, 260:294), [], 2));
sample_602_so4 = mean(max(so4_spectra(so4_tag == 33, 260:294), [], 2));

sample_701_mech = (61.38749937 + 122.0448621)/2;
sample_701_so1 = mean(max(so1_spectra(so1_tag == 34, 260:294), [], 2));
sample_701_so2 = mean(max(so2_spectra(so2_tag == 34, 260:294), [], 2));
sample_701_so3 = mean(max(so3_spectra(so3_tag == 34, 260:294), [], 2));
sample_701_so4 = mean(max(so4_spectra(so4_tag == 34, 260:294), [], 2));

% time 06

sample_302_mech = (24.72456171 + 13.65399779)/2;
sample_302_so1 = mean(max(so1_spectra(so1_tag == 61, 260:294), [], 2));
sample_302_so2 = mean(max(so2_spectra(so2_tag == 61, 260:294), [], 2));
sample_302_so3 = mean(max(so3_spectra(so3_tag == 61, 260:294), [], 2));
sample_302_so4 = mean(max(so4_spectra(so4_tag == 61, 260:294), [], 2));

sample_401_mech = (16.79175336 + 16.35645779)/2;
sample_401_so1 = mean(max(so1_spectra(so1_tag == 62, 260:294), [], 2));
sample_401_so2 = mean(max(so2_spectra(so2_tag == 62, 260:294), [], 2));
sample_401_so3 = mean(max(so3_spectra(so3_tag == 62, 260:294), [], 2));
sample_401_so4 = mean(max(so4_spectra(so4_tag == 62, 260:294), [], 2));

sample_702_mech = (42.19193007 + 29.25662341)/2;
sample_702_so1 = mean(max(so1_spectra(so1_tag == 63, 260:294), [], 2));
sample_702_so2 = mean(max(so2_spectra(so2_tag == 63, 260:294), [], 2));
sample_702_so3 = mean(max(so3_spectra(so3_tag == 63, 260:294), [], 2));
sample_702_so4 = mean(max(so4_spectra(so4_tag == 63, 260:294), [], 2));

% time 09

sample_101_mech = (14.51211953 + 10.76077209)/2;
sample_101_so1 = mean(max(so1_spectra(so1_tag == 91, 260:294), [], 2));
sample_101_so2 = mean(max(so2_spectra(so2_tag == 91, 260:294), [], 2));
sample_101_so3 = mean(max(so3_spectra(so3_tag == 91, 260:294), [], 2));
sample_101_so4 = mean(max(so4_spectra(so4_tag == 91, 260:294), [], 2));

sample_402_mech = (15.71209727 + 17.71411142)/2;
sample_402_so1 = mean(max(so1_spectra(so1_tag == 92, 260:294), [], 2));
sample_402_so2 = mean(max(so2_spectra(so2_tag == 92, 260:294), [], 2));
sample_402_so3 = mean(max(so3_spectra(so3_tag == 92, 260:294), [], 2));
sample_402_so4 = mean(max(so4_spectra(so4_tag == 92, 260:294), [], 2));

sample_502_mech = 11.6033475604604;
sample_502_so1 = mean(max(so1_spectra(so1_tag == 93, 260:294), [], 2));
sample_502_so2 = mean(max(so2_spectra(so2_tag == 93, 260:294), [], 2));
sample_502_so3 = mean(max(so3_spectra(so3_tag == 93, 260:294), [], 2));
sample_502_so4 = mean(max(so4_spectra(so4_tag == 93, 260:294), [], 2));

%%

all_mean_mech_val = [sample_102_mech; sample_301_mech; sample_601_mech; ...
sample_201_mech; sample_602_mech; sample_701_mech; ...
sample_302_mech; sample_401_mech; sample_702_mech; ...
sample_101_mech; sample_402_mech; sample_502_mech];

all_mean_so1_val = [sample_102_so1; sample_301_so1; sample_601_so1; ...
sample_201_so1; sample_602_so1; sample_701_so1; ...
sample_302_so1; sample_401_so1; sample_702_so1; ...
sample_101_so1; sample_402_so1; sample_502_so1];

all_mean_so2_val = [sample_102_so2; sample_301_so2; sample_601_so2; ...
sample_201_so2; sample_602_so2; sample_701_so2; ...
sample_302_so2; sample_401_so2; sample_702_so2; ...
sample_101_so2; sample_402_so2; sample_502_so2];

all_mean_so3_val = [sample_102_so3; sample_301_so3; sample_601_so3; ...
sample_201_so3; sample_602_so3; sample_701_so3; ...
sample_302_so3; sample_401_so3; sample_702_so3; ...
sample_101_so3; sample_402_so3; sample_502_so3];

all_mean_so4_val = [sample_102_so4; sample_301_so4; sample_601_so4; ...
sample_201_so4; sample_602_so4; sample_701_so4; ...
sample_302_so4; sample_401_so4; sample_702_so4; ...
sample_101_so4; sample_402_so4; sample_502_so4];

%%

figure;
plot_val = all_mean_so2_val;
log_mech_val = log10(all_mean_mech_val);
sz = 100;

scatter(plot_val(1:3), log10(all_mean_mech_val(1:3)),sz,'filled', 'MarkerEdgeColor',[0 0 0],...
              'MarkerFaceColor',[0.5 0 1])
hold on
scatter(plot_val(4:6), log10(all_mean_mech_val(4:6)),sz,'d', 'filled', 'MarkerEdgeColor',[0 0 0],...
              'MarkerFaceColor',[0.5 0.8 0.9])
scatter(plot_val(7:9), log10(all_mean_mech_val(7:9)),sz, 'square', 'filled', 'MarkerEdgeColor',[0 0 0],...
              'MarkerFaceColor',[1 0.64 0])
scatter(plot_val(10:12), log10(all_mean_mech_val(10:12)),sz, 'pentagram', 'filled', 'MarkerEdgeColor',[0 0 0],...
              'MarkerFaceColor',[1 0 0])

% for so2
x = linspace(0.8, 1.5, 100);
m = 3.295;
c = -2.137;
y = m.*x + c;
plot(x,y, '--', 'Linewidth', 2);

set(gca, 'Fontsize', 16)
xlabel('GAG value')
ylabel('Youngs Modulus [log scale]')
xlim([0.86 1.5])
title('SO - 4 mm')

r_sq = corrcoef(plot_val, log_mech_val).^2