% plot spaces
figure(3);
subplot(1, 3, 1);
plot(1:samples, space(:, 1))
title("space on x")

subplot(1, 3, 2);
plot(1:samples, space(:, 2))
title("space on y")

subplot(1, 3, 3);
plot(1:samples, space(:, 3))
title("space on z")