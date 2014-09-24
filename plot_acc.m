% plot accelerations
figure(2);
subplot(1, 3, 1);
plot(1:samples, acceleration(:, 1))
title("acceleration on x")

subplot(1, 3, 2);
plot(1:samples, acceleration(:, 2))
title("acceleration on y")

subplot(1, 3, 3);
plot(1:samples, acceleration(:, 3))
title("acceleration on z")