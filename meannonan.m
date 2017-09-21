function mm=meannonan(x)
for y = 1:length(x(1,:))
    columns = x(:,y);
    notin = isnan(columns)|isinf(columns);
    columns(notin) = [];
    z(y) = mean(columns);
end
mm = z;
