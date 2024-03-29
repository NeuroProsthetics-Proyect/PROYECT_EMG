clc; clear; close all;

M = table2array(readtable('Sujeto_6.csv'));

fs = 100;
T = 1/fs;
% L = length(M);

EMG_1 = M(:,2);
EMG_2 = M(:,3);
EMG_3 = M(:,4);
Trigger =M(:,5);

fc = 1;
[b,a] = butter(4, fc/(fs/2),'low');

EMG_Filtro1 = filter(b,a,EMG_1)*3;
EMG_Filtro2 = filter(b,a,EMG_2);
EMG_Filtro3 = filter(b,a,EMG_3);

Time = (-1:T:4-T)';
c = (0:.34:9)';
EMG1_izq = [];
EMG1_der = [];
EMG1_arriba = [];
EMG2_izq = [];
EMG2_der = [];
EMG2_arriba = [];
EMG3_izq = [];
EMG3_der = [];
EMG3_arriba = [];
% EMG1_izqNor = [];
% EMG1_derNor = [];
% EMG1_arribaNor = [];
% EMG2_izqNor = [];
% EMG2_derNor = [];
% EMG2_arribaNor = [];
% EMG3_izqNor = [];
% EMG3_derNor = [];
% EMG3_arribaNor = [];
x2 = [Time; flipud(Time)];


%%
Temp = find(Trigger == 601);
for n = 1:length(Temp)
    EMG1_izq(:,n) = [EMG_Filtro1(Temp(n,1)-100:Temp(n,1)+399)];
end
x = mean(EMG1_izq(25:75,:));
EMG1_izq = EMG1_izq-x;
% EMG1_izqNor = EMG1_izq/max(EMG1_izq,[],'all');

EMG1mean_izq = mean(EMG1_izq,2);
EMG1_std_izq = std(EMG1_izq,0,2);
% EMG1mean_izqNor = mean(EMG1_izqNor,2);
% EMG1_std_izqNor = std(EMG1_izqNor,0,2);

Temp = find(Trigger == 701);
for n = 1:length(Temp)
    EMG1_der(:,n) = [EMG_Filtro1(Temp(n,1)-100:Temp(n,1)+399)];
end
x = mean(EMG1_der(25:75,:));
EMG1_der = EMG1_der-x;
% EMG1_derNor = EMG1_der/max(EMG1_der,[],'all');

EMG1mean_der = mean(EMG1_der,2);
EMG1_std_der = std(EMG1_der,0,2);
% EMG1mean_derNor = mean(EMG1_derNor,2);
% EMG1_std_derNor = std(EMG1_derNor,0,2);

Temp = find(Trigger == 801);
for n = 1:length(Temp)
    EMG1_arriba(:,n) = [EMG_Filtro1(Temp(n,1)-100:Temp(n,1)+399)];
end
x = mean(EMG1_arriba(25:75,:));
EMG1_arriba = EMG1_arriba-x;
% EMG1_arribaNor = EMG1_arriba/max(EMG1_arriba,[],'all');

EMG1mean_arriba = mean(EMG1_arriba,2);
EMG1_std_arriba = std(EMG1_arriba,0,2);
% EMG1mean_arribaNor = mean(EMG1_arribaNor,2);
% EMG1_std_arribaNor = std(EMG1_arribaNor,0,2);
%%
Temp = find(Trigger == 601);
for n = 1:length(Temp)
    EMG2_izq(:,n) = [EMG_Filtro2(Temp(n,1)-100:Temp(n,1)+399)];
end
x = mean(EMG2_izq(25:75,:));
EMG2_izq = EMG2_izq-x;
% EMG2_izqNor = EMG2_izq/max(EMG2_izq,[],'all');

EMG2mean_izq = mean(EMG2_izq,2);
EMG2_std_izq = std(EMG2_izq,0,2);
% EMG2mean_izqNor = mean(EMG2_izqNor,2);
% EMG2_std_izqNor = std(EMG2_izqNor,0,2);

Temp = find(Trigger == 701);
for n = 1:length(Temp)
    EMG2_der(:,n) = [EMG_Filtro2(Temp(n,1)-100:Temp(n,1)+399)];
end
x = mean(EMG2_der(25:75,:));
EMG2_der = EMG2_der-x;
% EMG2_derNor = EMG2_der/max(EMG2_der,[],'all');

EMG2mean_der = mean(EMG2_der,2);
EMG2_std_der = std(EMG2_der,0,2);
% EMG2mean_derNor = mean(EMG2_derNor,2);
% EMG2_std_derNor = std(EMG2_derNor,0,2);

Temp = find(Trigger == 801);
for n = 1:length(Temp)
    EMG2_arriba(:,n) = [EMG_Filtro2(Temp(n,1)-100:Temp(n,1)+399)];
end
x = mean(EMG2_arriba(25:75,:));
EMG2_arriba = EMG2_arriba-x;
% EMG2_arribaNor = EMG2_arriba/max(EMG2_arriba,[],'all');

EMG2mean_arriba = mean(EMG2_arriba,2);
EMG2_std_arriba = std(EMG2_arriba,0,2);
% EMG2mean_arribaNor = mean(EMG2_arribaNor,2);
% EMG2_std_arribaNor = std(EMG2_arribaNor,0,2);
%%
Temp = find(Trigger == 601);
for n = 1:length(Temp)
    EMG3_izq(:,n) = [EMG_Filtro3(Temp(n,1)-100:Temp(n,1)+399)];
end
x = mean(EMG3_izq(25:75,:));
EMG3_izq = EMG3_izq-x;
% EMG3_izqNor = EMG3_izq/max(EMG3_izq,[],'all');

EMG3mean_izq = mean(EMG3_izq,2);
EMG3_std_izq = std(EMG3_izq,0,2);
% EMG3mean_izqNor = mean(EMG3_izqNor,2);
% EMG3_std_izqNor = std(EMG3_izqNor,0,2);



Temp = find(Trigger == 701);
for n = 1:length(Temp)
    EMG3_der(:,n) = [EMG_Filtro3(Temp(n,1)-100:Temp(n,1)+399)];
end
x = mean(EMG3_der(25:75,:));
EMG3_der = EMG3_der-x;
% EMG3_derNor = EMG3_der/max(EMG3_der,[],'all');

EMG3mean_der = mean(EMG3_der,2);
EMG3_std_der = std(EMG3_der,0,2);
% EMG3mean_derNor = mean(EMG3_derNor,2);
% EMG3_std_derNor = std(EMG3_derNor,0,2);

Temp = find(Trigger == 801);
for n = 1:length(Temp)
    EMG3_arriba(:,n) = [EMG_Filtro3(Temp(n,1)-100:Temp(n,1)+399)];
end
x = mean(EMG3_arriba(25:75,:));
EMG3_arriba = EMG3_arriba-x;
% EMG3_arribaNor = EMG3_arriba/max(EMG3_arriba,[],'all');

EMG3mean_arriba = mean(EMG3_arriba,2);
EMG3_std_arriba = std(EMG3_arriba,0,2);
% EMG3mean_arribaNor = mean(EMG3_arribaNor,2);
% EMG3_std_arribaNor = std(EMG3_arribaNor,0,2);
%% En este bloque se generan las 9 graficas de los promedios de todas 
% las repeticiones. 
figure
subplot(331)
inBetween = [EMG1mean_izq - EMG1_std_izq; flipud(EMG1mean_izq + EMG1_std_izq)];
fill(x2, inBetween, 'b');
alpha(.4)
hold on
title('Pectoral')
%plot(Time,EMG1_izq, 'color' , [0.7529 0.7529 0.7529])
plot(Time, EMG1mean_izq,'b', 'LineWidth',1.5)
plot(Time, EMG1mean_izq + EMG1_std_izq,'b', 'LineWidth',1.5)
plot(Time, EMG1mean_izq - EMG1_std_izq,'b', 'LineWidth',1.5)
%set(gca,'FontName','times','Fontsize',14)
ft = 'Times'; 
set(gca, 'FontName', ft,'Fontsize',14)
%xlabel('\itTiempo (seg)\rm');
ylabel('\itIzquierda\rm');
hold off
xline(0, '--', 'Inicio','Fontsize',14, 'LineWidth',2)
xline(3, '--', 'Fin','Fontsize',14, 'LineWidth',2)
ylim([0 300])
xlim([-1 4])


