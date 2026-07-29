import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure ReplicationOrigin where
  originId : String
  licensingStatus : Prop
  firingTime : ℝ

structure DNAReplicationPackage where
  originsLicensed : List ReplicationOrigin
  replicationForks : Prop
  replicationTiming : Prop
  licensingComplete : Prop
  forkStability : Prop

structure DNAReplicationEvidence (D : DNAReplicationPackage) where
  licensingCompleteClosed : D.licensingComplete
  replicationTimingClosed : D.replicationTiming
  forkStabilityClosed : D.forkStability

def DNAReplicationClosed (D : DNAReplicationPackage) : Prop :=
  D.licensingComplete ∧ D.replicationTiming ∧ D.forkStability

theorem dna_replication_closed_from_evidence (D : DNAReplicationPackage)
    (E : DNAReplicationEvidence D) : DNAReplicationClosed D := by
  exact And.intro E.licensingCompleteClosed
    (And.intro E.replicationTimingClosed E.forkStabilityClosed)

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse