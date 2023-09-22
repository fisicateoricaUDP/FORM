#procedure hydrogen(MAX, MIX, MEX, MIXXX)

#call harmonics ('MAX', 'MIX', 'MEX', 'MIXXX')
.sort
#call laguerre ({'MEX'-'MAX'-1},'MIX','MEX', 'MIXXX')
id a = 2*'MAX'+1;
id x = 2*r/'MEX';
.sort

local [R('MEX',{'MEX'-'MAX'-1})]=(2/(('MEX'^2)*('MEX'+'MAX')))*((fac_('MEX'-'MAX'-1)))^(1/2)*(2*r/'MEX')^('MAX')*(1/e^(r*'MEX'))*[L({'MEX'-'MAX'-1},x)];
local [<r|n='MEX',l='MAX',m='MIX'>]=[R('MEX',{'MEX'-'MAX'-1})]*[Y(l='MAX', m='MIX', th)];

*print  [<r|n='MEX',l='MAX',m='MIX'>];
#endprocedure