subplot(334)
inBetween = [EMG1mean_der - EMG1_std_der; flipud(EMG1mean_der + EMG1_std_der)];
fill(x2, inBetween, 'r');
alpha(.4)
hold on
%plot(Time,EMG1_der,'color' , [0.7529 0.7529 0.7529])
plot(Time, EMG1mean_der,'r', 'LineWidth',1.5)
plot(Time, EMG1mean_der + EMG1_std_der,'r', 'LineWidth',1.5)
plot(Time, EMG1mean_der - EMG1_std_der,'r', 'LineWidth',1.5)
ft = 'Times'; 
set(gca, 'FontName', ft,'Fontsize',14)
%xlabel('\itTiempo (seg)\rm');
ylabel('\itDerecha\rm');
hold off
xline(0, '--', 'Inicio','Fontsize',14, 'LineWidth',2)
xline(3, '--', 'Fin','Fontsize',14, 'LineWidth',2)
ylim([0 300])
xlim([-1 4])

subplot(337)
inBetween = [EMG1mean_arriba - EMG1_std_arriba; flipud(EMG1mean_arriba + EMG1_std_arriba)];
fill(x2, inBetween, 'g');
alpha(.4)
hold on
%plot(Time,EMG1_arriba,'color' , [0.5 0.5 0.5])
ft = 'Times'; 
set(gca, 'FontName', ft,'Fontsize',14)
plot(Time, EMG1mean_arriba,'g', 'LineWidth',1.5)
plot(Time, EMG1mean_arriba + EMG1_std_arriba,'g', 'LineWidth',1.5)
plot(Time, EMG1mean_arriba - EMG1_std_arriba,'g', 'LineWidth',1.5)
ft = 'Times'; 
set(gca, 'FontName', ft,'Fontsize',14)
xlabel('\itTiempo (seg)\rm');
ylabel('\itArriba\rm');
hold off
xline(0, '--', 'Inicio','Fontsize',14, 'LineWidth',2)
xline(3, '--', 'Fin','Fontsize',14, 'LineWidth',2)
ylim([0 300])
xlim([-1 4])

subplot(332)
inBetween = [EMG2mean_izq - EMG2_std_izq; flipud(EMG2mean_izq + EMG2_std_izq)];
fill(x2, inBetween, 'b');
alpha(.4)
hold on
title('Trapecio')
%plot(Time,EMG2_izq,'color' , [0.5 0.5 0.5])
plot(Time, EMG2mean_izq,'b', 'LineWidth',1.5)
plot(Time, EMG2mean_izq + EMG2_std_izq,'b', 'LineWidth',1.5)
plot(Time, EMG2mean_izq - EMG2_std_izq,'b', 'LineWidth',1.5)
ft = 'Times'; 
set(gca, 'FontName', ft,'Fontsize',14)
%xlabel('\itTiempo (seg)\rm');
%ylabel('\itArriba\rm');
hold off
xline(0, '--', 'Inicio','Fontsize',14, 'LineWidth',2)
xline(3, '--', 'Fin','Fontsize',14, 'LineWidth',2)
ylim([0 300])
xlim([-1 4])

