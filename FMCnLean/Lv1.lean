namespace Lv1

-- Nao mexas neste inicio :P

inductive Nat where
  | O : Nat
  | S : Nat → Nat

open Nat

def fromNat : Nat -> String
  | O   => "O"
  | S n => "S" ++ fromNat n

instance : Repr Nat where -- alternativa possivel, nao que vai ser.
  reprPrec
    | n, _  => Std.Format.text (fromNat n)

-- Texto legal aqui ou isso vai dps...
#check S  -- Qual o tipo do S?
#eval S O -- Quem eh S O ?

---------------------------------------------Defs---------------------------------------------

-- A adição(+) eu vou dar de graça
-- Use esse presente para fazer mais funções!

def add : Nat → Nat → Nat
  | n, O   => n
  | n, S m => S (add n m)


-- Vamos conferir ..
#eval add (S (S O)) (S O)


                     /- Agora vamos definir algumas funções!
                        Presta atencao no tipo!
                          Obs: Se quiser escrever `→` é só digitar \to -/


-- Multiplicação (*)
def mul : α → α
  | _ => sorry

-- alguns evals prontos entre as defs..

-- Exponenciação (^)
def exp : α → α
  | _ => sorry

-- Fibonacci
def fib : α → α
  | _ => sorry

-- Factorial
def fact : α → α
  | _ => sorry

-- Min binario
def min : α → α
  | _ => sorry

-- Max binario
def max : α → α
  | _ => sorry

                      /- Pergunta qualquer duvida sobre as defs -/

-----------------------------------------Demons---------------------------------------------

theorem add_zero :
  ∀ (n : myNat), add n O = n :=
by
  sorry
  -- Escreva aqui sua demonstração
  -- Identação é importante :)

theorem mul_one :
  ∀ (n : myNat), mul n (S O) = n :=
by
  sorry

theorem exp_one :
  ∀ (n : myNat), exp n (S O) = n :=
by
  sorry

theorem max_zero :
  ∀ (n : myNat), max n O = n :=
by
  sorry
