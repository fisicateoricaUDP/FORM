#procedure harmonics(MAX, MIX, MEX, MIXXX)

#if 'MIX'>= 0
#call legendre('MAX','MIX','MEX', 'MIXXX')
#else
#call legendre('MAX','MIXXX','MEX', 'MIX')
#endif

.sort

#if 'MIX'>= 0
Local [Y(l='MAX', m='MIX', th)] = ((-1)^('MIX'))*((1/2)*root_(2,(2*'MAX'+1))*root_(2,fac_('MAX'-'MIX'))/((PI*fac_('MAX'+'MIX')))^(1/2))*e^(i*'MIX'*phi)*[L(l='MAX', m='MIX', th)];
#else
Local [Y(l='MAX', m='MIX', th)] = ((-1)^('MIXXX'))*((1/2)*root_(2,(2*'MAX'+1))*root_(2,fac_('MAX'-'MIXXX'))/((PI*fac_('MAX'+'MIXXX')))^(1/2))*e^(i*'MIX'*phi)*[L(l='MAX', m='MIXXX', th)];
#endif

id root_(n?,m?) = m^(1/n);
*Print [Y(l='MAX', m='MIX', th)];
#endprocedure
