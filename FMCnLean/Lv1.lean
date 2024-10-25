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
