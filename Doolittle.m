function Doolittle(A)

d = size(A,1); 
L = zeros(size(A));
U = zeros(size(A)); 

for j = 1:d
    for i = 1:d
        
        if(i <= j) 
            U(i,j) = A(i,j); 
            for k = 1:i-1
                U(i,j) = U(i,j) - L(i,k) * U(k,j); 
            end 
        end 
        
        if(j <= i)
            L(i,j) = A(i,j); 
            for k = 1:j-1
                L(i,j) = L(i,j) - L(i,k) * U(k,j); 
            end
            L(i,j) = L(i,j) / U(j,j); 
        end
    end
end
    
%Impresion de matriz L
fprintf('L = \n'); 
fmt = [repmat('%4d ', 1, size(L,2)-1), '%4d\n'];
fprintf(fmt, L.'); 

%Impresion de matriz U 
fprintf('\nU = \n'); 
fmt = [repmat('%4d ', 1, size(U,2)-1), '%4d\n'];
fprintf(fmt, U.'); 
