model pr5
Real x(start=9);
Real y(start=20);

parameter Real a = 0.32;
parameter Real b = 0.04;
parameter Real c = 0.42;
parameter Real d = 0.02;

equation
  der(x) = -a*x + b*x*y;
  der(y) = c*y - d*x*y;
end pr5;
