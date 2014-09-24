% plot angles
figure(6);
subplot(1, 3, 1);
plot(1:samples, phi .* (180/pi))
title("angle on x")

subplot(1, 3, 2);
plot(1:samples, theta .* (180/pi))
title("angle on y")

subplot(1, 3, 3);
plot(1:samples, psi .* (180/pi))
title("angle on z")