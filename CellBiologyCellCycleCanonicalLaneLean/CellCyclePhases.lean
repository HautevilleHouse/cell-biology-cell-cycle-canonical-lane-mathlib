import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CellCyclePhases (A : AdmissibleClass) where
  g1Phase : Prop
  sPhase : Prop
  g2Phase : Prop
  mitoticPhase : Prop
  phaseProgression : Prop

def CellCyclePhasesClosed (A : AdmissibleClass) (P : CellCyclePhases A) : Prop :=
  P.g1Phase ∧ P.sPhase ∧ P.g2Phase ∧ P.mitoticPhase ∧ P.phaseProgression

theorem cell_cycle_phases_closed (A : AdmissibleClass) (P : CellCyclePhases A) (E : CellCyclePhasesEvidence A P) :
    CellCyclePhasesClosed A P := by
  exact And.intro E.g1PhaseClosed (And.intro E.sPhaseClosed (And.intro E.g2PhaseClosed (And.intro E.mitoticPhaseClosed E.phaseProgressionClosed)))

structure CellCyclePhasesEvidence (A : AdmissibleClass) (P : CellCyclePhases A) where
  g1PhaseClosed : P.g1Phase
  sPhaseClosed : P.sPhase
  g2PhaseClosed : P.g2Phase
  mitoticPhaseClosed : P.mitoticPhase
  phaseProgressionClosed : P.phaseProgression

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse