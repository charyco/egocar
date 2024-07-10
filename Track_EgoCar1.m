
Sc1=load('egoCar1.mat');


Position1=Sc1.ans.Position.Data;

LENGTH_POSITION=Sc1.ans.Position.Length;
x1=zeros(1,LENGTH_POSITION);
y1=zeros(1,LENGTH_POSITION);

x1(1,:)=Position1(1,1,:);
y1(1,:)=Position1(1,2,:);



plot(x1,y1);





