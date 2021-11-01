%
% Green-Tao Theorem
% Find arithmetic progressions of primes
%

P=zeros(1,11);
Q=[1 2 3 4 5 6 7 8 9 10 11];

for i=1:5
    for k=0:30000
        for j=1:30000
            for l=1:11
                P(1,l)=2*i-1+10*k+10*j*(l-1);
            end
            if isprime(P)==logical([1 1 1 1 1 1 1 1 1 1 1])
               disp(P)
               Q=[Q;P];
            end
        end
    end
end
                    
writematrix(Q,'gt11.csv')                       