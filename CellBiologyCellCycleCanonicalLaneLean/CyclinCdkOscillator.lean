import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CyclinCdkPair where
  cyclinConcentration : ℝ → ℝ
  cdkActivity : ℝ → ℝ
  activationKinetics : Prop
  mutualRegulation : Prop

structure CyclinCdkOscillatorPackage where
  cyclinCdkPairs : List CyclinCdkPair
  positiveFeedbackLoop : Prop
  timeDelay : ℝ
  ultrasensitivity : Prop

structure CyclinCdkOscillatorEvidence (C : CyclinCdkOscillatorPackage) where
  positiveFeedbackLoopClosed : C.positiveFeedbackLoop
  timeDelayPositive : C.timeDelay > 0
  ultrasensitivityClosed : C.ultrasensitivity

def CyclinCdkOscillatorClosed (C : CyclinCdkOscillatorPackage) : Prop :=
  C.positiveFeedbackLoop ∧ C.ultrasensitivity

theorem cyclin_cdk_oscillator_closed_from_evidence (C : CyclinCdkOscillatorPackage)
    (E : CyclinCdkOscillatorEvidence C) : CyclinCdkOscillatorClosed C := by
  exact And.intro E.positiveFeedbackLoopClosed E.ultrasensitivityClosed

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse