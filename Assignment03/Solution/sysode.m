function dydt = sysode(eta,f)

dydt = [f(2);f(3);-f(1)*f(3)];