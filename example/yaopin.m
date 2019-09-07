clc;
w=[1.16 1.35 1.72 1.86 1.97 2.15 2.23 2.48 2.79 2.85 3.07 3.45 3.59 3.80 3.93 4.14 4.46 4.55 4.84 5.03];
r=[0.116 0.104 0.078 0.107 0.136 0.082 0.125 0.076 0.122 0.092 0.081 0.068 0.077 0.108 0.128 0.063 0.135 0.070 0.126 0.087];
y=[50.2 59.5 58.8 66.2 65.5 64.5 73.6 76.4 78.5 79.2 81.4 90.3 93.1 98.2 97.3 98.1 97.3 98.8 96.9 98.6];
p=[w;r];
t=[y];
[pn,minp,maxp,tn,mint,maxt]=premnmx(p,t);
  dx=[0,1;0,1];
net=newff(dx,[2,8,1],{'tansig','tansig','purelin'},'trainlm');
net.trainParam.show=1000;
net.trainParam.lr=0.01;
net.trainParam.goal=0.0001;
net.trainParam.epochs=20000;
[net,tr]=train(net,pn,tn);
an=sim(net,pn);
a=postmnmx(an,mint,maxt);
x=1:20;
figure(1);
plot(x,a,'r--o',x,y,'b--+');
legend('网络去除率','实际去除率');
xlabel('实验号');ylabel('去除率');
title('去除率学习和测试对比图');
pnew=[1.42 2.51 3.21 4.29 5.24 2.53 3.79;0.086 0.071 0.107 0.096 0.65 0.093 0.131];
pnewn=tramnmx(pnew,minp,maxp);
anewn=sim(net,pnewn);
anew=postmnmx(anewn,mint,maxt);
kyl=anew


