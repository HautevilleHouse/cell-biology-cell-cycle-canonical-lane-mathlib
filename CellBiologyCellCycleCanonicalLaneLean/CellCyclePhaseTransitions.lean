import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CellCyclePhaseTransitionsPackage where
  g1Phase : Prop
  sPhase : Prop
  g2Phase : Prop
  mitosisPhase : Prop
  cytokinesis : Prop

structure CellCyclePhaseTransitionsEvidence (P : CellCyclePhaseTransitionsPackage) where
  g1PhaseClosed : P.g1Phase
  sPhaseClosed : P.sPhase
  g2PhaseClosed : P.g2Phase
  mitosisPhaseClosed : P.mitosisPhase
  cytokinesisClosed : P.cytokinesis

def CellCyclePhaseTransitionsClosed (P : CellCyclePhaseTransitionsPackage) : Prop :=
  P.g1Phase ∧ P.sPhase ∧ P.g2Phase ∧ P.mitosisPhase ∧ P.cytokinesis

theorem cell_cycle_phase_transitions_closed_from_evidence (P : CellCyclePhaseTransitionsPackage) (E : CellCyclePhaseTransitionsEvidence P) :
    CellCyclePhaseTransitionsClosed P := by
  exact And.intro E.g1PhaseClosed (And.intro E.sPhaseClosed (And.intro E.g2PhaseClosed (And.intro E.mitosisPhaseClosed E.cytokinesisClosed)))

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse