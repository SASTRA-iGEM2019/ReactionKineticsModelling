clc;
close all;
t=0:1:60;  %Reaction time
y0=[1,0.8,0,0]; %initial value of components
[t,x]= ode15s(@g, t, y0); %Calling function containing ODES and their solution
figure()
plot(x);
xlabel('Time (s)')
ylabel('Concentration (M)')
legend( 'CTS','miRNA', 'PBTS', 'OTS')

function dy= g(~,y)
kf1=0.1; %parameters for the reactions
kr1=0.01;
kf2=0.20;
kr2=0.01;

 dy(1)=kr1*y(3)-kf1*y(1)*y(2);  %equations for the reactions
 dy(2)=kr1*y(3)-kf1*y(1)*y(2);
 dy(3)=kf1*y(1)*y(2)+kr2*y(4)-kr1*y(3)-kf2*y(3);
 dy(4)=kf2*y(3)-kr2*y(4);
 dy=dy(:);
end