function [matches] = diffBetweenSignals(word,alphabet)

acronyme = detectVoiced(word, 8000); %divise le signal
%mfccDico = cell(1,length(alphabet));%Cr�ation du tableau de cellule de longueur de l'alphabet

%for i=1:length(alphabet)
%    mfccDico{i} = melcepst(alphabet{i},8000);%Extraction des coefficients Mfcc de chaque lettre de l'alphabet
%end

matches = zeros(1,acronymeCols);%Tableau contenant le r�sultat de la comparaison
%currentLetter = 0;%La lettre en cours de comparaison

for i=1:length(acronymeCols)
    temp = 0; %valeur de diff�rence entre les signaux
    for j=1:length(alphabet)
        result=MFCC_Extraction_2(acronyme{i,1}, alphabet{j,1});
        disp('resultat comparaison numero  ');
        disp(j);
        disp('= ');
        disp(result);
        if(temp<result)
            temp=result;
            matches{1,i}=j;
        end
%         k = waitforbuttonpress
    end
   % matches(i) = currentLetter;
   % currentLetter = 0;
   % temp = 9999;
end
end