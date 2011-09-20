settings.outformat="pdf";

import geometry;

size(200,200);

vector x = (1.25,0.25); 
draw(Label("$\vec{x}$", 1, align=S),(0,0)--point(x),Arrow);


vector y = (0.5,0.6);
draw(Label("$\vec{y}$", 1, align=LeftSide),(0,0)--point(y),Arrow);


point pc1 = (0.955,0.2965);
point pc2 = (-0.5275, 0.849);

line lpc1 = line((0,0), pc1);

draw(Label("$\vec{u}$",1,align=2*LeftSide), (0,0)--1.41*pc1, blue+dashed,Arrow);




point compY = projection(lpc1)*y;
point compX = projection(lpc1)*x;

draw("$\vec{e}_y$", compY--point(y), red+dashed);

draw("$\vec{e}_x$", compX--point(x), E+0.1NE, red+dashed);
