f = open("/home/nihit/terr.log",'r')
k = f.readlines()
c = []
d = []
for i in k:
    if 'creation' in i:
        c.append(i)
    else:
        d.append(i)


cs = []
ce = []
ds = []
de = []
for i in c:
    if 'started' in i:
        cs.append(i)
    else:
        ce.append(i)


for i in d:
    if 'started' in i:
        ds.append(i)
    else:
        de.append(i)


cs[0].split()[5]

from datetime import datetime
datetime.now()-datetime.strptime(cs[0].split()[5],'%H:%M:%S')
delta = datetime.now()-datetime.strptime(cs[0].split()[5],'%H:%M:%S')

dir(datetime)
delta.min

delta = datetime.strptime(ce[0].split()[5],'%H:%M:%S')-datetime.strptime(cs[0].split()[5],'%H:%M:%S')
delta.seconds/60.0

for i in range(6):
    delta = datetime.strptime(ce[i].split()[5],'%H:%M:%S')-datetime.strptime(cs[i].split()[5],'%H:%M:%S')
    print(i,' created in: %.2f mins'%(delta.seconds/60.0))
    delta2 = datetime.strptime(de[i].split()[5],'%H:%M:%S')-datetime.strptime(ds[i].split()[5],'%H:%M:%S')
    print(i,' deleted in: %.2f mins'%(delta2.seconds/60.0))
    
    
