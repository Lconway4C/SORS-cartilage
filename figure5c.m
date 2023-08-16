clearvars

file_dir = dir('*.mat');

all_spectra = [];
all_label = []; %first column is time and second column is offset

for ii = 1:size(file_dir,1)
    filename = file_dir(ii).name;
    load(filename);
    all_spectra = [all_spectra; condyle_spectra];

    a1 = str2double(filename(5:6));
    a2 = str2double(filename(10));

    label1 = repmat(a1, size(condyle_spectra,1), 1);
    label2 = repmat(a2, size(condyle_spectra,1), 1);
    combined_label = [label1 label2];

    all_label = [all_label; combined_label];

    clearvars filename condyle_spectra a1 a2 label1 label2 combined_label

end

% 253
% 303
for ii = 1:size(all_label, 1)
    peak_vals(ii,1) = max(all_spectra(ii, 253:303));
end

t0s1 = peak_vals(all_label(:,1) == 0 & all_label(:,2) == 1);
t3s1 = peak_vals(all_label(:,1) == 3 & all_label(:,2) == 1);
t6s1 = peak_vals(all_label(:,1) == 6 & all_label(:,2) == 1);
t9s1 = peak_vals(all_label(:,1) == 9 & all_label(:,2) == 1);
s1 = [mean(t0s1); mean(t3s1); mean(t6s1); mean(t9s1)];

t0s2 = peak_vals(all_label(:,1) == 0 & all_label(:,2) == 2);
t3s2 = peak_vals(all_label(:,1) == 3 & all_label(:,2) == 2);
t6s2 = peak_vals(all_label(:,1) == 6 & all_label(:,2) == 2);
t9s2 = peak_vals(all_label(:,1) == 9 & all_label(:,2) == 2);
s2 = [mean(t0s2); mean(t3s2); mean(t6s2); mean(t9s2)];

t0s3 = peak_vals(all_label(:,1) == 0 & all_label(:,2) == 3);
t3s3 = peak_vals(all_label(:,1) == 3 & all_label(:,2) == 3);
t6s3 = peak_vals(all_label(:,1) == 6 & all_label(:,2) == 3);
t9s3 = peak_vals(all_label(:,1) == 9 & all_label(:,2) == 3);
s3 = [mean(t0s3); mean(t3s3); mean(t6s3); mean(t9s3)];

t0s4 = peak_vals(all_label(:,1) == 0 & all_label(:,2) == 4);
t3s4 = peak_vals(all_label(:,1) == 3 & all_label(:,2) == 4);
t6s4 = peak_vals(all_label(:,1) == 6 & all_label(:,2) == 4);
t9s4 = peak_vals(all_label(:,1) == 9 & all_label(:,2) == 4);
s4 = [mean(t0s4); mean(t3s4); mean(t6s4); mean(t9s4)];

grid_matrix1 = [s1 s2 s3 s4];

imagesc(grid_matrix1)
colormap(flip(jet))
clim([0.76 1.4356])
colorbar
