function [p_value_table] = p_value_table(data, labels)
    
    % data is a cell matrix with each cell value in the format n by 1
    % matrix
    %label = { 'B_control', 'REH', 'RS411' 'B_all','MN60'}; in this format
    
    labels = labels';
    size_label = size(labels,1);

    for ii = 1:size_label
        labels_int(ii,1) = ii;
    end
    
    comb_labels = nchoosek(labels,2);
    comb_labels_int = nchoosek(labels_int,2);
    
    for ik = 1:size(comb_labels_int,1)
        class1_1 = data{comb_labels_int(ik,1),1};
        class1_2 = data{comb_labels_int(ik,2),1};
        
        [p1, h1, stats1] = ranksum(class1_1, class1_2);
        R1 = stats1.ranksum;   % R is the ranksum from Wilcoxon rank sum test
        U1_1 = R1 - (size(class1_1,1)*(size(class1_1,1)+1)/2); % U1 is the Man whitney test metric U calculated with one of the samples as the first one.
        U1_2 = (size(class1_1,1)*size(class1_2,1)) - U1_1;  % same as above with the other sample as the first one. However, the sum equals the product of sizes. see wiki page on whitney U test for details.
        U1 = min(U1_1, U1_2); % conventional choice of U for calculating effect size. See wiki on effect size for this. Search 'whitney' on the page.
        r1 = 1-(2*U1/(size(class1_1,1)*size(class1_2,1)));
        
         p_value(ik,1) = p1;
         eff_value(ik,1) = r1;
         
          clearvars -except data labels size_label comb_labels comb_labels_int ...
              class1_1 class1_2 p_value eff_value
    end
    
    p_value_table = table(comb_labels, p_value, eff_value);
    

