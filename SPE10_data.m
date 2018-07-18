function SPE10_data
clear all;clc;

K=load('spe_perm.dat');
save('K.mat','K');
p=load('spe_phi.dat');

load K;
Kx=K(1:85*220*10,:);
Ky=K(85*220*10+1:85*220*20,:);
Kz=K(85*220*20+1:85*220*30,:);
Kx=Kx';
Kx=Kx(:);
Ky=Ky';
Ky=Ky(:);
Kz=Kz';
Kz=Kz(:);
p=p';p=p(:);

Kxx=reshape(Kx,60,220,85);
Kyy=reshape(Ky,60,220,85);
Kzz=reshape(Kz,60,220,85);
poro=reshape(p,60,220,85);

save('SPE10_me','Kxx','Kyy','Kzz','poro');


%Drawing the distribution of permeability
K1=Kxx(:,:,1);K85=Kxx(:,:,85);
K1=log10(K1);K85=log10(K85);
subplot(1,2,1);
h1=pcolor(K1');
shading flat;colorbar;xlabel( '(a) Layer 1');

subplot(1,2,2);
h2=pcolor(K85');
shading flat;colorbar;xlabel( '(b) Layer 85');