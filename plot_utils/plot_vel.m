% plot velocities
figure(5);
subplot(1, 3, 1);
plot(1:samples, velocity(:, 1))
title("velocity on x")

subplot(1, 3, 2);
plot(1:samples, velocity(:, 2))
title("velocity on y")

subplot(1, 3, 3);
plot(1:samples, velocity(:, 3))
title("velocity on z")