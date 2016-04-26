function V = Lagrange( X,Y,U )
%Input: X is the vector contains the given x coordinates
%       Y is the vector contains the given y coordinates
%       U is the vector contains the x coordinates of the inserted points
%Output:V is the vector contains the y coordinates of the inserted points
m=length(X);
Y=Y(:)'; 
pro=ones(length(X),length(U));
for i=1:length(X)
    for j=1:length(X)
        if j~=i
           pro(i,:)=pro(i,:).*(U-X(j))./(X(i)-X(j));
        end
    end
end
V=Y*pro;
end

