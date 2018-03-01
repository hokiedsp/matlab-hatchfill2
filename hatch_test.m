%% Hatch test

z = peaks;
[c,h] = contourf(z);
clabel(c,h)
colorbar

hold on
[c,h] = contourf(z,[3 3]);
hold off
set(h,'linestyle','none');
hh = hatchfill2(h,'cross','HatchDensity',40,'LineWidth',1,'Fill','off');
