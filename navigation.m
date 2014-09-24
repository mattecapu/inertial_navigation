% sampling frequency
sampling = 1/10
% number of samples
samples = size(omega, 1)

% integrate omega with respect to time to get the angles
angles = cumsum(omega .* sampling);
% convert to radiants
angles *= pi / 180;
% reverse rotation
%angles *= -1;

% shorthands
phi   = angles(:, 1);
theta = angles(:, 2);
psi   = angles(:, 3) - pi/2;

for i = 1:samples
	acceleration(i, :) = get_rotation(acceleration(i, :), phi(i), theta(i), psi(i));
end

% get rid of marix multiplication artifacts
clear_numerical_error(acceleration, 6);

velocity = [zeros(samples, 3); 0 0 0];
space    = [zeros(samples, 3); 0 0 0];

for i = 1:samples
	prev_i = ifelse(i > 1, i - 1, samples + 1);

	% gravity bias -> trough calibration!
	% uncomment the line if using fake data (thus skipping calibration step)
	%acceleration(i, 3) += 9.81;

	velocity(i, :)     = acceleration(i, :) .* sampling + velocity(prev_i, :);
	space(i, :)        = 0.5 .* acceleration(i, :) .* (sampling ^ 2) + velocity(prev_i, :) + space(prev_i, :);
end

% remove last null row
space    = space(1:end-1,:);
velocity = velocity(1:end-1,:);

% plot 3D path
figure(1);
scatter3(space(:,1), space(:,2), space(:,3), 1, "red")
xlabel("X")
ylabel("Y")
zlabel("Z")
view(2)