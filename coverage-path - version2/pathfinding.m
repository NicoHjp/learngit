%起始脚本文件，规定了障碍点，边界点，起终点和地图规模
clear;
clc;  %前两行是初始化
disp('Simulating start !')
map.XYMAX=20; %地图的长和宽
map.start=[1,1]; %起始点 注意必须在地图范围内
map.goal=[20,10]; %目标点 注意必须在地图范围内
obstacle=GetBoundary(map); %得到边界数据
%nObstacle=100; %在地图中随机加入若干个障碍物
obstacle=BuildObstacle(obstacle); %生成障碍物
% obstacle=[obstacle;1,2;2,2;2,1] %路被封死的情况
path = Simulate(obstacle,map); %调用Simulate算法

%画出路径

if length(path)>=1
    plot(path(:,1),path(:,2),'-c','LineWidth',5);hold on;
end

