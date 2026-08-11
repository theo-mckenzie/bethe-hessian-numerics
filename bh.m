function H=bh(A,t)
n=length(A);
D=diag(sum(A));
A=sparse(A);
H=(t^2-1)*eye(n)-t*A+D;