function flag=isObstacle(m,obstacle)
%�жϽڵ�m�Ƿ�Ϊ�ϰ��㣬����Ǿͷ���1�����Ǿͷ���0
for io=1:length(obstacle(:,1))
    if isequal(obstacle(io,:),m(1:2))
        flag=true;
        return;
    end
end
flag=false;
end