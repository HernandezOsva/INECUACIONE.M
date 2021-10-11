% De secuencia de comandos de octava
% Título: Resolución de desigualdades
% Descripción: Script para resolver inecuaciones (primer grado, segundo grado, valor absoluto)
% Autor: Joel Emmanuel De La Cruz Rodriguez, Maria Guadalupe Martinez Narvaes, Osvaldo Hernandez Martinez
% Fecha: 2021-10-07
% Versión: 1
% Uso C: \ User \ osval \ Documentos \ DocumentosOctave \ Inecuaciones.m
% Notas: Requiere aplicacion obtener

pkg load symbolic

%Inecuaciones de Primer Grado
syms x
disp("Inecuaciones de Primer Grado");
disp(x+5<1);
solve(x+5<1)

subplot(2,2,1);
x=[-20:-4]
y=x-4
plot(x,y,'ro-',"markersize",10,"linewidth",3)
hold on
plot([-20 -4],[0,0],'k+-',"linewidth",5,"markersize",12)
plot([0 0],[-15 15],'k-',"linewidth",5)
plot(x,sign(y)*5,'bs-',"markersize",12)
xlabel("Eje X","fontsize",20);
title( "El intervalo es: (-oo,-4)" )
%Inecuaciones de Segundo Grado
syms x
disp("Inecuacionesde Segundo Grado");
disp(x^2+9*x<23);
solve(x^2+9*x<23)
subplot(2,2,2)
y=9*x-23
ezplot((x)^2,y)


%Inecuaciones de Valor Absoluto
syms x
disp("...:::Inecuaciones de Valor Absoluto:::...")
disp("|x-2|>14")
solve(abs(x-2)>14)

subplot(2,2,3)
x=[-20:-12]
y=x-16
plot(x,y,'ro-',"markersize",10,"linewidth",3)
hold on
plot([-20 -12],[0,0],'k+-',"linewidth",5,"markersize",12)
plot([0 0],[-15 15],'k-',"linewidth",5)
plot(x,sign(y)*5,'bs-',"markersize",12)
xlabel("Eje X","fontsize",20)
title( "El intervalo es: (-oo,-12)")

subplot(2,2,4)
x=[16:100]
y=x-16
plot(x,y,'ro-',"markersize",10,"linewidth",3)
hold on
plot([16 100],[0,0],'k+-',"linewidth",5,"markersize",12)
plot([0 0],[-15 15],'k-',"linewidth",5)
plot(x,sign(y)*5,'bs-',"markersize",12)
xlabel("Eje X","fontsize",20)
title( "El intervalo es: (16,oo)")
