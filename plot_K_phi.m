function plot_K_phi

clear all;
clc;

load spe10_me


Kxx=log10(Kxx);

figure(1)
slice(Kxx, [1 220],60,[1,85]);
shading flat, axis equal off, set(gca,'zdir', ' reverse ' ), box on;
h=colorbar('southoutside');
title('Horizontal Permeability');
set(h, 'XTickLabel',10.^[get(h,'XTick')]);
xlabel(h,'Kxx(mD)');


Kzz=log10(Kzz);

figure(2)
slice(Kzz, [1 220],60,[1,85]);
shading flat, axis equal off, set(gca,'zdir', ' reverse ' ), box on;
h=colorbar('southoutside');
title('Vertical Permeability')
set(h, 'XTickLabel',10.^[get(h,'XTick')]);
ylabel(h,'Kzz(mD)');



figure(3)
slice(poro, [1 220],60,[1,85]);
shading flat, axis equal off, set(gca,'zdir', ' reverse ' ), box on;
h=colorbar('southoutside');
title('Porosity');
