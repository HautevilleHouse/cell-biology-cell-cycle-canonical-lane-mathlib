import HautevilleHouse.CellBiologyCellCycleCanonicalLaneLean.CellCycleCheckpointStructure

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CyclinRegulationPackage {O : CellCycleAdmittedObject} (C : CheckpointPackage O) where
  cyclinDRegulation : Prop
  cyclinERegulation : Prop
  cyclinARegulation : Prop
  cyclinBRegulation : Prop
  cdkActivation : cyclinDRegulation ∧ cyclinERegulation ∧ cyclinARegulation ∧ cyclinBRegulation

structure CyclinRegulationEvidence {O : CellCycleAdmittedObject} {C : CheckpointPackage O}
    (R : CyclinRegulationPackage C) where
  cyclinDRegulationClosed : R.cyclinDRegulation
  cyclinERegulationClosed : R.cyclinERegulation
  cyclinARegulationClosed : R.cyclinARegulation
  cyclinBRegulationClosed : R.cyclinBRegulation
  cdkActivationClosed : R.cdkActivation

def CyclinRegulationClosed {O : CellCycleAdmittedObject} {C : CheckpointPackage O}
    (R : CyclinRegulationPackage C) : Prop :=
  R.cyclinDRegulation ∧ R.cyclinERegulation ∧ R.cyclinARegulation ∧ R.cyclinBRegulation ∧ R.cdkActivation

theorem cyclin_regulation_closed_from_evidence {O : CellCycleAdmittedObject} {C : CheckpointPackage O}
    (R : CyclinRegulationPackage C) (E : CyclinRegulationEvidence R) : CyclinRegulationClosed R := by
  exact And.intro E.cyclinDRegulationClosed (And.intro E.cyclinERegulationClosed (And.intro E.cyclinARegulationClosed (And.intro E.cyclinBRegulationClosed E.cdkActivationClosed)))

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse