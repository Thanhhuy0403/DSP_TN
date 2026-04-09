function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    yn = conv(xn, hn);
    yorigin = xorigin + horigin - 1;

    nx = (1:length(xn)) - xorigin;
    nh = (1:length(hn)) - horigin;
    ny = (1:length(yn)) - yorigin;

    clf();
    subplot(3,1,1)
    plot2d3(nx, xn)
    title("x(n)")
    subplot(3,1,2)
    plot2d3(nh, hn)
    title("h(n)")
    subplot(3,1,3)
    plot2d3(ny, yn)
    title("y(n) = x(n) * h(n)")
endfunction

[yn, yorigin] = convolution([1 2 3], 2, [1 1 1], 2)
