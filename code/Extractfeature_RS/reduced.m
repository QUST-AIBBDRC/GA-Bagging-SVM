function V=reduced(seq1)
seq1 = strrep(seq1,'X',''); 
seq1 = strrep(seq1,'Z',''); 
% Input sequences, output reduced sequences based on acidity
len=length(seq1);
% Classify proteins into 3 groups
seq2=zeros(1,len);
for i=1:len
    if (seq1(i)=='D' || seq1(i)=='E' )
            seq2(i)='A';
        elseif(seq1(i)=='K' || seq1(i)=='H' ||seq1(i)=='R' )
           seq2(i)='K';
        elseif(seq1(i)=='A' || seq1(i)=='C' ||seq1(i)=='F' ||seq1(i)=='G' || seq1(i)=='I' ||seq1(i)=='L' ||seq1(i)=='M' || seq1(i)=='N' ||seq1(i)=='P'||seq1(i)=='Q' || seq1(i)=='S' ||seq1(i)=='T' ||seq1(i)=='V' || seq1(i)=='W' ||seq1(i)=='Y'  )
           seq2(i)='N';
    end
end
a=0;
for i=1:len
    if( seq2(i)=='L')
        a=a+1;
    end
end
k=0;
for i=1:len
    if(seq2(i)=='K')
        k=k+1;
    end
end
n=0;
for i=1:len
    if( seq2(i)=='N')
        n=n+1;
    end
end
a1=0;
for i=1:len-1
    if(seq2(i)=='A'&&seq2(i+1)=='A')
        a1=a1+1;
    end
end
a2=0;
for i=1:len-1
    if(seq2(i)=='A'&&seq2(i+1)=='K' )
        a2=a2+1;
    end
end
a3=0;
for i=1:len-1
    if(seq2(i)=='A'&&seq2(i+1)=='N')
        a3=a3+1;
    end
end
k3=0;
for i=1:len-1
    if(seq2(i)=='K'&&seq2(i+1)=='N')
        k3=k3+1;
    end
end
k1=0;
for i=1:len-1
    if(seq2(i)=='K'&&seq2(i+1)=='K')
        k1=k1+1;
    end
end
k2=0;
for i=1:len-1
    if(seq2(i)=='K'&&seq2(i+1)=='A')
        k2=k2+1;
    end
end
n1=0;
for i=1:len-1
    if(seq2(i)=='N'&&seq2(i+1)=='N')
        n1=n1+1;
    end
end
n2=0;
for i=1:len-1
    if(seq2(i)=='N'&&seq2(i+1)=='A' )
        n2=n2+1;
    end
end
n3=0;
for i=1:len-1
    if(seq2(i)=='N'&&seq2(i+1)=='K')
        n3=n3+1;
    end
end
r=0;
for i=1:len
    if(seq1(i)=='R')
        r=r+1;
    end
end
d=0;
for i=1:len
    if(seq1(i)=='D')
        d=d+1;
    end
end
e=0;
for i=1:len
    if(seq1(i)=='E')
        e=e+1;
    end
end
nn=0;
for i=1:len
    if(seq1(i)=='N')
        nn=nn+1;
    end
end
q=0;
for i=1:len
    if(seq1(i)=='Q')
        q=q+1;
    end
end
kk=0;
for i=1:len
    if(seq1(i)=='K')
        kk=kk+1;
    end
end
h=0;
for i=1:len
    if(seq1(i)=='H')
        h=h+1;
    end
end
l=0;
for i=1:len
    if(seq1(i)=='L')
        l=l+1;
    end
end
u=0;
for i=1:len
    if(seq1(i)=='I')
        u=u+1;
    end
end
v=0;
for i=1:len
    if(seq1(i)=='V')
        v=v+1;
    end
end
aa=0;
for i=1:len
    if(seq1(i)=='A')
        aa=aa+1;
    end
end
m=0;
for i=1:len
    if(seq1(i)=='M')
        m=m+1;
    end
end
f=0;
for i=1:len
    if(seq1(i)=='F')
        f=f+1;
    end
end
s=0;
for i=1:len
    if(seq1(i)=='S')
        s=s+1;
    end
end
y=0;
for i=1:len
    if(seq1(i)=='Y')
        y=y+1;
    end
end
t=0;
for i=1:len
    if(seq1(i)=='T')
        t=t+1;
    end
end
w=0;
for i=1:len
    if(seq1(i)=='W')
        w=w+1;
    end
end
p=0;
for i=1:len
    if(seq1(i)=='P')
        p=p+1;
    end
end
g=0;
for i=1:len
    if(seq1(i)=='G')
        g=g+1;
    end
end
c=0;
for i=1:len
    if(seq1(i)=='C')
        c=c+1;
    end
end



% Construct vector
V1=zeros(1,3);
V1(1)=a/len;
V1(2)=k/len;
V1(2)=n/len;

V3=zeros(1,20);
V3(1)=d/max(1,a);
V3(2)=e/max(1,a);
V3(3)=kk/max(1,k);
V3(4)=h/max(1,k);
V3(5)=r/max(1,k);
V3(6)=aa/max(1,n);
V3(7)=c/max(1,n);
V3(8)=f/max(1,n);
V3(9)=g/max(1,n);
V3(10)=u/max(1,n);
V3(11)=l/max(1,n);
V3(12)=m/max(1,n);
V3(13)=nn/max(1,n);
V3(14)=p/max(1,n);
V3(15)=q/max(1,n);
V3(16)=s/max(1,n);
V3(17)=t/max(1,n);
V3(18)=v/max(1,n);
V3(19)=w/max(1,n);
V3(20)=y/max(1,n);
% Construct vector   
V4=zeros(1,9);
V4(1)=a1/(a+1);
V4(2)=a2/(a+1);
V4(3)=a3/(a+1);
V4(4)=k1/(k+1);
V4(5)=k2/(k+1);
V4(6)=k3/(k+1);
V4(7)=n1/(n+1);
V4(8)=n2/(n+1);
V4(9)=n3/(n+1);



V=[V1,V3,V4];

end