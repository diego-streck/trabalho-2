--Questão 1:Crie uma função somaQuad :: Int -> Int -> Int que calcule a 
--soma dos quadrados de dois números x e y.

somaQuad :: Int -> Int -> Int
somaQuad  x y = (x^2 + y^2)

--Questão2: Crie uma função hasEqHeads :: [Int] -> [Int] -> Bool que verifique se 2 listas
--possuem o mesmo primeiro elemento. Use o operador lógico '==' para verificar igualdade.

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads  l1 l2 = if(head l1) == (head l2) then True else False 

-- Questão 3: Escreva uma função que receba uma lista de nomes e adicione
-- a string "Sr. " no início de cada nome.

addSr :: [String] -> [String]
addSr lista = map ("Sr. " ++)lista 

-- Questão 4: Crie uma função que receba uma string e retorne o número de espaços nela contidos.
-- Dica: aplique 2 funções consecutivamente.

null_ :: String -> Int
null_ lista =  length(filter(==' ')lista)

--Questão 5: Escreva uma função que, dada uma lista de números, calcule 3*n^2 + 2/n + 1 para 
--cada número n da lista. Dica: defina uma função anônima.

result :: [Float] -> [Float] 
result num = map(\n-> 3*n^2 + 2/n + 1)num


--Questão  6:Escreva uma função que, dada uma lista de números, selecione somente 
--os que forem negativos.

negat :: [Float] -> [Float]
negat lista = filter(<0)lista

--Questão 7:Escreva uma função que receba uma lista de números e retorne somente os que estiverem 
--entre 1 e 100, inclusive. Dica 1: use uma função anônima. Dica 2: use o operador '&&' para expressar 
--um 'E' lógico.

entre ::[Float] -> [Float]
entre list = filter(\n->n > 0 && n<101)list

--Questão 8: Escreva uma função que, dada uma lista de idades de pessoas no ano atual, retorne uma lista somente 
--com as idades de quem nasceu depois de 1970. Para testar a condição, sua função deverá subtrair a idade
 --do ano atual.

idade::[Int]->[Int]
idade list = filter(\n-> n<(2016-1970))list

--Questao 9: Escreva uma função que receba uma lista de números e retorne somente aqueles que forem pares.

par::[Int]->[Int]
par list = filter(\n-> (mod n 2 == 0))list 


--Questão 10: Crie uma função charFound :: Char -> String -> Bool que verifique se o caracter (primeiro argumento)
-- está contido na string (segundo argumento). Exemplos de uso da função:

-- charFound 'a' ""  
--False  
-- charFound 'a' "uau"  
--True

charFound :: Char -> String -> Bool
charFound a b = if ((filter (== a) b) /= "") 
then True 
else False

--Questão 11: A função takeWhile :: (a -> Bool) -> [a] -> [a] é uma função de alta ordem. Ela recebe uma função condicional e uma lista, retornando o "menor prefixo" (isto é, porção inicial) da lista que satisfaça a condição dada. Teste os exemplos abaixo no GHCi e depois crie um novo exemplo:

--takeWhile :: (a -> Bool) -> [a] -> [a]
 --takeWhile (< 5) [1,2,3,4,5]
 --takeWhile (/=' ') "Fulana de Tal"
--Obs.: Este exercício deve ser entregue em forma de comentário.
-- 
--outro exemplo : função que verifica se um número é par
       
       -- e_par :: Int -> Bool
       --e_par n = if (mod n 2 == 0) then True else False


       --take_while :: [Int] -> [Int]
       --take_while lista = takeWhile e_par lista



--Questão 12: Crie uma função que receba uma lista de nomes e retorne outra lista com somente aqueles nomes que terminarem com a letra 'a'.

nomeA::String-> Bool
nomeA list = if (last(list) == 'a') 
then True 
else False

returnA :: [String] -> [String]
returnA list = filter (nomeA) list


