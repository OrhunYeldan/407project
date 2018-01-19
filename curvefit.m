data = xlsread('e�im0 h�z5','A1:A65'); % excel dosyas�n�n ad�n� de�i�tirmeniz gerek. Bir de 'A1:A65' yerine excelde import edece�iniz s�n�rlar� girin
                                           
                                                                                     
time = 1:65; %benim 65 sat�r�m vard�. sizinkine g�re de�i�tirin
curve = polyfit(time,data',11); % sondaki 4 elde edilecek polinomun order �. Azalt�p art�rarak keyfinize g�re bekledi�inize en yak�n curve u bulabilirsiniz.
                                  %e�im0 h�z5 i�in order=7, e�im0 h�z10 i�in order=4
                                 
%A�a��y� de�i�tirmeye gerek yok
y2 = polyval(curve,time);
plot(time,y2,'LineWidth',2);
hold on;
plot(time, data,'o'); 
grid on;
xlabel('time(seconds)');
ylabel('heart rate');
title('Heart Rate vs Time for 5kph with 15 Degree Slope');
