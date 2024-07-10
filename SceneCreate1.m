function [scenario, egoVehicle] = SceneCreate1()
scenario = drivingScenario;

% Add all road segments
roadCenters =  [  30 35 0;
    30 -35 0];
headings = [-90;NaN];
laneSpecification = lanespec(2);
road(scenario, roadCenters, 'Heading', headings, 'Lanes', laneSpecification, 'Name', 'Road');

roadCenters = [  27 -15
    10 10
    0 0]';
laneSpecification = lanespec(2);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road1');

% Add the ego vehicle
egoVehicle = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [-14 8 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car');
waypoints = [-14.1637 8.1057 0;
    22.5000 8.4000 0;
    29 12.3000 0;
    28.9000 34.8000 0;];
speed = [28;28;28;28];
yaw =  [0;0;90;90.382];
trajectory(egoVehicle, waypoints, speed, 'Yaw', yaw);

% Add the non-ego actors
truck = vehicle(scenario, ...
    'ClassID', 2, ...
    'Length', 8.2, ...
    'Width', 2.5, ...
    'Height', 3.5, ...
    'Position', [-2 -27.1 0], ...
    'Mesh', driving.scenario.truckMesh, ...
    'Name', 'Truck');
waypoints = [31 -34.3 0;
    31.2 -29.4 0;
    31.4 5.2 0;
    27.4 11.9 0;
    -15 11.8 0];
speed = [30;30;30;30;30];
yaw =  [90;90;90;180;180];
trajectory(truck, waypoints, speed, 'Yaw', yaw);
plot(scenario,'Waypoints','on','RoadCenters','on')
while advance(scenario)
    pause(0.1)
end
