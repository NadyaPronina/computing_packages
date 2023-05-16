function retval = lesson8_28_03 (u0, v0)
  u = 0:0.008:(2*pi + 0.1);
  v = -1:0.008:1;
  [U,V] = meshgrid(u,v);
  x = (1+(V./2).*cos(U./2)).*cos(U);
  y = (1+(V./2).*cos(U./2)).*sin(U);
  z = (V./2).*sin(U./2);
  surf(x,y,z);
  colormap('ocean');
  shading interp;

  hold on;
  x0 = (1+(v0/2).*cos(u0/2)).*cos(u0);
  y0 = (1+(v0/2).*cos(u0/2)).*sin(u0);
  z0 = (v0/2).*sin(u0/2);

  t = 0:0.1:2;
  h = 10^-8;
  %частная производная по u
  x = ((1+(V./2).*cos((U+h)./2)).*cos(U+h))/h;
  y = ((1+(V./2).*cos((U + h)./2)).*sin(U+h))/h;
  z = ((V./2).*sin((U+h)./2)) / h;

  %частная производная по v
  x = ((1+((V+h)./2).*cos(U./2)).*cos(U+h))/h;
  y = ((1+((V+h)./2).*cos(U./2)).*sin(U))/h;
  z = (((V+h)./2).*sin(U./2))/h;


endfunction
