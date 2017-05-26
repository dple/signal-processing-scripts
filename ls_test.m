t1 = linspace(-5*pi, 5*pi, 500);
trace = sin(t1);

t2 = linspace(-2*pi, 2*pi, 200);
pattern = cos(t2);
lsPos = least_square(trace, pattern, 1, 500);
disp(strcat('Pattern matched at the point: ', int2str(lsPos)));

subplot(311);
plot(t1, trace); axis([-16 16 -2 2]);
title('Trace')

subplot(312)
plot(t2, pattern);axis([-16 16 -2 2]);
title('Pattern');

subplot(313)
plot(t2, trace(lsPos : lsPos + length(pattern) - 1)); axis([-16 16 -2 2]);
title('Pattern matched');
