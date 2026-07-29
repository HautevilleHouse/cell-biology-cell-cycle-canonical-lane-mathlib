import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CellCyclePerturbationPackage where
  oncogeneActivation : Prop
  tumorSuppressorLoss : Prop
  chemotherapeuticArrest : Prop
  environmentalStress : Prop

structure CellCyclePerturbationEvidence (P : CellCyclePerturbationPackage) where
  oncogeneActivationClosed : P.oncogeneActivation
  tumorSuppressorLossClosed : P.tumorSuppressorLoss
  chemotherapeuticArrestClosed : P.chemotherapeuticArrest
  environmentalStressClosed : P.environmentalStress

def CellCyclePerturbationClosed (P : CellCyclePerturbationPackage) : Prop :=
  P.oncogeneActivation ∧ P.tumorSuppressorLoss ∧ P.chemotherapeuticArrest ∧ P.environmentalStress

theorem cell_cycle_perturbation_closed_from_evidence (P : CellCyclePerturbationPackage) (E : CellCyclePerturbationEvidence P) : CellCyclePerturbationClosed P := by
  exact And.intro E.oncogeneActivationClosed (And.intro E.tumorSuppressorLossClosed (And.intro E.chemotherapeuticArrestClosed E.environmentalStressClosed))

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse