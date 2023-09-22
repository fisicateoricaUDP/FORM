#procedure legendre(MAX, MIX, MEX,MIXXX)


#if 'MAX'= 0
Local [L(0,x)] = 1+('MIX'-'MIX');
#else
Local [L('MAX',x)] = L(1, 1, x)*dummy^{'MAX'-1};
#endif
#if 'MIX'>= 0
Local [L(l='MAX', m='MIX', th)]=  (-1)^('MIX')*(1-x^(2))^(n/2)*[L('MAX',x)];
#else
Local [L(l='MAX', m='MIX', th)]=  (-1)^('MIX')*((fac_('MAX'+'MIX'))/(fac_('MAX'-'MIX')))*((1-x^(2))^(n/2)*[L('MAX',x)]);
#endif

repeat;
id L( n?, last?, secondlast?) * dummy =
L( n+1,secondlast,(((2*n+1)*x*secondlast)-n*last)/(n+1));
endrepeat;
#if 'MIX'>= 0
id L( n?, last?, secondlast? ) = secondlast*dummy^'MIX';
#else
id L( n?, last?, secondlast? ) = secondlast*dummy^(-'MIX');
#endif
repeat;
id dummy*x^n?=n*x^(n-1);
endrepeat;
#if 'MIX'>= 0
id (1-x^(2))^(n/2)=sin_(th)^((+1)*'MIX');
id x=cos_(th);
#else
id (1-x^(2))^(n/2)=sin_(th)^((-1)*'MIX');
id x=cos_(th);
#endif

Bracket sin_;
*Print [L(l='MAX', m='MIX', th)];
#endprocedure


