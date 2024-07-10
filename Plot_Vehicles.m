

figure;

% axis([-30,30,-30,30]);

hold on;

LENGTH_EGO=length(out.EgoCar_x);

for i=1:LENGTH_EGO

    plot(out.EgoCar_x(i),out.EgoCar_y(i),'bo');

    plot(out.Other_V_x(i),out.Other_V_y(i),'r*');

    pause(0.5)

end

hold off;







