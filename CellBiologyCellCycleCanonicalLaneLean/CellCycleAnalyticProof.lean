import canonicalLaneMathlib.CellCycleEvidenceTerms

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CheckpointAnalyticCertificate (C : CheckpointPackage) where
  g1sVerified : Prop
  g2mVerified : Prop
  spindleVerified : Prop
  dnaDamageVerified : Prop
  g1sClosed : g1sVerified
  g2mClosed : g2mVerified
  spindleClosed : spindleVerified
  dnaDamageClosed : dnaDamageVerified
  checkpointEvidence : CheckpointEvidence C

def CheckpointAnalyticCertificateClosed (C : CheckpointPackage) (cert : CheckpointAnalyticCertificate C) : Prop :=
  cert.g1sVerified ∧ cert.g2mVerified ∧ cert.spindleVerified ∧ cert.dnaDamageVerified ∧ CheckpointClosed C

theorem checkpoint_analytic_certificate_closed
    (C : CheckpointPackage) (cert : CheckpointAnalyticCertificate C) :
    CheckpointAnalyticCertificateClosed C cert := by
  exact And.intro cert.g1sClosed (And.intro cert.g2mClosed (And.intro cert.spindleClosed (And.intro cert.dnaDamageClosed (checkpoint_closed_from_evidence C cert.checkpointEvidence))))

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse