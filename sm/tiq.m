function y = tiq(n)
  p = 3*2^(n-1)-1;
  q = 3*2^(n)-1;
  r = 9*2^(2*n-1)-1;
  if all(isprime([p,q,r]))
    y = [2^(n)*p*q,2^(n)*r];
  else
    y = [];
  endif
end