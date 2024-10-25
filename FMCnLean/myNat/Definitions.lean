/-
Vamos definir um tipo que age como os Naturais que
conheço desde a infância. Neles eu tenho o O que é um
natural e a função S que recebe um natural para virar
um natural. (Nada mais)
-/
inductive myNat where
  | O : myNat
  | S : myNat → myNat
  -- Se quiser escrever `→` é só digitar \to
deriving Repr

--Agora vamos definir algumas funções! Não se esqueça de
--colocar o tipo certo!

open myNat -- Fica mais fácil escrever O e S assim!
#check myNat.S -- Qual o tipo do S?


/-
A adição(+) eu vou dar de graça, tente usar esse
presente para fazer mais funções!
-/
def add : myNat → myNat → myNat
  | n, O => n
  | n, S m => S (add n m)
#eval add (S (S O)) (S O)
-- Uma forma de ver se sua função está funcionando como deveria ;)

-- Multiplicação (*)
def mul : α → α
  | _ => sorry

-- Exponenciação (^)
def exp : α → α
  | _ => sorry

-- Fibonacci, em que fib x = fib (x-1) + fib (x-2) (♡)
def fib : α → α
  | _ => sorry

-- Factorial, lembre-se de n! = n*(n-1)*...*1*0!
def fact : α → α
  | _ => sorry

-- Uma função que me diz qual o mínimo entre dois naturais
def min : α → α
  | _ => sorry

-- Uma função que me diz qual o máximo entre dois naturais
def max : α → α
  | _ => sorry
