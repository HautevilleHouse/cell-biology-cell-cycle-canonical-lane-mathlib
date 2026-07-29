import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CheckpointArrest (A : AdmissibleClass) where
  dnaDamageCheckpoint : Prop
  spindleCheckpoint : Prop
  growthCheckpoint : Prop
  arrestSignaling : Prop
  arrestResolution : Prop

def CheckpointArrestClosed (A : AdmissibleClass) (C : CheckpointArrest A) : Prop :=
  C.dnaDamageCheckpoint ∧ C.spindleCheckpoint ∧ C.growthCheckpoint ∧ C.arrestSignaling ∧ C.arrestResolution

theorem checkpoint_arrest_closed (A : AdmissibleClass) (C : CheckpointArrest A) (E : CheckpointArrestEvidence A C) :
    CheckpointArrestClosed A C := by
  exact And.intro E.dnaDamageCheckpointClosed (And.intro E.spindleCheckpointClosed (And.intro E.growthCheckpointClosed (And.intro E.arrestSignalingClosed E.arrestResolutionClosed)))

structure CheckpointArrestEvidence (A : AdmissibleClass) (C : CheckpointArrest A) where
  dnaDamageCheckpointClosed : C.dnaDamageCheckpoint
  spindleCheckpointClosed : C.spindleCheckpoint
  growthCheckpointClosed : C.growthCheckpoint
  arrestSignalingClosed : C.arrestSignaling
  arrestResolutionClosed : C.arrestResolution

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse