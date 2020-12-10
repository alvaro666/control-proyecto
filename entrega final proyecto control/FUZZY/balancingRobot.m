function balancingRobot

parte1 = stlread('estructura.stl');
parte2 = stlread('motor.stl');
parte3 = stlread('rueda.stl');

global balancing

balancing.parte1Vertices = parte1.vertices';
balancing.parte1Faces = parte1.faces;

balancing.parte2Vertices = parte2.vertices';
balancing.parte2Faces = parte2.faces;

balancing.parte3Vertices = parte3.vertices';
balancing.parte3Faces = parte3.faces;


end