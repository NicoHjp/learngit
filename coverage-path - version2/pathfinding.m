%��ʼ�ű��ļ����涨���ϰ��㣬�߽�㣬���յ�͵�ͼ��ģ
clear;
clc;  %ǰ�����ǳ�ʼ��
disp('Simulating start !')
map.XYMAX=20; %��ͼ�ĳ��Ϳ�
map.start=[1,1]; %��ʼ�� ע������ڵ�ͼ��Χ��
map.goal=[20,10]; %Ŀ��� ע������ڵ�ͼ��Χ��
obstacle=GetBoundary(map); %�õ��߽�����
%nObstacle=100; %�ڵ�ͼ������������ɸ��ϰ���
obstacle=BuildObstacle(obstacle); %�����ϰ���
% obstacle=[obstacle;1,2;2,2;2,1] %·�����������
path = Simulate(obstacle,map); %����Simulate�㷨

%����·��

if length(path)>=1
    plot(path(:,1),path(:,2),'-c','LineWidth',5);hold on;
end

