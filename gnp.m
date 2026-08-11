function A=gnp(n,p)
A=binornd(1,p,n);
A=triu(A,1);
A=A+A';
