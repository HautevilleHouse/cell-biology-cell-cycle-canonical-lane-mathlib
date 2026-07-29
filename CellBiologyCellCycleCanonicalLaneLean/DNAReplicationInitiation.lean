import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure DNAReplicationInitiationPackage where
  originLicensing : Prop
  originActivation : Prop
  replicationForkAssembly : Prop
  helicaseLoading : Prop

structure DNAReplicationInitiationEvidence (D : DNAReplicationInitiationPackage) where
  originLicensingClosed : D.originLicensing
  originActivationClosed : D.originActivation
  replicationForkAssemblyClosed : D.replicationForkAssembly
  helicaseLoadingClosed : D.helicaseLoading

def DNAReplicationInitiationClosed (D : DNAReplicationInitiationPackage) : Prop :=
  D.originLicensing ∧ D.originActivation ∧ D.replicationForkAssembly ∧ D.helicaseLoading

theorem dna_replication_initiation_closed_from_evidence (D : DNAReplicationInitiationPackage) (E : DNAReplicationInitiationEvidence D) :
    DNAReplicationInitiationClosed D := by
  exact And.intro E.originLicensingClosed (And.intro E.originActivationClosed (And.intro E.replicationForkAssemblyClosed E.helicaseLoadingClosed))

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse