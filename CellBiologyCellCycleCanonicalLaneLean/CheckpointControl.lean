import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CheckpointControlPackage where
  dnaDamageSensor : Prop
  spindleAssemblyCheckpoint : Prop
  p53Activation : Prop
  growthFactorDependence : Prop

structure CheckpointControlEvidence (C : CheckpointControlPackage) where
  dnaDamageSensorClosed : C.dnaDamageSensor
  spindleAssemblyCheckpointClosed : C.spindleAssemblyCheckpoint
  p53ActivationClosed : C.p53Activation
  growthFactorDependenceClosed : C.growthFactorDependence

def CheckpointControlClosed (C : CheckpointControlPackage) : Prop :=
  C.dnaDamageSensor ∧ C.spindleAssemblyCheckpoint ∧ C.p53Activation ∧ C.growthFactorDependence

theorem checkpoint_control_closed_from_evidence (C : CheckpointControlPackage) (E : CheckpointControlEvidence C) : CheckpointControlClosed C := by
  exact And.intro E.dnaDamageSensorClosed (And.intro E.spindleAssemblyCheckpointClosed (And.intro E.p53ActivationClosed E.growthFactorDependenceClosed))

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse