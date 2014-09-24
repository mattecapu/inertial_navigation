% calibrate data based on the mean value of the last *sample_size* elements
% (it sets zero to the mean value)
function [filtered] = calibrate(data, sample_size)
	mean_value = mean(data(end-sample_size:end, :));
	for i = 1:size(data, 2)
		data(:, i) -= mean_value(i);
	end
	filtered = data;
end