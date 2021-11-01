%
% Green-Tao Theorem
% Find arithmetic progressions of primes
%

a=[1 3 7 9];
P=zeros(1,7);
Q=[1 2 3 4 5 6 7];

for i=1:4
    for k=0:200
        for j=1:200
            for l=1:7
                P(1,l)=a(1,i)+10*k+10*j*(l-1);
            end
            if isprime(P)==logical([1 1 1 1 1 1 1])
               disp(P)
               Q=[Q;P];
            end
        end
    end
end
                    
writematrix(Q,'gt07.csv')                    