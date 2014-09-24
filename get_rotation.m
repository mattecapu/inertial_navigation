function [rotation] = get_rotation(vector, phi, theta, psi)
	%phi = 0;
	%theta = 0;
	rotation = [ cos(theta)*cos(psi)    cos(phi)*sin(psi) + sin(phi)*sin(theta)*cos(psi)    sin(phi)*sin(psi) - cos(phi)*sin(theta)*cos(psi);
				-cos(theta)*sin(psi)    cos(phi)*cos(psi) + sin(phi)*sin(theta)*sin(psi)    sin(phi)*sin(psi) + cos(phi)*sin(theta)*sin(psi);
				      sin(theta)                      -sin(phi)*cos(theta)                              cos(phi)*cos(theta)                 ];
	rotation = vector * rotation';
	%q = [
	%	cos((phi - psi) / 2)*sin(theta / 2)
	%	sin((phi - psi) / 2)*sin(theta / 2)
	%	sin((phi + psi) / 2)*cos(theta / 2)
	%	cos((phi + psi) / 2)*cos(theta / 2)
	%];
	%q_r = [q(1) -q(2) -q(3) -q(4)] / (q(1)^2 + q(2)^2 + q(3)^2 + q(4)^2);
	%rotation = hamilton_product(hamilton_product(q, [vector 0]), q_r)(1:3)';
end