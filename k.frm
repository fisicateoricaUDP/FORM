#include V.hh

Symbols PI, e, i, phi, th, a, x, n, m, last, secondlast, dummy, r;
CFunction L;

#call 'name'('MAX', 'MIX', 'MEX', 'MIXXX')

#if 'name'== "harmonics"
Print [Y(l='MAX', m='MIX', th)];
#elseif 'name'== "hydrogen"
print  [<r|n='MEX',l='MAX',m='MIX'>];
#elseif 'name'== "laguerre"
print  Print [L('MAX',x)];
#else 'name'== "legendre"
Print [L(l='MAX', m='MIX', th)];
#endif



.end
