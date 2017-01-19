% eigenvalues.m
%{
A= [ 1 1 ; -2 4 ]
u1=[ -1 ;0 ];
u2= [ -1; 1 ];
v1=A*u1;
v2= A*u2;

%EIGENVALUES
u3 = [ -1 ; -1 ];
u4 = [ 1 ; 2 ] ;
A*u3;
A*u4;
%}


%{
%  REPEATED EIGENVALUES
A = [ 1 -2 4; 3 -4 4 ; 3 -2 2 ]
det(A)                              % Notice det(A) here = 12
trace(A) 
eig(A)
%}
%{
%  DISTINT EIGENVALUES
B = [ 1 -1 -2; 1 -1 -2 ; -1 -1 0 ]  % 3x3 matrix 
det(B)                              % the determinant = 0; 
trace(B)                            % This solution is unstable
eig(B)                              %  eig(A) gives us the eigenvalues

%}

%DIAGONALIZATION
%{
A = [ 3 2 ; -1 0] 
eig(A)
diag(A)
%}
%{ 
EXTRA example
A = [ 1 -3 3 ; 3 -5 3 ; 6 -6 4 ] 
det(A) 
trace(A)
eig(A) 
%} 

A = [ 1 -1 ; 0 1 ] 
eig(A)                  % here the diagonalization fails
diag(diag(A))           % cannot form two linearly independent eigenvectors
                       

B= [ 3 1 1 ; -1 1 -1 ; 1 1 3]
eig(B)                  % result: three linearly independent eigenvectors
diag(diag(B))           % Diagonizable because of this
%}
