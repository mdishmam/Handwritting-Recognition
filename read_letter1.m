
function letter=read_letter(imagn,num_letras)

global templates

comp=[ ];


 for n=1:num_letras
    
    sem=corr2(templates{1,n},imagn);
    comp=[comp sem];
    
    %pause(1)
end

v=find(comp==max(comp));
chGap = 15;

%*-*-*-*-*-*-*-*-*-*-*-*-*-
switch v
    case v<=chGap
        letter='A';
        
    case v>chGap & v<=2*chGap
        letter='B';
        
    case v>2*chGap & v<=3*chGap
        letter='C';
    
    case v>3*chGap & v<=4*chGap
        letter='D';
        
    case v>4*chGap & v<=5*chGap
        letter='E';

    case v>5*chGap & v<=6*chGap
        letter='F';
    
    case v>6*chGap & v<=7*chGap
        letter='G';
        
    case v>7*chGap & v<=8*chGap
        letter='H';
        
    case v>8*chGap & v<=9*chGap
        letter='I';
    
    case v>9*chGap & v<=10*chGap
        letter='J';
        
    case v>10*chGap & v<=11*chGap
        letter='K';

    case v>11*chGap & v<=12*chGap
        letter='L';
    
    case v>12*chGap & v<=13*chGap
        letter='M';
        
    case v>13*chGap & v<=14*chGap
        letter='N';
        
    case v>14*chGap & v<=15*chGap
        letter='O';
        
    case v>15*chGap & v<=16*chGap
        letter='P';
    
    case v>16*chGap & v<=17*chGap
        letter='Q';
        
    case v>17*chGap & v<=18*chGap
        letter='R';

    case v>18*chGap & v<=19*chGap
        letter='S';
    
    case v>19*chGap & v<=20*chGap
        letter='T';
        
    case v>20*chGap & v<=21*chGap
        letter='U';
        
    case v>21*chGap & v<=22*chGap
        letter='V';
    
    case v>22*chGap & v<=23*chGap
        letter='W';
        
    case v>23*chGap & v<=24*chGap
        letter='X';

    case v>24*chGap & v<=25*chGap
        letter='Y';
    
    case v>25*chGap & v<=26*chGap
        letter='Z';
        
    otherwise
        letter='#';
end
end


