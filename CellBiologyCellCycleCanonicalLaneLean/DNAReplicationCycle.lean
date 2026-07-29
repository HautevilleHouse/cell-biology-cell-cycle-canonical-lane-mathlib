import HautevilleHouse.CellBiologyCellCycleCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure DNAReplicationCyclePackage (A : AdmissibleClass) where
  originActivation : Prop
  replicationFork : Prop
  leadingStrand : Prop
  laggingStrand : Prop
  okazakiFragments : Prop

structure DNAReplicationCycleEvidence {A : AdmissibleClass} (D : DNAReplicationCyclePackage A) where
  originActivationClosed : D.originActivation
  replicationForkClosed : D.replicationFork
  leadingStrandClosed : D.leadingStrand
  laggingStrandClosed : D.laggingStrand
  okazakiFragmentsClosed : D.okazakiFragments

def DNAReplicationCycleClosed {A : AdmissibleClass} (D : DNAReplicationCyclePackage A) : Prop :=
  D.originActivation ∧ D.replicationFork ∧ D.leadingStrand ∧ D.laggingStrand ∧ D.okazakiFragments

theorem dna_replication_cycle_closed_from_evidence
    {A : AdmissibleClass} (D : DNAReplicationCyclePackage A)
    (E : DNAReplicationCycleEvidence D) : DNAReplicationCycleClosed D := by
  exact And.intro E.originActivationClosed
    (And.intro E.replicationForkClosed
      (And.intro E.leadingStrandClosed
        (And.intro E.laggingStrandClosed E.okazakiFragmentsClosed)))

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse