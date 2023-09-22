#procedure laguerre(MAX, MIX, MEX, MIXXX)

#if 'MAX'=0
Local [L(0,x)] = 1;
#else
Local [L('MAX',x)] = L(1,1+a-x,1)*dummy^{'MAX'-1};
#endif

repeat;
id L( n?, last?, secondlast?) * dummy =
L( n+1, (2*n+a+1-x)/(n+1)*last - (n+a)/(n+1)*secondlast, last );
endrepeat;
id L( n?, last?, secondlast? ) = last;


*Print [L('MAX',x)];
#endprocedure


