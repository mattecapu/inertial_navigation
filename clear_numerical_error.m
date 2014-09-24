% remove calculation artifacts from elements of *matrix*
% up to *precision* decimal digits
function [result] = clear_numerical_error(matrix, precision = 6)
	++precision;
	result = round(matrix .* 10^precision) ./ 10^precision;
end