subplot(335)
inBetween = [EMG2mean_der - EMG2_std_der; flipud(EMG2mean_der + EMG2_std_der)];
fill(x2, inBetween, 'r');
alpha(.4)
hold on
%plot(Time,EMG2_der,'color' , [0.5 0.5 0.5])
plot(Time, EMG2mean_der,'r', 'LineWidth',1.5)
plot(Time, EMG2mean_der + EMG2_std_der,'r', 'LineWidth',1.5)
plot(Time, EMG2mean_der - EMG2_std_der,'r', 'LineWidth',1.5)
ft = 'Times'; 
set(gca, 'FontName', ft,'Fontsize',14)
%xlabel('\itTiempo (seg)\rm');
%ylabel('\itArriba\rm');
hold off
xline(0, '--', 'Inicio','Fontsize',14, 'LineWidth',2)
xline(3, '--', 'Fin','Fontsize',14, 'LineWidth',2)
ylim([0 300])
xlim([-1 4])

subplot(338)
inBetween = [EMG2mean_arriba - EMG2_std_arriba; flipud(EMG2mean_arriba + EMG2_std_arriba)];
fill(x2, inBetween, 'g');
alpha(.4)
hold on
%plot(Time,EMG2_arriba,'color' , [0.5 0.5 0.5])
plot(Time, EMG2mean_arriba,'g', 'LineWidth',1.5)
plot(Time, EMG2mean_arriba + EMG2_std_arriba,'g', 'LineWidth',1.5)
plot(Time, EMG2mean_arriba - EMG2_std_arriba,'g', 'LineWidth',1.5)
ft = 'Times'; 
set(gca, 'FontName', ft,'Fontsize',14)
xlabel('\itTiempo (seg)\rm');
%ylabel('\itArriba\rm');
hold off
xline(0, '--', 'Inicio','Fontsize',14, 'LineWidth',2)
xline(3, '--', 'Fin','Fontsize',14, 'LineWidth',2)
ylim([0 300])
xlim([-1 4])

subplot(333)
inBetween = [EMG3mean_izq - EMG3_std_izq; flipud(EMG3mean_izq + EMG3_std_izq)];
fill(x2, inBetween, 'b');
alpha(.4)
hold on
title('Dorsal')
%plot(Time,EMG3_izq,'color' , [0.5 0.5 0.5])
plot(Time, EMG3mean_izq,'b', 'LineWidth',1.5)
plot(Time, EMG3mean_izq + EMG3_std_izq,'b', 'LineWidth',1.5)
plot(Time, EMG3mean_izq - EMG3_std_izq,'b', 'LineWidth',1.5)
ft = 'Times'; 
set(gca, 'FontName', ft,'Fontsize',14)
%xlabel('\itTiempo (seg)\rm');
%ylabel('\itArriba\rm');
hold off
xline(0, '--', 'Inicio','Fontsize',14, 'LineWidth',2)
xline(3, '--', 'Fin','Fontsize',14, 'LineWidth',2)
ylim([0 300])
xlim([-1 4])

subplot(336)
inBetween = [EMG3mean_der - EMG3_std_der; flipud(EMG3mean_der + EMG3_std_der)];
fill(x2, inBetween, 'r');
alpha(.4)
hold on
%plot(Time,EMG3_der,'color' , [0.5 0.5 0.5])
plot(Time, EMG3mean_der,'r', 'LineWidth',1.5)
plot(Time, EMG3mean_der + EMG3_std_der,'r', 'LineWidth',1.5)
plot(Time, EMG3mean_der - EMG3_std_der,'r', 'LineWidth',1.5)
ft = 'Times'; 
set(gca, 'FontName', ft,'Fontsize',14)
%xlabel('\itTiempo (seg)\rm');
%ylabel('\itArriba\rm');
hold off
xline(0, '--', 'Inicio','Fontsize',14, 'LineWidth',2)
xline(3, '--', 'Fin','Fontsize',14, 'LineWidth',2)
ylim([0 300])
xlim([-1 4])

