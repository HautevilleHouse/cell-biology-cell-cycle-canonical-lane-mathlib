import canonicalLaneMathlib.CellCycleObjects

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CheckpointPackage where
  g1sCheckpoint : Prop
  g2mCheckpoint : Prop
  spindleCheckpoint : Prop
  dnaDamageCheckpoint : Prop

structure CheckpointEvidence (C : CheckpointPackage) where
  g1sClosed : C.g1sCheckpoint
  g2mClosed : C.g2mCheckpoint
  spindleClosed : C.spindleCheckpoint
  dnaDamageClosed : C.dnaDamageCheckpoint

def CheckpointClosed (C : CheckpointPackage) : Prop :=
  C.g1sCheckpoint ∧ C.g2mCheckpoint ∧ C.spindleCheckpoint ∧ C.dnaDamageCheckpoint

theorem checkpoint_closed_from_evidence (C : CheckpointPackage) (E : CheckpointEvidence C) :
    CheckpointClosed C := by
  exact And.intro E.g1sClosed (And.intro E.g2mClosed (And.intro E.spindleClosed E.dnaDamageClosed))

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse