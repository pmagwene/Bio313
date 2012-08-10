import settings;

settings.render=10;
settings.prc=true;
settings.outformat="pdf";

import three;


size(400,400);

currentprojection=perspective(4,1.5,1.5,autoadjust=true);

defaultpen(fontsize(9));


/* X and Y vectors */
path3 x = (0,0,0)--(0.75,1.6,0); 
draw(Label("$\mathbf{x}_1$", 1),x,S,Arrow3);

path3 x2 = (0,0,0)--(0.75,1.6,0.1); 
draw(x2,dashed,Arrow3);


path3 y = (0,0,0)--(0.5,1.9,0);
draw(Label("$\mathbf{x}_2$", 1),y,N,Arrow3);

path3 y2 = (0,0,0)--(0.5,1.9,-0.1);
draw(y2,dashed,Arrow3);



/* draw the X,Y-plane */
path3 xyplane = (0,0,0)--(2,0,0)--(2,2,0)--(0,2,0)--cycle;
draw(xyplane);
draw(surface(xyplane),lightgray+opacity(0.25));



path3 z = (0,0,0)--(1.8, 1.5,1.2);
draw(Label("$\mathbf{y}$", 1, align=S),z,Arrow3);

path3 projz = planeproject(xyplane)*z;

path3 altplane = scale3(2)*plane(dir(x2),dir(y2));
path3 altprojz = planeproject(altplane)*z;

path3 altplane2 = scale3(1.35)*plane(dir(y2),dir(altprojz));
draw(surface(altplane2),red+opacity(0.35),meshpen=black+thick(),nolight,render(merge=true));

triple endpoint = invert(point(length(projz))); 


draw(Label("$\mathbf{\widehat{y}}$", 1),projz,red,Arrow3);

draw(Label("$\mathbf{\widehat{y'}}$", 1,align=S), altprojz,red+dashed,Arrow3);




// draw(Label("$\mathbf{e}$", MidPoint),(1.8,1.5,0)--(1.8,1.5,1.2),red+dashed,Arrow3);

