%����������ͼ�Լ�close�ڵ��open�ڵ�
function plot_map(map,obstacle,path)
%�����ϰ��㣬��ʼ�㣬�յ�
if length(obstacle)>=1
    plot(obstacle(:,1),obstacle(:,2),'sk','MarkerFaceColor','k');hold on;
end
plot(map.start(1),map.start(2),'*r');hold on;
plot(map.goal(1),map.goal(2),'*r');hold on;

axis equal;
axis([-1.5,map.XYMAX+2.5,-1.5,map.XYMAX+2.5]);

%��������
for i =1:map.XYMAX+3
    line([-0.5,map.XYMAX+1.5],[i-1.5,i-1.5]); %����
    %line([x1,x2],[y1,y2]),����(x1,y1)��(x2,y2)�����ֱ��
end
for j = 1:map.XYMAX+3
   line([j-1.5,j-1.5],[-0.5,map.XYMAX+1.5]);  %����
end
pause(0.1);
title('��ɫΪ�ϰ���ͱ߽�㣬��ɫΪ����·��������Ϊpath');

%���ƽڵ�
plot(path(:,1),path(:,2),'sg','MarkerFaceColor','g');
hold on;

%����path�ڽű��ļ���
end

