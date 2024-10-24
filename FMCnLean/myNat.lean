/-
Gostaria de definir um tipo que age como os Naturais que
conheço desde a infância. Com o que aprendemos sobre recursão,
como deveríamos definir esse tipo?
-/
inductive myNat where
  | sorry

/-
Agora vamos para as operações!
-/

/- A adição(+) que tenho no meu coração,
lembre-se de colocar o tipo certo da operação!
-/
def add : α → α
  | _ => sorry

-- Multiplicação (*)
def mul : α → α
  | _ => sorry

-- Exponenciação (^)
def exp : α → α
  | _ => sorry

-- Retorna o predecessor do Natural, quando for 0, retorna 0.
def pred : α → α
  | _ => sorry

-- Função que diz se um Natural é menor/igual(≤) do que o outro.
def leq : α → α
  | _ => sorry

-- Será que meu Natural é par?
def even : α → α
  | _ => sorry

-- Será que meu Natural é ímpar?
def odd : α → α
  | _ => sorry


