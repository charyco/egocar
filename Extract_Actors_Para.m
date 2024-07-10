
Sc1=load('egoCar1.mat');

%从内存区域读入EgoCar的路径规划，将里面的数据分解为各个姿态信息


Sc2=Sc1.ans;

Position1=Sc1.ans.Position.Data;

LENGTH_POSITION=Sc1.ans.Position.Length;
x1=zeros(1,LENGTH_POSITION);
y1=zeros(1,LENGTH_POSITION);

x1(1,:)=Position1(1,1,:);
y1(1,:)=Position1(1,2,:);
z1(1,:)=Position1(1,3,:);

ActorID1= Sc1.ans.ActorID;
Yaw1 = Sc1.ans.Yaw;
Velocity1 = Sc1.ans.Velocity;
AngularVelocity1 = Sc1.ans.AngularVelocity;


%     'ActorID',egoActorID,...
%     'Position', [pos(1) pos(2) 0], ...
%     'Velocity', [vel(1) vel(2) 0], ...
%     'Roll', 0, ...
%     'Pitch', 0, ...
%     'Yaw', yaw, ...
%     'AngularVelocity', [0 0 yawRate]);






