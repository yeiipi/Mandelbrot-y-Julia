clc

v = VideoWriter('Julia2.avi');
v.FrameRate = 30;
v.Quality = 100;


open(v);

I = [0.5:0.01:0.7]


for h=I
    W = f_julia_set(2,1);
    imshow(W);
    title('Set de Julia con n = 2 & c = 0.7885 * e**(i*t), con 0 <= t <= 6*pi');
    xlabel('Eje Real');
    ylabel('Eje Imaginario');
    F = getframe(gcf);
    writeVideo(v, F);
end

close(v);








