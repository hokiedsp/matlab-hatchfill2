clear; close all; clc

tMax = 1;
Ts = 0.001;
fs = 1/Ts;

t = -tMax:Ts:tMax;

PSI = zeros(size(t));
tPos = t(t>=0);
PSI(t>=0) = exp(-2*(tPos));
PSI = transpose(PSI).*exp(-1j*pi/6 );


%=================================================================
%SIGNAL
%=================================================================
h.fig = figure('name','New Diagram');hold on;set(h.fig,'units','normalized', 'Position',  [ 0.05    0.05    1-0.1    0.85],'color',[1,1,1]);

%COMPLEX SIGNAL
h.p = plot3(t,imag(PSI),real(PSI),'Color','k','LineWidth',3);
h.t = text(0.2,0,max(abs(PSI))*0.85,'$h(t)$','interpreter','latex','color','k','FontSize',24,'HorizontalAlignment','center','VerticalAlignment','middle'   );

%REAL PROJECTION
h.Fill1 = fill3([t(1);t';t(end)],zeros(length(t)+2,1),[0;real(PSI);0],'b','EdgeColor','b','LineWidth',1,'EdgeAlpha',0.5,'FaceAlpha',0.15);
set(h.Fill1,'Tag','HatchingRegion1');
hp = findobj(gca,'Tag','HatchingRegion1');
% hh = hatchfill2(hp,'cross','LineWidth',1,'FaceColor','none','HatchStyle','single','HatchAngle',90,'HatchSpacing',25);


%IMAG PROJECTION
h.Fill2 = fill3([t(1);t';t(end)],[0;imag(PSI);0],zeros(length(t)+2,1),'g','EdgeColor','g','LineWidth',1,'EdgeAlpha',0.5,'FaceAlpha',0.15);
set(h.Fill2,'Tag','HatchingRegion2');
hp = findobj(gca,'Tag','HatchingRegion2');
hh = hatchfill2(hp,'cross','LineWidth',1,'FaceColor','none','HatchStyle','single','HatchAngle',90,'HatchSpacing',25);


%AXES AND VIEW
lims = [t(1),t(end),-1.1*max([max(abs(PSI)),1]),1.1*max([max(abs(PSI)),1]),-1.1*max([max(abs(PSI)),1]),1.1*max([max(abs(PSI)),1])];
axis(lims);
da = daspect;
view([-30,25])