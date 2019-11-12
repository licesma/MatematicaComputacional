function [res] = norma(A, tipo)
%Norm of vectors and matrices
norm=0;
if size(A,1)==1
    disp('The parameter is a vector')
    if tipo == 1
        %norm 1
        for j=1:size(A,2)
            norm= norm + abs(A(1,j));
        end
    elseif tipo == 2
            %norm 2
         for j=1:size(A,2)
            norm= norm + A(1,j)^2;
         end
         norm= sqrt(norm);
    elseif tipo == 3
            %infinite norm
         norm= abs(A(1,1));
         for j=2:size(A,2)
             if abs(A(1,j)) > norm
                 norm = abs(A(1,j));
             end
         end
    else
        norm=-1;
        disp('Error, the second parameter should be one of the following:')
        disp('1, 2 o 3 (inf)')
    end
            
else
    disp('The parameter is a matrix')
    if tipo == 1
        %Norm 1
        for j=1:size(A,2)
            col=0;
            for i=1:size(A,1)
                col=col + abs(A(i,j));
            end
            if col>norm
                norm=col;
            end
        end
    elseif tipo == 2 
        %norm 2
        EV= eig(A);
        for i=1:size(A,1)
            if EV(i,1)>norm
                norm=EV(i,1);
            end
        end
    elseif tipo==3
        %infinite norm
        for i=1:size(A,1)
            col=0;
            for j=1:size(A,2)
                col=col + abs(A(i,j));
            end
            if col>norm
                norm=col;
            end
        end
    elseif tipo == 4
        %Fro norm
        for i=1:size(A,1)
            for j=1:size(A,2)
                norm= norm + A(i,j)^2;
            end
        end
        norm= sqrt(norm);
    else
        norm=-1;
        disp('Error, the second parameter should be one of the following:')
        disp('1, 2, 3(inf) o 4(fro)')
end
res=norm;
end

