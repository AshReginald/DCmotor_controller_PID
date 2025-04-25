% A 3.70kW, 240V, 1750rpm DC motor
Ra = 11.4;
La = 0.1214;
Jm = 0.02215;
Dm = 0.002953;
Kt = 1.28;
Kb = 0.0045;

%%Transfer fnc : tf
G = tf(Kt,[La*Jm (Ra*Jm+La*Dm) (Ra*Dm+Kb*Kt) 0]);
G