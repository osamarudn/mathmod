model pr6
parameter Real a = 0.08;
parameter Real b = 0.02;

Real S(start=6557);
Real I(start=83);
Real R(start=6);

equation
  der(S) = 0;
  der(I) = b*I;
  der(R) = -b*I;
end pr6;


model pr6
parameter Real a = 0.08;
parameter Real b = 0.02;

Real S(start=6557);
Real I(start=83);
Real R(start=6);

equation
  der(S) = -a*S;
  der(I) = a*S-b*I;
  der(R) = b*I;
end pr6;
