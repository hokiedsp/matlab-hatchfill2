% close all; drawnow;
% figure(1);
% c = load('count.dat');
% Y = c(1:6,:);
% hp = bar(Y);
% set(gca,'YScale','log')
% % ishghandle(A,'bar') || ishghandle(A,'area') || ishghandle(A,'surface')
% hatchfill2(hp)

% figure(2)
% Y = [1, 5, 3;
%      3, 2, 7;
%      1, 5, 3;
%      2, 6, 1];
% ha = area(Y);
% hatchfill2(ha)

figure(3)
[X,Y] = meshgrid(-2:0.2:2,-2:0.2:2);
Z = X.*exp(-X.^2 - Y.^2);
hs = surface(X,Y,Z);
view(3)
hatchfill2(hs)

% figure(4)
% x = randn(10000,1);
% hh = histogram(x);
% hatchfill2(hh)

% figure(5)
% [X,Y,Z] = peaks;
% [c,h] = contour(X,Y,Z,20);
% clabel(c,h)
% hold on;
% [~,hc] = contour(X,Y,Z,[0.41613 0.41613],'Fill','on');
% hold off
% hatchfill2(hc)

figure(6)
[X,Y] = meshgrid(-8:.5:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R)./R;
hm = mesh(Z);

hatchfill2(hm)
% figure(6)
% [~,hc2] = contour(X,Y,Z,[0.41613 0.41613],'Fill','on');
% set(gca,'xdir','reverse'),

drawnow
% 
% class(hp(1).Face)
% get(hp(1).Face)

% bar, surface, histogram = Quadrilateral
% class(hp(1).Face)
% get(hp(1).Face)
% class(hs(1).Face)
% get(hs(1).Face)
% class(hh(1).NodeChildren(4))
% get(hh(1).NodeChildren(4))

% area & contour = TriangleStrip
% class(ha(1).Face)
% get(ha(1).Face)
% class(hc.FacePrims)
% get(hc.FacePrims)
% class(hc2.FacePrims)
% get(hc2.FacePrims)


% class(hm.Face)
% get(hm.Face)
