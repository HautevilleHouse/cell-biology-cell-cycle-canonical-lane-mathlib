import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CellCycleProteolysis (A : AdmissibleClass) where
  apcCCyclosome : Prop
  scfUbiquitinLigase : Prop
  ubiquitinationTargets : Prop
  proteasomalDegradation : Prop
  degradationTiming : Prop

def CellCycleProteolysisClosed (A : AdmissibleClass) (P : CellCycleProteolysis A) : Prop :=
  P.apcCCyclosome ∧ P.scfUbiquitinLigase ∧ P.ubiquitinationTargets ∧ P.proteasomalDegradation ∧ P.degradationTiming

theorem cell_cycle_proteolysis_closed (A : AdmissibleClass) (P : CellCycleProteolysis A) (E : CellCycleProteolysisEvidence A P) :
    CellCycleProteolysisClosed A P := by
  exact And.intro E.apcCCyclosomeClosed (And.intro E.scfUbiquitinLigaseClosed (And.intro E.ubiquitinationTargetsClosed (And.intro E.proteasomalDegradationClosed E.degradationTimingClosed)))

structure CellCycleProteolysisEvidence (A : AdmissibleClass) (P : CellCycleProteolysis A) where
  apcCCyclosomeClosed : P.apcCCyclosome
  scfUbiquitinLigaseClosed : P.scfUbiquitinLigase
  ubiquitinationTargetsClosed : P.ubiquitinationTargets
  proteasomalDegradationClosed : P.proteasomalDegradation
  degradationTimingClosed : P.degradationTiming

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse