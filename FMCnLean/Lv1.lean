namespace Lv1

-- Nao mexas neste inicio :P

inductive Nat where
  | O : Nat
  | S : Nat → Nat

open Nat

def fromNat : Nat -> String
  | O   => "0"
  | S O => "S 0"
  | S n => "S (" ++ fromNat n ++ ")"

instance : Repr Nat where
  reprPrec
    | n, _  => Std.Format.text (fromNat n)

---------------------------------------------Defs---------------------------------------------

-- A adição(+) eu vou dar de graça
-- Use esse presente para fazer mais funções!

def add : Nat → Nat → Nat
  | n, O   => n
  | n, S m => S (add n m)

-- Vamos conferir ..
#eval add (S O) O
#eval add (S (S O)) (S O)

                     /- Agora vamos definir algumas funções!
                        Presta atencao de colocar o tipo certo!
                          Obs: Se quiser escrever `→` é só digitar \to -/

-- Multiplicação (*)
def mul : Nat →  Nat →  Nat
  | _, O => O
  | n, S m => add (mul n m) n

#eval mul (S (S O)) (O)
#eval mul (S O) (S (S (S O)))
#eval mul (S (S (S O))) (S (S O))

-- Exponenciação (^)
def exp : Nat → Nat → Nat
  | _, O => S O
  | n, S m => mul (exp n m) n

#eval exp (S (S (S O))) (S O)
#eval exp (S (S (S (S O)))) O
#eval exp (S (S (S O))) (S (S (S (S O))))
#eval exp (S O) (S (S (S (S O))))

-- Fibonacci
def fib : Nat → Nat
  | S (S n) => add (fib (S n)) (fib n)
  | n => n

#eval fib O
#eval fib (S O)
#eval fib (S (S O))
#eval fib (S (S (S O)))
#eval fib (S (S (S (S O))))
#eval fib (S (S (S (S (S O)))))

-- Factorial
def fact : Nat → Nat
  | S n => mul (S n) (fact n)
  | _ => S O

#eval fact O
#eval fact (S O)
#eval fact (S (S O))
#eval fact (S (S (S O)))
#eval fact (S (S (S (S O))))
#eval fact (S (S (S (S (S O)))))

-- Min binario
def min : Nat → Nat → Nat
  | S n, S m => S (min n m)
  | _, O => O
  | O, _ => O

#eval min (S (S O)) O
#eval min (S O) (S (S O))

-- Max binario
def max : Nat → Nat → Nat
  | S n, S m => S (max n m)
  | n, O => n
  | O, n => n

#eval max (S (S O)) O
#eval max (S O) (S (S O))

                      /- Pergunta qualquer duvida sobre as defs -/

-----------------------------------------Demons---------------------------------------------

-- Exemplo :
theorem add_zero :
  ∃(e : Nat), ∀(n : Nat), add n e = n :=
by
  exists O
  intro n
  rw [add]

theorem /-seu nome legal-/ :
  ∃(e : Nat), ∀(n : Nat), mul n e = n :=
by
  sorry
  -- Escreva aqui sua demonstração
  -- Identação é importante :)

theorem /-seu nome legal-/  :
  ∃(e : Nat), ∀(n : Nat), exp n e = n :=
by
  sorry

theorem /-seu nome legal-/  :
  ∃(e : Nat), ∀(n : Nat), max n e = n ∧ max e n = n :=
by
  sorry
