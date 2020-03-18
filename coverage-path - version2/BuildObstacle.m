function obstacle=BuildObstacle(obstacle)
ob=[];
for ia=1:4
    for ib=6:10
        ob=[ob;[ia ib]];  %%生成一个矩形
    end
end

for ic=8:14
    for id=1:2
        ob=[ob;[ic id]];
    end
end

for ie=10:12
    for ig=13:14
        ob=[ob;[ie ig]];
    end
end

obstacle=[obstacle;ob];
end