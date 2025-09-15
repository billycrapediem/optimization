import Mathlib.Topology.EMetricSpace.Lipschitz
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Calculus.FDeriv.Basic

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem lipschitz_continuous_upper_bound {E : Type*}
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    {f : E → ℝ} {f' : E → (E →L[ℝ] ℝ)} {l : NNReal}
    (hd : ∀ x : E, HasFDerivAt f (f' x) x)
    (hl : LipschitzWith l f') :
    ∀ (x y : E), f y ≤ f x + (f' x) (y - x)
      + l / 2 * ‖y - x‖ ^ 2 := by
  sorry
