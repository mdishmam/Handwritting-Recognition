text = fopen('text.txt');
% take an input string
a = fread(text,100000000,'uint8=>char')';
fclose(text);

% create system object
NET.addAssembly('System.Speech');
obj = System.Speech.Synthesis.SpeechSynthesizer;
obj.Volume = 100;

% speech
Speak(obj, a);
clear a