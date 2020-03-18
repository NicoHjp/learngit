%绘制整个地图以及close节点和open节点
function plot_map(map,obstacle,path)
%画出障碍点，起始点，终点
if length(obstacle)>=1
    plot(obstacle(:,1),obstacle(:,2),'sk','MarkerFaceColor','k');hold on;
end
plot(map.start(1),map.start(2),'*r');hold on;
plot(map.goal(1),map.goal(2),'*r');hold on;

axis equal;
axis([-1.5,map.XYMAX+2.5,-1.5,map.XYMAX+2.5]);

%绘制网格
for i =1:map.XYMAX+3
    line([-0.5,map.XYMAX+1.5],[i-1.5,i-1.5]); %横轴
    %line([x1,x2],[y1,y2]),画过(x1,y1)和(x2,y2)两点的直线
end
for j = 1:map.XYMAX+3
   line([j-1.5,j-1.5],[-0.5,map.XYMAX+1.5]);  %纵轴
end
pause(0.1);
title('黑色为障碍点和边界点，绿色为工作路径，连线为path');

%绘制节点
plot(path(:,1),path(:,2),'sg','MarkerFaceColor','g');
hold on;

%绘制path在脚本文件里
end

