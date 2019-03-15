function [mm,aspc] = MelfccYarat(dosyaAdi)
    [d,sr] = mp3read(dosyaAdi,[1 30*22050],1,2);
    soundsc(d,sr);       
    [mm,aspc] = melfcc(d*1.02, sr*10, 'maxfreq', 8000, 'numcep', 7, 'nbands', 22, 'fbtype', 'fcmel', 'dcttype', 1, 'usecmp', 1, 'wintime', 0.032, 'hoptime', 0.016, 'preemph', 0, 'dither', 1);
end
% [filepath,name,ext] = fileparts(file);
%  file = 'C:\Users\TADAKOGLU\Desktop\NN\meric.wav';