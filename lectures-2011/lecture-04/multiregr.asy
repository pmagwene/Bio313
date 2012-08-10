settings.render=10;
settings.prc=true;
settings.outformat="pdf";

import three;

size(200);

defaultpen(fontsize(9));

currentprojection=perspective(4,2,1.5);
/* currentprojection=perspective(4,1,1); */


/* draw the X,Y-plane */
path3 xyplane = (0,0,0)--(2,0,0)--(2,2,0)--(0,2,0)--cycle;
draw(xyplane,gray);

/* X and Y vectors */
path3 x = (0,0,0)--(1.75,1,0); 
draw(Label("$\mathbf{x}_1$", 1),x,Arrow3);

path3 y = (0,0,0)--(0.5,1.9,0);
draw(Label("$\mathbf{x}_2$", 1, align=S),y,Arrow3);


path3 z = (0,0,0)--(1.8, 1.5,1.2);
draw(Label("$\mathbf{y}$", 0.75, align=2*W),z,Arrow3);

path3 projz = planeproject(xyplane)*z;

triple endpoint = invert(point(length(projz))); 


draw(Label("$\mathbf{\widehat{y}}$", 1, align=E),projz,red,Arrow3);

/*draw(Label("$\mathbf{e}$", MidPoint),(1.8,1.5,0)--(1.8,1.5,1.2),red+dashed,Arrow3);*/

draw(Label("$\mathbf{e}$", 0.75,align=RightSide),(1.8,1.5,0)--(1.8,1.5,1.2),red+dashed,Arrow3);
