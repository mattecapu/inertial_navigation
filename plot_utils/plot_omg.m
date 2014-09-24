% plot angular velocities
figure(4);
subplot(1, 3, 1);
plot(1:samples, omega(:, 1))
title("omega on x")

subplot(1, 3, 2);
plot(1:samples, omega(:, 2))
title("omega on y")

subplot(1, 3, 3);
plot(1:samples, omega(:, 3))
title("omega on z")