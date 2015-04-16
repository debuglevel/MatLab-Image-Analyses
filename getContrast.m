function [contrast] = getContrast (filename)
% getContrast  gets the contrast of an image
%
% SYNOPSIS: getContrast(filename)
%
% INPUT filename: path to the image to process
%
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.1 i686-pc-linux-gnu


% cumulative histogram of image.

% needed for ecdf()
if (isOctave())
  pkg load nan
end

Lab = getLabImage(filename);
L = Lab(:,1);
L = L / max(L); % normalize [0-1]
[f_values,x_values] = ecdf(L);
% Count how many data points we have
m = length(x_values);
% Add a column of all ones (intercept term) to x
X_values = [ones(m, 1) x_values];
% Calculate theta
theta = (pinv(X_values'*X_values))*X_values'*f_values;
theta_a = theta(2);
theta_b = theta(1);

fprintf('Contrast:\n');
fprintf('  Linear Regression of Brightness:\n');
fprintf('    y = %f * x + %f\n', theta_a, theta_b);
fprintf('    where (y = 1 * x + 0) would be the optimal function\n');

linreg = @(x) theta_a*x + theta_b;
step_width = 1/m;
x_linreg_values = [0:step_width:1]';
f_linreg_values = linreg(x_values);

opt = @(x) 1*x + 0;
x_opt_values = [0:step_width:1]';
f_opt_values = opt(x_values);



difference = abs(f_linreg_values - f_opt_values) .^ 2;
mse = sum(difference(:)) / numel(f_linreg_values);

fprintf('  Difference between linear regression and optimal function:\n');
fprintf('    Mean Square Error = %f = %f^2\n', mse, sqrt(mse));


contrast = 1 - mse;
% contrast is between 0.75 and 1.00
% normalize to [0 - 1]
contrast = (contrast - 0.75) * 4;

%mdl = fitlm(X,y) %not implemented in octave

%pkg unload nan



%kernel = [-1, -1, -1, -1, 8, -1, -1, -1] / 8;
%diffImage = conv2(double(grayImage), kernel, 'same');
%cpp = mean2(diffImage);

end