structure LifeUnit where
  self_ref : LifeUnit → LifeUnit
  self_contained : ∀ (u : LifeUnit), self_ref u = u
  self_defined : ∀ (f : LifeUnit → LifeUnit), f u = u

def LifeUnit.isSelfReferential (u : LifeUnit) : Prop :=
  u.self_ref u = u