subplot(339)
inBetween = [EMG3mean_arriba - EMG3_std_arriba; flipud(EMG3mean_arriba + EMG3_std_arriba)];
fill(x2, inBetween, 'g');
alpha(.4)
hold on
%plot(Time,EMG3_arriba,'color' , [0.5 0.5 0.5])
plot(Time, EMG3mean_arriba,'g', 'LineWidth',1.5)
plot(Time, EMG3mean_arriba + EMG3_std_arriba,'g', 'LineWidth',1.5)
plot(Time, EMG3mean_arriba - EMG3_std_arriba,'g', 'LineWidth',1.5)
ft = 'Times'; 
set(gca, 'FontName', ft,'Fontsize',14)
xlabel('\itTiempo (seg)\rm');
%ylabel('\itArriba\rm');
hold off
xline(0, '--', 'Inicio','Fontsize',14, 'LineWidth',2)
xline(3, '--', 'Fin','Fontsize',14, 'LineWidth',2)
ylim([0 300])
xlim([-1 4])
%%

for m = 1:50
	cont = 1;
	for j = 1:3
		if j == 1
			p = EMG1_izq;
		elseif j ==2
			p = EMG2_izq;
		else
			p = EMG3_izq;
		end
		for n = 101:34:400
			EMG_izq(cont,m) = p(n,m);
			cont = cont + 1;
		end	
	end
end

%%
for m = 1:50
	cont = 1;
	for j = 1:3
		if j == 1
			p = EMG1_der;
		elseif j ==2
			p = EMG2_der;
		else
			p = EMG3_der;
		end
		for n = 101:34:400
			EMG_der(cont,m) = p(n,m);
			cont = cont + 1;
		end	
	end
end

%%
for m = 1:50
	cont = 1;
	for j = 1:3
		if j == 1
			p = EMG1_arriba;
		elseif j ==2
			p = EMG2_arriba;
		else
			p = EMG3_arriba;
		end
		for n = 101:34:400
			EMG_arriba(cont,m) = p(n,m);
			cont = cont + 1;
		end	
	end
end

figure
subplot(311)
plot(c,EMG_izq)
ylim([0 400])
title('EMG IZQUIERDA')
xlabel('Time (sec)','FontSize',9);
subplot(312)
plot(c,EMG_der)
ylim([0 400])
title('EMG DERECHA')
xlabel('Time (sec)','FontSize',9);
subplot(313)
plot(c,EMG_arriba)
ylim([0 400])
title('EMG ARRIBA')
xlabel('Time (sec)','FontSize',9);

%% Esto crea la matriz final con todas las caracteristicas y todos los intentos
% Concatena EMG_izq, EMG_der y EMG_arriba dejan los resultados en una
% matriz de 150 x 27.
EMG_features = cat(2,EMG_izq,EMG_der,EMG_arriba);
EMG_features = EMG_features';

%% Columna 28, esto asigna la clase que se tiene para cada intento. 
x = zeros(length(EMG_features)/3, 1);
x1 = x - 1;
x2 = x + 1;
x3 = x + 2;

x = cat(1, x1, x2, x3);

EMG_features = cat(2, EMG_features, x);

%% Machine learnign classifier 
Accuracy = zeros(6,5);

