import FMCnLean.Lv1
-- Se teu outro arquivo compilou,
-- talvez tu precise usar Ctrl + Shift + P : Restart File

open Lv1
open Lv1.Nat

namespace Lv2

def Nat := Lv1.Nat
---------------------------------------------Defs---------------------------------------------

inductive Bool where
  | -- Defina
deriving Repr

open Bool


-- Logical and         (∧)
def land : Bool → Bool → Bool
  | _, _ => True

-- Logical or          (∨)
def lor : α → α
  | _ => sorry

-- Logical implies     (→)
def limplies : α → α
  | _ => sorry

-- Logical impliedBy   (←)
def limplied : α → α
  | _ => sorry

-- Logical not         (¬)
def lnot : α → α
  | _ => sorry

-- Logical NAND
def lnand : α → α
  | _ => sorry

-- Logical NOR
def lneg : α → α
  | _ => sorry

-- Logical Exclusive-or
def lxou : α → α
  | _ => sorry

-- Cuidado!
-- Use "Lv1.Nat" ao inves de "Nat"

--  Par
def isEven : α → α
  | _ => sorry

-- Impar
def isOdd : α → α
  | _ => sorry

#eval isLt (S O) (S (S O))
#eval isLt (S (S (S O))) (S O)

-- (<)
def isLt : α → α
  | _ => sorry

#eval isLt (S O) (S (S O))
#eval isLt (S (S (S O))) (S O)

-- (==)
def isEq : α → α
  | _ => sorry

#eval isEq O (S (S O))
#eval isEq (S O) (S O)

-- (>)
def isGt : α → α
  | _ => sorry

#eval isGt O (S (S O))
#eval isGt (S (S O)) (S O)

-----------------------------------------Demons---------------------------------------------


theorem ⁻/-nome-/ :
  ∃(e : Bool), ∀(b : Bool), (land b e = b) ∧ (land e b = b) :=
by
  sorry


theorem /-nome-/ :
  ∃(e : Bool), ∀(b : Bool), (lor b e = b) ∧ (lor e b = b) :=
by
  sorry

theorem /-nome-/ :
   ∀(b : Bool), lneg (lneg b) = b :=
by
  sorry

theorem /-nome-/ :
  ∀(n : Nat), isLt O n = True ∨ isEq O n :=
by
  sorry

theorem /-nome-/ :
∀(n : Nat), isEven n = lneg (isOdd n) :=
by
  sorry
