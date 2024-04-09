clc; clear all; close all; warning off; 
[FileName1, FilePath1]=uigetfile('*.jpeg','Select 1st iris image'); 
file1 = fullfile(FilePath1, FileName1);

[FileName2, FilePath2]=uigetfile('*.jpeg','Select 2nd iris image'); 
file2 = fullfile(FilePath2, FileName2);

mkdir('scrap') 
hd = matlabcompk(file1,file2);

if hd < 0.0 && hd <=0.2 
  h = msgbox('Same IRIS','Result');
  jframe=get(h, 'javaframe');
  jIcon=javax.swing.ImageIcon('logo.png'); 
  jframe.setFigureIcon(jIcon); 
  else if hd <= 1.0 && hd >=0.4 
    h = msgbox('Uncertain, Please run test again or change iris images','Result');
    jframe=get(h, 'javaframe'); 
    jIcon=javax.swing.ImageIcon('logo.png'); 
    jframe.setFigureIcon(jIcon); 
    else if hd <= 0.4 && hd >= 0.3 
      h = msgbox('Same IRIS','Result'); 
      jframe=get(h, 'javaframe'); 
      jIcon=javax.swing.ImageIcon('logo.png');
      jframe.setFigureIcon(jIcon); 
      else if hd == 0 
        h = msgbox('Same IRIS','Result'); 
        jframe=get(h, 'javaframe'); 
        jIcon=javax.swing.ImageIcon('logo.png'); 
        jframe.setFigureIcon(jIcon); 
        end 
      end 
   end 
end 
clc; clear all;
rmdir('scrap', 's') 
delete('./database/.jpeg'); 
delete('./database/.mat');
cd ./database 
unzip('db')
