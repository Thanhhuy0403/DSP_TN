function [yn, yorigin] = multi(x1n, x1origin, x2n, x2origin)
    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;
    nmin = min(min(n1), min(n2));
    nmax = max(max(n1), max(n2));
    n = nmin:nmax;
    y1 = zeros(1,length(n));
    y2 = zeros(1,length(n));
    start1 = n1(1) - nmin + 1;
    y1(start1:start1+length(x1n)-1) = x1n;

    start2 = n2(1) - nmin + 1;
    y2(start2:start2+length(x2n)-1) = x2n;

    yn = y1 .* y2;
    yorigin = 1 - nmin;
    
    clf();
    subplot(3,1,1)
    plot2d3(n1, x1n)
    title("x1(n)")

    subplot(3,1,2)
    plot2d3(n2, x2n)
    title("x2(n)")
    subplot(3,1,3)
    plot2d3(n, yn)
    title("y(n) = x1(n) * x2(n)")
endfunction

[yn, yorigin] = multi([0, 1, 3, -2], 1, [1, 1, 2, 3], 2)
