import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellCycleCanonicalLaneLean.CyclinDynamics
import HautevilleHouse.CellBiologyCellCycleCanonicalLaneLean.CheckpointControl
import HautevilleHouse.CellBiologyCellCycleCanonicalLaneLean.CellDivisionMechanism

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CellCycleRegulationPackage where
  cyclinDynamics : CyclinDynamicsPackage
  checkpointControl : CheckpointControlPackage
  cellDivisionMechanism : CellDivisionMechanismPackage

structure CellCycleRegulationEvidence (R : CellCycleRegulationPackage) where
  cyclinDynamicsEvidence : CyclinDynamicsEvidence R.cyclinDynamics
  checkpointControlEvidence : CheckpointControlEvidence R.checkpointControl
  cellDivisionMechanismEvidence : CellDivisionMechanismEvidence R.cellDivisionMechanism

def CellCycleRegulationClosed (R : CellCycleRegulationPackage) : Prop :=
  CyclinDynamicsClosed R.cyclinDynamics ∧ CheckpointControlClosed R.checkpointControl ∧ CellDivisionMechanismClosed R.cellDivisionMechanism

theorem cell_cycle_regulation_closed_from_evidence (R : CellCycleRegulationPackage) (E : CellCycleRegulationEvidence R) : CellCycleRegulationClosed R := by
  refine And.intro (cyclin_dynamics_closed_from_evidence R.cyclinDynamics E.cyclinDynamicsEvidence)
    (And.intro (checkpoint_control_closed_from_evidence R.checkpointControl E.checkpointControlEvidence)
      (cell_division_mechanism_closed_from_evidence R.cellDivisionMechanism E.cellDivisionMechanismEvidence))

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse