import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CellCycleCheckpointsPackage where
  g1CheckpointFunctional : Prop
  g2CheckpointFunctional : Prop
  spindleCheckpointFunctional : Prop
  dnaDamageCheckpointActivated : Prop
  checkpointSignalingIntegrity : Prop

structure CellCycleCheckpointsEvidence (C : CellCycleCheckpointsPackage) where
  g1CheckpointFunctionalClosed : C.g1CheckpointFunctional
  g2CheckpointFunctionalClosed : C.g2CheckpointFunctional
  spindleCheckpointFunctionalClosed : C.spindleCheckpointFunctional
  dnaDamageCheckpointActivatedClosed : C.dnaDamageCheckpointActivated
  checkpointSignalingIntegrityClosed : C.checkpointSignalingIntegrity

def CellCycleCheckpointsClosed (C : CellCycleCheckpointsPackage) : Prop :=
  C.g1CheckpointFunctional ∧ C.g2CheckpointFunctional ∧ C.spindleCheckpointFunctional ∧
  C.dnaDamageCheckpointActivated ∧ C.checkpointSignalingIntegrity

theorem cell_cycle_checkpoints_closed_from_evidence (C : CellCycleCheckpointsPackage)
    (E : CellCycleCheckpointsEvidence C) : CellCycleCheckpointsClosed C := by
  exact And.intro E.g1CheckpointFunctionalClosed
    (And.intro E.g2CheckpointFunctionalClosed
      (And.intro E.spindleCheckpointFunctionalClosed
        (And.intro E.dnaDamageCheckpointActivatedClosed
          E.checkpointSignalingIntegrityClosed)))

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse