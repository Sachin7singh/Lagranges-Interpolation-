function y = lagrange_interp(x, fx, x0)
%fx is in millions
%x is year 
%x0 is year
n=length(x);
y=0;
for j=1:n
    b=1;
    for i=1:n
        if i~=j
            b=b*(x0-x(i))/(x(j)-x(i));
        end
    end
    y= y+b*fx(j);
end 
fprintf('The population during year %d is %.4f million.' , x0,y)