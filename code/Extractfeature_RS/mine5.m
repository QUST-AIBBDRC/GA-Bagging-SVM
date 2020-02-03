function V=mine8(V1)
len_V1=length(V1);% The length of the sequence
% Divides proteins into five classes of acidic, basic, aromatic,
% polar-neutral, and non-polar fats.
V2=zeros(1,len_V1);
for i=1:len_V1
    if (V1(i)=='D' || V1(i)=='E' )
            V2(i)='A';
        elseif(V1(i)=='R' || V1(i)=='H' ||V1(i)=='K')
           V2(i)='B';
        elseif(V1(i)=='W' ||V1(i)=='Y' ||V1(i)=='F' )
           V2(i)='F';
        elseif(V1(i)=='S'||V1(i)=='C' ||V1(i)=='M' ||V1(i)=='N' ||V1(i)=='Q' ||V1(i)=='T' )
           V2(i)='P';
        elseif(V1(i)=='G'||V1(i)=='A' ||V1(i)=='V' ||V1(i)=='L' ||V1(i)=='I' ||V1(i)=='P' )
           V2(i)='N';
    end
end
a=0;
for i=1:len_V1
    if( V2(i)=='A')
        a=a+1;
    end
end
b=0;
for i=1:len_V1
    if(V2(i)=='B')
        b=b+1;
    end
end
f=0;
for i=1:len_V1
    if( V2(i)=='F')
        f=f+1;
    end
end
p=0;
for i=1:len_V1
    if(V2(i)=='P')
        p=p+1;
    end
end
n=0;
for i=1:len_V1
    if(V2(i)=='N')
        n=n+1;
    end
end
r=0;
for i=1:len_V1
    if(V1(i)=='R')
        r=r+1;
    end
end
d=0;
for i=1:len_V1
    if(V1(i)=='D')
        d=d+1;
    end
end
e=0;
for i=1:len_V1
    if(V1(i)=='E')
        e=e+1;
    end
end
nn=0;
for i=1:len_V1
    if(V1(i)=='N')
        nn=nn+1;
    end
end
q=0;
for i=1:len_V1
    if(V1(i)=='Q')
        q=q+1;
    end
end
k=0;
for i=1:len_V1
    if(V1(i)=='K')
        k=k+1;
    end
end
h=0;
for i=1:len_V1
    if(V1(i)=='H')
        h=h+1;
    end
end
l=0;
for i=1:len_V1
    if(V1(i)=='L')
        l=l+1;
    end
end
u=0;
for i=1:len_V1
    if(V1(i)=='I')
        u=u+1;
    end
end
v=0;
for i=1:len_V1
    if(V1(i)=='V')
        v=v+1;
    end
end
aa=0;
for i=1:len_V1
    if(V1(i)=='A')
        aa=aa+1;
    end
end
m=0;
for i=1:len_V1
    if(V1(i)=='M')
        m=m+1;
    end
end
ff=0;
for i=1:len_V1
    if(V1(i)=='F')
        ff=ff+1;
    end
end
s=0;
for i=1:len_V1
    if(V1(i)=='S')
        s=s+1;
    end
end
y=0;
for i=1:len_V1
    if(V1(i)=='Y')
        y=y+1;
    end
end
t=0;
for i=1:len_V1
    if(V1(i)=='T')
        t=t+1;
    end
end
w=0;
for i=1:len_V1
    if(V1(i)=='W')
        w=w+1;
    end
end
pp=0;
for i=1:len_V1
    if(V1(i)=='P')
        pp=pp+1;
    end
end
g=0;
for i=1:len_V1
    if(V1(i)=='G')
        g=g+1;
    end
end
c=0;
for i=1:len_V1
    if(V1(i)=='C')
        c=c+1;
    end
end
% Number of bins in a statistical sequence
a1=0;
for i=1:len_V1-1
    if(V2(i)=='A'&&V2(i+1)=='A')
        a1=a1+1;
    end
end
a2=0;
for i=1:len_V1-1
    if(V2(i)=='A'&&V2(i+1)=='B' )
        a2=a2+1;
    end
end
a3=0;
for i=1:len_V1-1
    if(V2(i)=='A'&&V2(i+1)=='F')
        a3=a3+1;
    end
end
a4=0;
for i=1:len_V1-1
    if(V2(i)=='A'&&V2(i+1)=='P')
        a4=a4+1;
    end
end
a5=0;
for i=1:len_V1-1
    if(V2(i)=='A'&&V2(i+1)=='N')
        a5=a5+1;
    end
end
b1=0;
for i=1:len_V1-1
    if(V2(i)=='B'&&V2(i+1)=='A')
        b1=b1+1;
    end
end
b2=0;
for i=1:len_V1-1
    if(V2(i)=='B'&&V2(i+1)=='B')
        b2=b2+1;
    end
