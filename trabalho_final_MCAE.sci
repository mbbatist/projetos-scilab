//Nome: Mariana Brito Batista
//Trabalho MCAE: Arranjar uma dieta como sistema linar
//Explicação do algoritmo está no artigo do trabalho
clear all
clc
 
i=0
while i < 1 
    disp("Qual nivel da dieta voce estah fazendo? Digite o numero correspondente")
    disp("1- Nível 1A")
    disp("2- Nível 1B")
    disp("3- Nível 2")
    disp("4- Nível 3")
    disp("5- Nível 4")
    disp("6- Nível 5")
    nivel= input("Nível:")
    if nivel > 0 & nivel < 7
        i=1
    else    
        disp("Insira um valor válido ")
    end
end

i=0
while  i < 1 
    disp("Qual refeicao ah calcular? Digite o numero correspondente")
    disp("1- Cafeh da amanha")
    disp("2- Lanche da manha")
    disp("3- Almoco")
    disp("4- Jantar")
    refeicao=input("Refeicao:")
    if refeicao > 0 & refeicao < 5
        i=1
    else    
        disp("Insira um valor válido ")
    end
end
funcprot(0)
function refeicao_habitual(nivel, refeicao, kcal)
    printf("**********COMO MONTAR UMA DIETA EQUILIBRADA PARA PERDA DE PESO********** \n");

disp('Tabela exemplo de  três dos ingredientes da dieta em relação a quantidade fornecida em 1 dia.');

disp('__________________________________________________________________________');
disp('|      Quantidade (gramas) fornecidas por 100 g de ingrediente            |');
disp('|_________________________________________________________________________|');
disp('| Nutrientes | Leite    | Farinha | Soro de | Quantidades fornecidas pela |');
disp('| (gramas)   | Desnatado| de soja | leite   | dieta de Cambrigde em um dia|');
disp('|_________________________________________________________________________|');
disp('|  Proteína  |    50    |    51   |   03    |            84               |');
disp('|_________________________________________________________________________|');
disp('|Carboidrato |    52    |    34   |   74    |            95               |');
disp('|_________________________________________________________________________|');
disp('|  Gordura   |    0     |    7    |   1.3   |            21                |');
disp('|_________________________________________________________________________|');
disp('PROBLEMA EXEMPLO: Se possível, determine uma combinação de leite desnatado, farinha de soja e soro de leite seguindo ainda a dieta:');
    n=input("Quantos alimentos serão ingeridos na refeição?")
    qtd_alm=n;
    n=n+1
    A= 5 * rand( 3, n )
    [m,n]=size(A);
    disp("Lembrando que a somatória de Proteína, Carboidrato e Gordura deve dar exatamente o seu limite de Quilocalorias. Que é exatamente:")
    disp(kcal);
    disp(" ");
    disp(" ");
    
    i=0
    while i < 1 
        A(1,n)=input("Qual a quantidade total de Proteína? ")
        A(2,n)=input("Qual a quantidade total de Carboidrato? ")
        A(3,n)=input("Qual a quantidade total de Gordura? ")
        j=A(1,n)+A(2,n)+A(3,n)
        if j==kcal
            i=1
        else
            disp("Insira valores válidos com a soma das calorias dos nutrientes estipulada pela dieta, que foi informada mais a cima")
        end
end
    
    for j=1:qtd_alm
        disp("Alimento")
        disp(j);
        disp(" ");
        disp(" ");
        A(1,j)=input("Qual a quantidade de Proteína deste alimento? ")
        A(2,j)=input("Qual a quantidade de Carboidrato deste alimento? ")
        A(3,j)=input("Qual a quantidade total de Gordura deste alimento? ")
    end
    disp("Matriz antes do escalonamento")
    disp(A);
    for j=1:m-1
        for z=2:m
            if A(j,j)==0
                t=A(j,:);A(j,:)=A(z,:);
                A(Z,:)=t;
            end
        end
        for i=j+1:m
            A(i,:)=A(i,:)-A(j,:)*(A(i,j)/A(j,j));
        end
    end

    for j=m:-1:2
        for i=j-1:-1:1
            A(i,:)=A(i,:)-A(j,:)*(A(i,j)/A(j,j)); 
        end
    end

    for s=1:m
        A(s,:)=A(s,:)/A(s,s);
        x(s)=A(s,n);
    end
    disp("Matriz depois do escalonamento")
    disp(A);
    disp("Quantidades necessárias para seguir a dieta")
    for j=1:qtd_alm        
        disp(" ");
        disp(" ");
        disp(A(1,n))
        disp(A(2,n))
        disp(A(3,n))
    end
endfunction

function tipo_de_refeicao(nivel,refeicao)
if nivel==1 then
    disp (" Somente refeicoes Cambridge!!!")
elseif nivel==2 then
    if refeicao==3 then
        refeicao_habitual(nivel,refeicao,200)
    else
        disp("refeicao cambridge")
    end
elseif nivel==3 then
    if refeicao==1 then
        refeicao_habitual(nivel,refeicao,150)
    elseif refeicao==3 then
        refeicao_habitual(nivel,refeicao,400)
    else
        disp("Refeicao Cambridge com direito a uma salada e um copo de leite desnatado de 125 ml a qualquer hora!")
    end
elseif nivel==4 then
    if refeicao==1 then
        refeicao_habitual(nivel,refeicao,300)
    elseif refeicao==3 then
        refeicao_habitual(nivel,refeicao,400)
    else
        disp("Refeicao Cambridge com direito a uma salada e um copo de leite desnatado de 100 ml a qualquer hora!")
    end
elseif nivel==5 then
    if refeicao==2 then
        disp("Refeicao Cambridge com direito a uma salada e um copo de leite desnatado de 100 ml a qualquer hora!")
    elseif refeicao==1 then
        refeicao_habitual(nivel,refeicao,300)
    elseif refeicao==3 then
        refeicao_habitual(nivel,refeicao,500)
    else
        refeicao_habitual(nivel,refeicao,400)
    end
else
     disp("Lembre-se que voce deve ingerir uma refeicao Cambridge em alguma refeicao. Ingerir agora? Digite 1 para SIM")
     i=input("Resposta:")
        if i==1 then
            disp("Refeicao Cambridge!")
        else
            disp("Refeicao Habitual sem restricao de calorias!")
        end
end
endfunction
tipo_de_refeicao(nivel,refeicao)

