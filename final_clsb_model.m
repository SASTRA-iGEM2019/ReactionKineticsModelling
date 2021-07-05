clc;
close all;
t=0:1:7200;  %Reaction time
y0=[100*10^-9,0,0,0]; %initial value of components
[t,x]= ode15s(@g, t, y0); %Calling function containing ODES and their solution
figure()
plot(x);
xlabel('Time (s)')
ylabel('Concentration (M)')
legend('miRNA', 'CTS', 'OTS', 'GFP')

function dy= g(~,y)
kcomplexcts_b=10^5; %parameters for the reactions
ktranscription=1.1*10^-3;
ktranslation=1.7*10^-2;
kdecay=3*10^-4;

 dy(1)=-kcomplexcts_b*y(1)*y(2)-kdecay*y(1);  %equations for the reactions
 dy(2)=ktranscription*(120*10^-9)-kcomplexcts_b*y(1)*y(2)-kdecay*y(2);
 dy(3)=kcomplexcts_b*y(1)*y(2)-kdecay*y(3);
 dy(4)=ktranslation*y(3);
 dy=dy(:);
end