end
b3=0;
for i=1:len_V1-1
    if(V2(i)=='B'&&V2(i+1)=='F')
        b3=b3+1;
    end
end
b4=0;
for i=1:len_V1-1
    if(V2(i)=='B'&&V2(i+1)=='P')
        b4=b4+1;
    end
end
b5=0;
for i=1:len_V1-1
    if(V2(i)=='B'&&V2(i+1)=='N')
        b5=b5+1;
    end
end
f1=0;
for i=1:len_V1-1
    if(V2(i)=='F'&&V2(i+1)=='A')
        f1=f1+1;
    end
end
f2=0;
for i=1:len_V1-1
    if(V2(i)=='F'&&V2(i+1)=='B')
        f2=f2+1;
    end
end
f3=0;
for i=1:len_V1-1
    if(V2(i)=='F'&&V2(i+1)=='F')
        f3=f3+1;
    end
end
f4=0;
for i=1:len_V1-1
    if(V2(i)=='F'&&V2(i+1)=='P')
        f4=f4+1;
    end
end
f5=0;
for i=1:len_V1-1
    if(V2(i)=='F'&&V2(i+1)=='N')
        f5=f5+1;
    end
end
p1=0;
for i=1:len_V1-1
    if(V2(i)=='P'&&V2(i+1)=='A')
        p1=p1+1;
    end
end
p2=0;
for i=1:len_V1-1
    if(V2(i)=='P'&&V2(i+1)=='B')
        p2=p2+1;
    end
end
p3=0;
for i=1:len_V1-1
    if(V2(i)=='P'&&V2(i+1)=='F')
        p3=p3+1;
    end
end
p4=0;
for i=1:len_V1-1
    if(V2(i)=='P'&&V2(i+1)=='P')
        p4=p4+1;
    end
end
p5=0;
for i=1:len_V1-1
    if(V2(i)=='P'&&V2(i+1)=='N')
        p5=p5+1;
    end
end
n1=0;
for i=1:len_V1-1
    if(V2(i)=='N'&&V2(i+1)=='A')
        n1=n1+1;
    end
end
n2=0;
for i=1:len_V1-1
    if(V2(i)=='N'&&V2(i+1)=='B')
        n2=n2+1;
    end
end
n3=0;
for i=1:len_V1-1
    if(V2(i)=='N'&&V2(i+1)=='F')
        n3=n3+1;
    end
end
n4=0;
for i=1:len_V1-1
    if(V2(i)=='N'&&V2(i+1)=='P')
        n4=n4+1;
    end
end
n5=0;
for i=1:len_V1-1
    if(V2(i)=='N'&&V2(i+1)=='N')
        n5=n5+1;
    end
end

V3=zeros(1,25);
V3(1)=a/len_V1;
V3(2)=b/len_V1;
V3(3)=f/len_V1;
V3(4)=p/len_V1;
V3(5)=n/len_V1;

V3(6)=d/max(1,a);
V3(7)=e/max(1,a);
V3(8)=r/max(1,b);
V3(9)=h/max(1,b);
V3(10)=k/max(1,b);
V3(11)=w/max(1,f);
V3(12)=y/max(1,f);
V3(13)=ff/max(1,f);
V3(14)=s/max(1,p);
V3(15)=c/max(1,p);
V3(16)=m/max(1,p);
V3(17)=nn/max(1,p);
V3(18)=q/max(1,p);
V3(19)=t/max(1,p);
V3(20)=g/max(1,n);
V3(21)=aa/max(1,n);
V3(22)=v/max(1,n);
V3(23)=l/max(1,n);
V3(24)=u/max(1,n);
V3(25)=pp/max(1,n);


V4=zeros(1,25);
V4(1)=a1/max(1,a);
V4(2)=a2/max(1,a);
V4(3)=a3/max(1,a);
V4(4)=a4/max(1,a);
V4(5)=a5/max(1,a);
V4(6)=b1/max(1,b);
V4(7)=b2/max(1,b);
V4(8)=b3/max(1,b);
V4(9)=b4/max(1,b);
V4(10)=b5/max(1,b);
V4(11)=f1/max(1,f);
V4(12)=f2/max(1,f);
V4(13)=f3/max(1,f);
V4(14)=f4/max(1,f);
V4(15)=f5/max(1,f);
V4(16)=p1/max(1,p);
V4(17)=p2/max(1,p);
V4(18)=p3/max(1,p);
V4(19)=p4/max(1,p);
V4(20)=p5/max(1,p);
V4(21)=n1/max(1,n);
V4(22)=n2/max(1,n);
V4(23)=n3/max(1,n);
V4(24)=n4/max(1,n);
V4(25)=n5/max(1,n);

V=[V3,V4];

end