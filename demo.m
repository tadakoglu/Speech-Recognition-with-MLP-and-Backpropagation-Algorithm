clear; close all;
h = [600]; % çok katmanlý sinir aðýndaki nöron sayýsý ve katman sayýsý; 2 katmanlý, her birinde 10'ar nöron bulunuyor.
%MFCC, Melfrequency Capstral Coefficients hesaplayarak 20 katsayýsýný giriþ olarak alacaðýz.
% X = [03.1 0.2 1 1;1 0.5 0 1; 1 0 1 0];
[mm,aspc] = MelfccYarat('meriç.mp3');
Pmeric = mm(:); %Cepstral Coefficient sayýlarýný giriþ ve target olarak alacaðýz.
numb=15;
Pmeric = Pmeric(1:numb);
[mm,aspc] = MelfccYarat('pamukkale.mp3');
Ppamukkale = mm(:);
Ppamukkale = Ppamukkale(1:numb);
[mm,aspc] = MelfccYarat('güzel.mp3');
Pguzel = mm(:); %tüm mfcc matrixini tek sütun yaptým
Pguzel = Pguzel(1:numb);
[mm,aspc] = MelfccYarat('matmazel.mp3');
Pmatmazel = mm(:);
Pmatmazel = Pmatmazel(1:numb);
[mm,aspc] = MelfccYarat('çamlýk.mp3');
Pcamlik = mm(:);
Pcamlik = Pcamlik(1:numb);
[mm,aspc] = MelfccYarat('tayfun.mp3');
Ptayfun = mm(:);
Ptayfun = Ptayfun(1:numb);
[mm,aspc] = MelfccYarat('denizli.mp3');
Pdenizli = mm(:);
Pdenizli = Pdenizli(1:numb);
[mm,aspc] = MelfccYarat('go.mp3');
Pgo = mm(:);
Pgo = Pgo(1:numb);
X = horzcat(Pmeric,Ppamukkale,Pguzel,Pmatmazel,Pcamlik,Ptayfun,Pdenizli,Pgo);
% X = horzcat(Pmeric,Ppamukkale);
X= X/norm(X);
% X=abs(X);
X = X*0.9;
T = X; % Biz ne girdiyse onu elde etmek istiyoruz bu sebeple hedefler giriþ vektörlerine eþittir.
[model,mse] = mlp(X,T,h);

plot(mse);
%disp(['T = [' num2str(T) ']']);
Y = mlpPred(model,X); % Workspace'de deðiþkenlerden Y çýkýþ deðeri hemen hemen T matrixi ile hemen hemen ayný ise að yakýnsamýþtýr denilir.
%disp(['Y = [' num2str(Y) ']']);