function robotGraph = balancingPlot(x,y,phi,thetha,scale)

global balancing
% Matriz de rotación z
Rz=[cos(phi) -sin(phi) 0; sin(phi) cos(phi) 0; 0 0 1];
Ry=[cos(thetha), 0, sin(thetha); 0, 1, 0;-sin(thetha), 0, cos(thetha)]; %Matrix Rotation y axis

%%%%%%%%%%%%%%%%% Parte 1
robotPatch = Rz*Ry*balancing.parte1Vertices;
robotPatch(1,:) = robotPatch(1,:)*scale+x;
robotPatch(2,:) = robotPatch(2,:)*scale+y;
robotPatch(3,:) = robotPatch(3,:)*scale;

robotGraph(1) = patch('Faces',balancing.parte1Faces,'Vertices',robotPatch','FaceColor',[0.4 0.3 0.1],'EdgeColor','none');%estructura

%%%%%%%%%%%%%%%%% Parte 2
robotPatch = Rz*Ry*balancing.parte2Vertices;
robotPatch(1,:) = robotPatch(1,:)*scale+x;
robotPatch(2,:) = robotPatch(2,:)*scale+y;
robotPatch(3,:) = robotPatch(3,:)*scale;

robotGraph(2) = patch('Faces',balancing.parte2Faces,'Vertices',robotPatch','FaceColor',[0.4 0.5 0.5],'EdgeColor','none');%motores

%%%%%%%%%%%%%%%%% Parte 3
robotPatch = Rz*Ry*balancing.parte3Vertices;
robotPatch(1,:) = robotPatch(1,:)*scale+x;
robotPatch(2,:) = robotPatch(2,:)*scale+y;
robotPatch(3,:) = robotPatch(3,:)*scale;

robotGraph(3) = patch('Faces',balancing.parte3Faces,'Vertices',robotPatch','FaceColor','k','EdgeColor','none');%ruedas

end