for n = 1:5
    EMG_Shuffle = EMG_features(randperm(size(EMG_features,1)),:);
    EMG_features_train = EMG_Shuffle (1:length( EMG_Shuffle)*.8,:);
    EMG_features_test = EMG_Shuffle((length( EMG_Shuffle)*.8)+1:end,:);
   
    Mdl_NB = fitcnb(EMG_features_train(:, 1:27), EMG_features_train(:,28));
    Mdl_SVM = fitcecoc(EMG_features_train(:, 1:27), EMG_features_train(:,28));
    Mdl_DT = fitctree(EMG_features_train(:, 1:27), EMG_features_train(:,28));
    % MdlLinear_RF = fitcnb(EMG_features_train(:, 1:27), EMG_features_train(:,28));
    Mdl_KNN = fitcknn(EMG_features_train(:, 1:27), EMG_features_train(:,28));
    Mdl_QDA = fitcdiscr(EMG_features_train(:, 1:27), EMG_features_train(:,28),'DiscrimType','quadratic');
    Mdl_LDA = fitcdiscr(EMG_features_train(:, 1:27), EMG_features_train(:,28));
    
    [A, B] = size(EMG_features_test);
    
    EMG_NB = predict(Mdl_NB,EMG_features_test(:,1:27));
    Accuracy(1,n)=sum(EMG_features_test(:,28) == EMG_NB) / A;
    
    EMG_SVM = predict(Mdl_SVM, EMG_features_test(:,1:27));
    Accuracy(2,n)=sum(EMG_features_test(:,28) == EMG_SVM) / A;
    
    EMG_DT = predict(Mdl_DT, EMG_features_test(:,1:27));
    Accuracy(3,n)=sum(EMG_features_test(:,28) == EMG_DT) / A;
    
    EMG_KNN = predict(Mdl_KNN, EMG_features_test(:,1:27));
    Accuracy(4,n)=sum(EMG_features_test(:,28) == EMG_KNN) / A;
    
    EMG_QDA = predict(Mdl_QDA, EMG_features_test(:,1:27));
    Accuracy(5,n)=sum(EMG_features_test(:,28) == EMG_QDA) / A;
    
    EMG_LDA = predict(Mdl_LDA, EMG_features_test(:,1:27));
    Accuracy(6,n)=sum(EMG_features_test(:,28) == EMG_LDA) / A;
    
end
% close all
Models = {'NB';'SVM';'DT';'KNN';'QDA';'LDA'};
Accuracy = mean(Accuracy,2);
Table= table(Models,Accuracy)
Accuray = mean(Accuracy,1)

% figure
% cm = confusionchart(EMG_features_test(:,28),EMG_SVM);
%%
% figure
% subplot(331)
% inBetween = [EMG1mean_izqNor - EMG1_std_izqNor; flipud(EMG1mean_izqNor + EMG1_std_izqNor)];
% fill(x2, inBetween, 'r');
% alpha(.2)
% hold on
% plot(Time,EMG1_izqNor,'color' , [0.5 0.5 0.5])
% plot(Time, EMG1mean_izqNor,'-.r', 'LineWidth',1.5)
% plot(Time, EMG1mean_izqNor + EMG1_std_izqNor,':r', 'LineWidth',1.5)
% plot(Time, EMG1mean_izqNor - EMG1_std_izqNor,':r', 'LineWidth',1.5)
% ylim([0 1])
% xline(0, 'LineWidth',2)
% xline(3, 'LineWidth',2)
% xlabel('Time (sec)','FontSize',9);
% title('EMG_1NOR')
% hold off
% subplot(334)
% inBetween = [EMG1mean_derNor - EMG1_std_derNor; flipud(EMG1mean_derNor + EMG1_std_derNor)];
% fill(x2, inBetween, 'r');
% alpha(.2)
% hold on
% plot(Time,EMG1_derNor,'color' , [0.5 0.5 0.5])
% plot(Time, EMG1mean_derNor,'-.r', 'LineWidth',1.5)
% plot(Time, EMG1mean_derNor + EMG1_std_derNor,':r', 'LineWidth',1.5)
% plot(Time, EMG1mean_derNor - EMG1_std_derNor,':r', 'LineWidth',1.5)
% ylim([0 1])
% xline(0, 'LineWidth',2)
% xline(3, 'LineWidth',2)
% xlabel('Time (sec)','FontSize',9);
% hold off
% subplot(337)
% inBetween = [EMG1mean_arribaNor - EMG1_std_arribaNor; flipud(EMG1mean_arribaNor + EMG1_std_arribaNor)];
% fill(x2, inBetween, 'r');
% alpha(.2)
% hold on
% plot(Time,EMG1_arribaNor,'color' , [0.5 0.5 0.5])
% plot(Time, EMG1mean_arribaNor,'-.r', 'LineWidth',1.5)
% plot(Time, EMG1mean_arribaNor + EMG1_std_arribaNor,':r', 'LineWidth',1.5)
% plot(Time, EMG1mean_arribaNor - EMG1_std_arribaNor,':r', 'LineWidth',1.5)
% ylim([0 1])
% xline(0, 'LineWidth',2)
% xline(3, 'LineWidth',2)
% xlabel('Time (sec)','FontSize',9);
% hold off
% subplot(332)
% inBetween = [EMG2mean_izqNor - EMG2_std_izqNor; flipud(EMG2mean_izqNor + EMG2_std_izqNor)];
% fill(x2, inBetween, 'r');
% alpha(.2)
% hold on
% plot(Time,EMG2_izqNor,'color' , [0.5 0.5 0.5])
% plot(Time, EMG2mean_izqNor,'-.r', 'LineWidth',1.5)
% plot(Time, EMG2mean_izqNor + EMG2_std_izqNor,':r', 'LineWidth',1.5)
% plot(Time, EMG2mean_izqNor - EMG2_std_izqNor,':r', 'LineWidth',1.5)
% ylim([0 1])
% xline(0, 'LineWidth',2)
% xline(3, 'LineWidth',2)
% xlabel('Time (sec)','FontSize',9);
% title('EMG_2NOR')
% hold off
% subplot(335)
% inBetween = [EMG2mean_derNor - EMG2_std_derNor; flipud(EMG2mean_derNor + EMG2_std_derNor)];
% fill(x2, inBetween, 'r');
% alpha(.2)
% hold on
% plot(Time,EMG2_derNor,'color' , [0.5 0.5 0.5])
% plot(Time, EMG2mean_derNor,'-.r', 'LineWidth',1.5)
% plot(Time, EMG2mean_derNor + EMG2_std_derNor,':r', 'LineWidth',1.5)
% plot(Time, EMG2mean_derNor - EMG2_std_derNor,':r', 'LineWidth',1.5)
% ylim([0 1])
% xline(0, 'LineWidth',2)
% xline(3, 'LineWidth',2)
% xlabel('Time (sec)','FontSize',9);
% hold off
% subplot(338)
% inBetween = [EMG2mean_arribaNor - EMG2_std_arribaNor; flipud(EMG2mean_arribaNor + EMG2_std_arribaNor)];
% fill(x2, inBetween, 'r');
% alpha(.2)
% hold on
% plot(Time,EMG2_arribaNor,'color' , [0.5 0.5 0.5])
% plot(Time, EMG2mean_arribaNor,'-.r', 'LineWidth',1.5)
% plot(Time, EMG2mean_arribaNor + EMG2_std_arribaNor,':r', 'LineWidth',1.5)
% plot(Time, EMG2mean_arribaNor - EMG2_std_arribaNor,':r', 'LineWidth',1.5)
% ylim([0 1])
% xline(0, 'LineWidth',2)
% xline(3, 'LineWidth',2)
% xlabel('Time (sec)','FontSize',9);
% hold off
% subplot(333)
% inBetween = [EMG3mean_izqNor - EMG3_std_izqNor; flipud(EMG3mean_izqNor + EMG3_std_izqNor)];
% fill(x2, inBetween, 'r');
% alpha(.2)
% hold on
% plot(Time,EMG3_izqNor,'color' , [0.5 0.5 0.5])
% plot(Time, EMG3mean_izqNor,'-.r', 'LineWidth',1.5)
% plot(Time, EMG3mean_izqNor + EMG3_std_izqNor,':r', 'LineWidth',1.5)
% plot(Time, EMG3mean_izqNor - EMG3_std_izqNor,':r', 'LineWidth',1.5)
% ylim([0 1])
% xline(0, 'LineWidth',2)
% xline(3, 'LineWidth',2)
% xlabel('Time (sec)','FontSize',9);
% title('EMG_3NOR')
% hold off
% subplot(336)
% inBetween = [EMG3mean_derNor - EMG3_std_derNor; flipud(EMG3mean_derNor + EMG3_std_derNor)];
% fill(x2, inBetween, 'r');
% alpha(.2)
% hold on
% plot(Time,EMG3_derNor,'color' , [0.5 0.5 0.5])
% plot(Time, EMG3mean_derNor,'-.r', 'LineWidth',1.5)
% plot(Time, EMG3mean_derNor + EMG3_std_derNor,':r', 'LineWidth',1.5)
% plot(Time, EMG3mean_derNor - EMG3_std_derNor,':r', 'LineWidth',1.5)
% ylim([0 1])
% xline(0, 'LineWidth',2)
% xline(3, 'LineWidth',2)
% xlabel('Time (sec)','FontSize',9);
% hold off
% subplot(339)
% inBetween = [EMG3mean_arribaNor - EMG3_std_arribaNor; flipud(EMG3mean_arribaNor + EMG3_std_arribaNor)];
% fill(x2, inBetween, 'r');
% alpha(.2)
% hold on
% plot(Time,EMG3_arribaNor,'color' , [0.5 0.5 0.5])
% plot(Time, EMG3mean_arribaNor,'-.r', 'LineWidth',1.5)
% plot(Time, EMG3mean_arribaNor + EMG3_std_arribaNor,':r', 'LineWidth',1.5)
% plot(Time, EMG3mean_arribaNor - EMG3_std_arribaNor,':r', 'LineWidth',1.5)
% ylim([0 1])
% xline(0, 'LineWidth',2)
% xline(3, 'LineWidth',2)
% xlabel('Time (sec)','FontSize',9);
% hold off
% %%
% figure
% subplot(3,1,1)
% plot(Time, EMG1mean_izq, Time, EMG1mean_der, Time, EMG1mean_arriba)
% ylim([0 350])
% title('EMG_1')
% xlabel('Time (sec)','FontSize',9);
% legend('Izquierdo','Derecho','Arriba');
% 
% subplot(3,1,2)
% plot(Time, EMG2mean_izq, Time, EMG2mean_der, Time, EMG2mean_arriba)
% ylim([0 350])
% title('EMG_2')
% xlabel('Time (sec)','FontSize',9);
% legend('Izquierdo','Derecho','Arriba');
% 
% subplot(3,1,3)
% plot(Time, EMG3mean_izq, Time, EMG3mean_der, Time, EMG3mean_arriba)
% ylim([0 350])
% title('EMG_3')
% xlabel('Time (sec)','FontSize',9);
% legend('Izquierdo','Derecho','Arriba');
% %%
% figure
% subplot(3,1,1)
% plot(Time, EMG1mean_izqNor, Time, EMG1mean_derNor, Time, EMG1mean_arribaNor)
% ylim([0 1])
% title('xxxEMG_1NOR')
% xlabel('Time (sec)','FontSize',9);
% legend('Izquierdo','Derecho','Arriba');
%  
% subplot(3,1,2)
% plot(Time, EMG2mean_izqNor, Time, EMG2mean_derNor, Time, EMG2mean_arribaNor)
% ylim([0 1])
% title('EMG_2NOR')
% xlabel('Time (sec)','FontSize',9);
% legend('Izquierdo','Derecho','Arriba');
% 
% subplot(3,1,3)
% plot(Time, EMG3mean_izqNor, Time, EMG3mean_derNor, Time, EMG3mean_arribaNor)
% ylim([0 1])
% title('EMG_3NOR')
% xlabel('Time (sec)','FontSize',9);
% legend('Izquierdo','Derecho','Arriba');