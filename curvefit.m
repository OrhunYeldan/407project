data = xlsread('eðim0 hýz5','A1:A65'); % excel dosyasýnýn adýný deðiþtirmeniz gerek. Bir de 'A1:A65' yerine excelde import edeceðiniz sýnýrlarý girin
                                           
                                                                                     
time = 1:65; %benim 65 satýrým vardý. sizinkine göre deðiþtirin
curve = polyfit(time,data',11); % sondaki 4 elde edilecek polinomun order ý. Azaltýp artýrarak keyfinize göre beklediðinize en yakýn curve u bulabilirsiniz.
                                  %eðim0 hýz5 için order=7, eðim0 hýz10 için order=4
                                 
%Aþaðýyý deðiþtirmeye gerek yok
y2 = polyval(curve,time);
plot(time,y2,'LineWidth',2);
hold on;
plot(time, data,'o'); 
grid on;
xlabel('time(seconds)');
ylabel('heart rate');
title('Heart Rate vs Time for 5kph with 15 Degree Slope');
