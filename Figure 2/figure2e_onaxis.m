clearvars

% depth = [3; 6; 9; 12];
% 
% on_axis = [73 27 0 0];
% so2 = [58 36 4 2];
% so3 = [48 40 9 3];
% so4 = [28 50 15 7];

% Replace the following variables with your histogram data
binCounts =  [73 27 0 0]; % The counts of each histogram bin
binEdges = [0 3 6 9 12]; % The edges of each histogram bin

% Calculate the bin centers
binCenters = (binEdges(1:end-1) + binEdges(2:end)) / 2;

% Plot the histogram bars
bar(binCenters, binCounts, 'BarWidth', 1); % 'FaceColor','blue');
% bar(binCenters, binCounts, 'BarWidth', 1, 'FaceColor','#bf5b17');
% bar(binCenters, binCounts, 'BarWidth', 1, 'FaceColor','#f0027f');
% bar(binCenters, binCounts, 'BarWidth', 1, 'FaceColor','#7fc97f');


% Add a legend and labels
legend('Histogram');
xlabel('Sample depth (mm)');
ylabel('Photon percentage (%)');
axis square
set(gca,'Fontsize', 16)
xlim([-0.5 12.5])
title('On axis')
% title('On axis')
xticks([0 3 6 9 12]);
alpha(0.75)
% Release the hold on the plot
hold off;


