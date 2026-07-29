import HautevilleHouse.CellBiologyCellCycleCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CheckpointPackage where
  checkpointName : String
  regulators : List String
  cyclinRequirement : ℕ
  cdkRequirement : ℕ
  dnaCheck : Prop
  spindleCheck : Prop
  outcome : Prop

structure CheckpointEvidence (C : CheckpointPackage) where
  dnaCheckClosed : C.dnaCheck
  spindleCheckClosed : C.spindleCheck
  outcomeClosed : C.outcome

def CheckpointClosed (C : CheckpointPackage) : Prop :=
  C.dnaCheck ∧ C.spindleCheck ∧ C.outcome

theorem checkpoint_closed_from_evidence (C : CheckpointPackage) (E : CheckpointEvidence C) :
    CheckpointClosed C := by
  exact And.intro E.dnaCheckClosed (And.intro E.spindleCheckClosed E.outcomeClosed)

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse