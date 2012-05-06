function []=filter(s,con)
[y,Fs]=wavread(s);
%sound(y,Fs);
if(size(y,1)>size(y,2))
    y = y'; 
end

figure(1);
subplot(3,1,1);
plot( [1:size(y,2)]/Fs, y(1,:),'b'); 
title('original sound');
drawnow;

%X=abs(fft(y,round(size(y,1)/1000)));
X=abs(fft(y,str2num(con)));

figure(1);
subplot(3,1,2);
plot( [1:size(X,2)]/Fs, X(1,:),'b'); 
title('fft');
drawnow;


E=max(X)*ones(size(y));

D=y-E;
  sound(D,Fs);
 
 figure(1);
subplot(3,1,3);
plot( [1:size(D,2)]/Fs, D(1,:),'b'); 
title('clean sound');
drawnow;

 
