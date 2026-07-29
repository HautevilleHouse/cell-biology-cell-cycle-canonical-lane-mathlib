import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CellCycleCheckpointIntegration (A : AdmissibleClass) where
  signalIntegration : Prop
  cellSizeMonitoring : Prop
  dnaReplicationCheckpoint : Prop
  chromosomeSegregationCheckpoint : Prop
  growthFactorDependence : Prop

def CellCycleCheckpointIntegrationClosed (A : AdmissibleClass) (I : CellCycleCheckpointIntegration A) : Prop :=
  I.signalIntegration ∧ I.cellSizeMonitoring ∧ I.dnaReplicationCheckpoint ∧ I.chromosomeSegregationCheckpoint ∧ I.growthFactorDependence

theorem cell_cycle_checkpoint_integration_closed (A : AdmissibleClass) (I : CellCycleCheckpointIntegration A) (E : CellCycleCheckpointIntegrationEvidence A I) :
    CellCycleCheckpointIntegrationClosed A I := by
  exact And.intro E.signalIntegrationClosed (And.intro E.cellSizeMonitoringClosed (And.intro E.dnaReplicationCheckpointClosed (And.intro E.chromosomeSegregationCheckpointClosed E.growthFactorDependenceClosed)))

structure CellCycleCheckpointIntegrationEvidence (A : AdmissibleClass) (I : CellCycleCheckpointIntegration A) where
  signalIntegrationClosed : I.signalIntegration
  cellSizeMonitoringClosed : I.cellSizeMonitoring
  dnaReplicationCheckpointClosed : I.dnaReplicationCheckpoint
  chromosomeSegregationCheckpointClosed : I.chromosomeSegregationCheckpoint
  growthFactorDependenceClosed : I.growthFactorDependence

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse