import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CellDivisionMechanismPackage where
  chromosomeCondensation : Prop
  mitoticSpindleFormation : Prop
  cytokinesisExecution : Prop
  abscissionComplete : Prop

structure CellDivisionMechanismEvidence (C : CellDivisionMechanismPackage) where
  chromosomeCondensationClosed : C.chromosomeCondensation
  mitoticSpindleFormationClosed : C.mitoticSpindleFormation
  cytokinesisExecutionClosed : C.cytokinesisExecution
  abscissionCompleteClosed : C.abscissionComplete

def CellDivisionMechanismClosed (C : CellDivisionMechanismPackage) : Prop :=
  C.chromosomeCondensation ∧ C.mitoticSpindleFormation ∧ C.cytokinesisExecution ∧ C.abscissionComplete

theorem cell_division_mechanism_closed_from_evidence (C : CellDivisionMechanismPackage) (E : CellDivisionMechanismEvidence C) : CellDivisionMechanismClosed C := by
  exact And.intro E.chromosomeCondensationClosed (And.intro E.mitoticSpindleFormationClosed (And.intro E.cytokinesisExecutionClosed E.abscissionCompleteClosed))

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse