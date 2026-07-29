import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure GrowthFactorsPackage where
  growthFactorBinding : Prop
  receptorActivation : Prop
  signalTransduction : Prop
  cellCycleEntry : Prop
  mitogenicSignals : Prop

structure GrowthFactorsEvidence (G : GrowthFactorsPackage) where
  growthFactorBindingClosed : G.growthFactorBinding
  receptorActivationClosed : G.receptorActivation
  signalTransductionClosed : G.signalTransduction
  cellCycleEntryClosed : G.cellCycleEntry
  mitogenicSignalsClosed : G.mitogenicSignals

def GrowthFactorsClosed (G : GrowthFactorsPackage) : Prop :=
  G.growthFactorBinding ∧ G.receptorActivation ∧ G.signalTransduction ∧
  G.cellCycleEntry ∧ G.mitogenicSignals

theorem growth_factors_closed_from_evidence (G : GrowthFactorsPackage)
    (E : GrowthFactorsEvidence G) : GrowthFactorsClosed G := by
  exact And.intro E.growthFactorBindingClosed (And.intro E.receptorActivationClosed
    (And.intro E.signalTransductionClosed (And.intro E.cellCycleEntryClosed
      E.mitogenicSignalsClosed)))

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse