import HautevilleHouse.CellBiologyCellCycleCanonicalLaneLean.CellCycleAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CheckpointPackage {O : CellCycleAdmittedObject} where
  g1Checkpoint : Prop
  g2Checkpoint : Prop
  mCheckpoint : Prop
  dnaIntegrityChecked : g1Checkpoint ∧ g2Checkpoint ∧ mCheckpoint

structure CheckpointEvidence {O : CellCycleAdmittedObject} (C : CheckpointPackage O) where
  g1CheckpointClosed : C.g1Checkpoint
  g2CheckpointClosed : C.g2Checkpoint
  mCheckpointClosed : C.mCheckpoint
  dnaIntegrityCheckedClosed : C.dnaIntegrityChecked

def CheckpointClosed {O : CellCycleAdmittedObject} (C : CheckpointPackage O) : Prop :=
  C.g1Checkpoint ∧ C.g2Checkpoint ∧ C.mCheckpoint ∧ C.dnaIntegrityChecked

theorem checkpoint_closed_from_evidence {O : CellCycleAdmittedObject}
    (C : CheckpointPackage O) (E : CheckpointEvidence C) : CheckpointClosed C := by
  exact And.intro E.g1CheckpointClosed (And.intro E.g2CheckpointClosed (And.intro E.mCheckpointClosed E.dnaIntegrityCheckedClosed))

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse