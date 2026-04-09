function [yn, yorigin] = fold(xn, xorigin)
    yn = xn($:-1:1);
    yorigin = length(xn) - xorigin + 1;
    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;
    clf();
    subplot(2,1,1)
    plot2d3(nx, xn)
    title("x(n)")
    subplot(2,1,2)
    plot2d3(ny, yn)
    title("y(n) = x(-n)")
endfunction

[yn, yorigin] = fold([1, -2, 3, 6], 3)
