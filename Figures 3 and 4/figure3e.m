clearvars

%% mechanical measurement data

E_0hr = [481.4255655; 412.2668481; 657.7951082; 422.4702217; 368.86; 512.4];
E_3hr = [61.38749937; 122.0448621; 47.42; 19.057; 195.74];
E_6hr = [42.19193007; 29.25662341; 24.72456171; 13.65399779; 16.79175336; 16.35645779];
E_9hr = [15.71209727; 17.71411142; 11.60334756; 14.51211953; 10.76077209];

all_mech_val = [E_0hr; E_3hr; E_6hr; E_9hr];
all_mech_grp = [zeros(size(E_0hr,1),1); 3.*ones(size(E_3hr,1),1); 6.*ones(size(E_6hr,1),1); ...
    9.*ones(size(E_9hr,1),1)];

figure
boxplot(log(all_mech_val), all_mech_grp);
boxchart(categorical(all_mech_grp), log10(all_mech_val), "BoxFaceColor",'#ff7f00'); % Young's modulus
set(gca,'Fontsize', 14)
title('Youngs modulus')
xlabel('Time to trypsin treatment (hrs)')
ylabel('Log of Youngs Modulus [MPa]')