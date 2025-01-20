
clear all
% Step 1: Load Data
data = readtable('D:\Projects\Datasets\Optical parameters\optical_parameters_extended2.csv');

% Step 2: Preprocess Data
% Handle missing values
data = rmmissing(data);

% Normalize data
data_normalized = (data{:,:} - min(data{:,:})) ./ (max(data{:,:}) - min(data{:,:}));
data_normalized = array2table(data_normalized, 'VariableNames', data.Properties.VariableNames);

% Convert Distance from mm to microns
data_normalized.Distance= data_normalized.Distance * 1000; % mm to microns

% Step 3: Filter Noise
% Apply a low-pass filter (Butterworth) to the MTF column
fs = 1000;  % Sampling frequency (assumed)
fc = 50;    % Cutoff frequency
[b, a] = butter(2, fc / (fs / 2), 'low');  % 2nd-order low-pass Butterworth filter
filtered_mtf = filtfilt(b, a, data_normalized.MTF);

% Replace negative values with 0 after filtering
filtered_mtf(filtered_mtf < 0) = 0;

% Add the filtered MTF data back to the table
data_normalized.MTF_filtered = filtered_mtf;

% Step 4: Analyze Data
mean_mtf = mean(data_normalized.MTF_filtered);
std_mtf = std(data_normalized.MTF_filtered);
chromatic_range = max(data_normalized.Chromatic_Aberration) - min(data_normalized.Chromatic_Aberration);
%Compute MTF vs Spatial Frequency
spatial_frequencies = linspace(10, 100, height(data)); % Example spatial frequencies in lp/mm
data_normalized.Spatial_Frequency_lp_mm = spatial_frequencies';
data_normalized.MTF_vs_Spatial_Frequency = data_normalized.MTF_filtered .* exp(-spatial_frequencies' / 50); % Example relationship


% Step 5: Visualize Data
figure;
plot(data_normalized.Distance, data_normalized.MTF_filtered, '-o');
title('MTF vs Distance (Filtered)');
xlabel('Distance (μm)');
ylabel('MTF');
grid on;

figure;
plot(data_normalized.Distance, data_normalized.Chromatic_Aberration, '-s');
title('Chromatic Aberration vs Distance');
xlabel('Distance (μm)');
ylabel('Chromatic Aberration (μm)');
grid on;


figure;
plot(spatial_frequencies, data_normalized.MTF_vs_Spatial_Frequency, '-o');
title('MTF vs Spatial Frequency');
xlabel('Spatial Frequency (lp/mm)');
ylabel('MTF');
grid on;

% Step 6: Save Results
%writetable(data_normalized, 'preprocessed_optical_data.csv');
%disp(['Mean MTF: ', num2str(mean_mtf)]);
%disp(['Standard Deviation MTF: ', num2str(std_mtf)]);
%disp(['Chromatic Aberration Range: ', num2str(chromatic_range)]);
