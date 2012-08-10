import geometry;

size(200,200);

vector x = (1.25,0.25); 
show(Label("$\vec{x}$", 1),x);


vector y = (0.5,0.6);
show(Label("$\vec{y}$", 1),y);


point compY = projection(line((0,0),x))*y;

draw((0,0)--compY,red,Arrow);

draw("$\vec{e}_y$", compY--point(y), red+dashed);