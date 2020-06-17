function letter=read_letter(imagn,num_letras)

global templates

comp=[ ];


 for n=1:num_letras
    
    sem=corr2(templates{1,n},imagn);
    comp=[comp sem];
    
    %pause(1)
 end

v=find(comp==max(comp));
chGap = 26;
 

if v<=chGap
    letter='A';
elseif v>chGap & v<=2*chGap
    letter='B';
elseif v>2*chGap & v<=3*chGap
    letter='C';
elseif v>3*chGap & v<=4*chGap
    letter='D';
elseif v>4*chGap & v<=5*chGap
    letter='E';
elseif v>5*chGap & v<=6*chGap
    letter='F';
elseif v>6*chGap & v<=7*chGap
    letter='G';
elseif v>7*chGap & v<=8*chGap
    letter='H';
elseif v>8*chGap & v<=9*chGap
    letter='I';
elseif v>9*chGap & v<=10*chGap
    letter='J';
elseif v>10*chGap & v<=11*chGap
    letter='K';
elseif v>11*chGap & v<=12*chGap
    letter='L';
elseif v>12*chGap & v<=13*chGap
    letter='M';
elseif v>13*chGap & v<=14*chGap
    letter='N';
elseif v>14*chGap & v<=15*chGap
    letter='O';
elseif v>15*chGap & v<=16*chGap
    letter='P';
elseif v>16*chGap & v<=17*chGap
    letter='Q';
elseif v>17*chGap & v<=18*chGap
    letter='R';
elseif v>18*chGap & v<=19*chGap
    letter='S';
elseif v>19*chGap & v<=20*chGap
    letter='T';
elseif v>20*chGap & v<=21*chGap
    letter='U';
elseif v>21*chGap & v<=22*chGap
    letter='V';
elseif v>22*chGap & v<=23*chGap
    letter='W';
elseif v>23*chGap & v<=24*chGap
    letter='X';
elseif v>24*chGap & v<=25*chGap
    letter='Y';
elseif v>25*chGap & v<=26*chGap
    letter='Z';
else
    letter='#';
end
end
