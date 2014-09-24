% rotate *vector* by angles *phi* (x axis), *theta* (y axis) and *psi* (z axis)
% using a rotation matrix XYZ
function [rotation] = get_rotation(vector, phi, theta, psi)
	rotation = [ cos(theta)*cos(psi)    cos(phi)*sin(psi) + sin(phi)*sin(theta)*cos(psi)    sin(phi)*sin(psi) - cos(phi)*sin(theta)*cos(psi);
				-cos(theta)*sin(psi)    cos(phi)*cos(psi) + sin(phi)*sin(theta)*sin(psi)    sin(phi)*sin(psi) + cos(phi)*sin(theta)*sin(psi);
				      sin(theta)                      -sin(phi)*cos(theta)                              cos(phi)*cos(theta)                 ];
	rotation = vector * rotation';
end