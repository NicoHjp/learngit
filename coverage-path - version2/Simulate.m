function path = Simulate(obstacle,map)

point=map.start;
%用于存储路径
path=point;
%findFlag用于判断while循环是否结束
findFlag=false;

%================2.重复以下过程======================
while ~findFlag
  [isFind,~]=isopen(map.goal,path);
  if isFind
      disp('Find Goal!');
      findFlag=true;
      break;
  end
  point1=up(point);
  point3=left(point);
  point4=right(point);
  point2=down(point);
  rightflag=1;
  [haveleftgo,~]=isopen(point3,path);
  [haverightgo,~]=isopen(point4,path);
  [haveupgo,~]=isopen(point1,path);
  [havedowngo,~]=isopen(point2,path);
  if ~haveleftgo 
      if ~isObstacle(left(point),obstacle)
        new_point=point3;
        path=[path;new_point];
        point=new_point;    %%左边存在未覆盖的，先覆盖左边
      else
        if ~haveupgo
           if ~isObstacle(up(point),obstacle)
            new_point=point1;
            path=[path;new_point];
            point=new_point;
           else
               if ~havedowngo && haverightgo
               new_point=point2;
               path=[path;new_point];
               point=new_point;                   
               else 
               new_point=point4;  %向右走
               %new_point2=down(new_point);%向下走
               path=[path;new_point;new_point];
               point=new_point;
               end
           end
        else
          if ~isObstacle(down(point),obstacle)&&~havedowngo
            new_point=point2;
            path=[path;new_point];
            point=new_point;
          elseif rightflag==1
            new_point=point4;  %向右走
            %new_point2=up(new_point); %向上走
            path=[path;new_point;new_point];
            point=new_point;
          end
       end
     end
  else
    if ~haveupgo
           if ~isObstacle(up(point),obstacle)
            new_point=point1;
            path=[path;new_point];
            point=new_point;
           else
               if ~havedowngo && ~isObstacle(down(point),obstacle)
               new_point=point2;
               path=[path;new_point];
               point=new_point;                   
               else 
               new_point=point4;  %向右走
               %new_point2=down(new_point);%向下走
               path=[path;new_point;new_point];
               point=new_point;
               end
           end
    else
        if ~isObstacle(down(point),obstacle)&&~havedowngo
            new_point=point2;
            path=[path;new_point];
            point=new_point;
        elseif rightflag==1
            new_point=point4;  %向右走
            %new_point2=up(new_point); %向上走
            path=[path;new_point;new_point];
            point=new_point;
        end
    end
  end
  plot_map(map,obstacle,path); 
end



