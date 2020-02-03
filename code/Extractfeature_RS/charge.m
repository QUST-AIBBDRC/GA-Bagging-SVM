function V=charge(V1)
len_V1=length(V1);
% Dividing proteins into three categories according to polarity
V2=zeros(1,len_V1);
for i=1:len_V1
    if (V1(i)=='K' || V1(i)=='R' )
            V2(i)='A';
        elseif(V1(i)=='A' || V1(i)=='V' ||V1(i)=='N'  || V1(i)=='C' || V1(i)=='Q' || V1(i)=='G' || V1(i)=='H'|| V1(i)=='I'  || V1(i)=='L' || V1(i)=='M' || V1(i)=='F' || V1(i)=='P' || V1(i)=='S' ||V1(i)=='T' || V1(i)=='W' || V1(i)=='Y')
           V2(i)='B';
        elseif(V1(i)=='D' ||V1(i)=='E'  )
           V2(i)='C';
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
c=0;
for i=1:len_V1
    if( V2(i)=='C')
        c=c+1;
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
n=0;
for i=1:len_V1
    if(V1(i)=='N')
        n=n+1;
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
f=0;
for i=1:len_V1
    if(V1(i)=='F')
        f=f+1;
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
p=0;
for i=1:len_V1
    if(V1(i)=='P')
        p=p+1;
    end
end
g=0;
for i=1:len_V1
    if(V1(i)=='G')
        g=g+1;
    end
end
cc=0;
for i=1:len_V1
    if(V1(i)=='C')
        cc=cc+1;
    end
end

% The number of bins in a statistical sequence
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
    if(V2(i)=='A'&&V2(i+1)=='C')
        a3=a3+1;
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
    if(V2(i)=='B'&&V2(i+1)=='C')
        b3=b3+1;
    end
end
c1=0;
for i=1:len_V1-1
    if(V2(i)=='C'&&V2(i+1)=='A')
        c1=c1+1;
    end
end
c2=0;
for i=1:len_V1-1
    if(V2(i)=='C'&&V2(i+1)=='B')
        c2=c2+1;
    end
end
c3=0;
for i=1:len_V1-1
    if(V2(i)=='C'&&V2(i+1)=='C')
        c3=c3+1;
    end
end

V3=zeros(1,3);  
V3(1)=a/len_V1;
V3(2)=b/len_V1;
V3(3)=c/len_V1;

V4=zeros(1,20); 
V4(1)=k/max(1,a);
V4(2)=r/max(1,a);
V4(3)=aa/max(1,b);
V4(4)=v/max(1,b);
V4(5)=n/max(1,b);
V4(6)=cc/max(1,b);
V4(7)=q/max(1,b);
V4(8)=g/max(1,b);
V4(9)=h/max(1,b);
V4(10)=u/max(1,b);
V4(11)=l/max(1,b);
V4(12)=m/max(1,b);
V4(13)=f/max(1,b);
V4(14)=p/max(1,b);
V4(15)=s/max(1,b);
V4(16)=t/max(1,b);
V4(17)=w/max(1,b);
V4(18)=y/max(1,b);
V4(19)=d/max(1,c);
V4(20)=e/max(1,c);

V5=zeros(1,9);   
V5(1)=a1/max(1,a);
V5(2)=a2/max(1,a);
V5(3)=a3/max(1,a);
V5(4)=b1/max(1,b);
V5(5)=b2/max(1,b);
V5(6)=b3/max(1,b);
V5(7)=c1/max(1,c);
V5(8)=c2/max(1,c);
V5(9)=c3/max(1,c);

A=zeros(1,len_V1);
B=zeros(1,len_V1);
C=zeros(1,len_V1);
for i=1:len_V1
    if V2(i)=='A'
        A(i)=i;
    elseif V2(i)=='B'
        B(i)=i ;
    elseif V2(i)=='C'
         C(i)=i;
    end
end

AA=sum(A);
BB=sum(B);
CC=sum(C);
n=len_V1*(len_V1-1);
V6=[AA/n,BB/n,CC/n];


V=[V3,V4,V5];

end