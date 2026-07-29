import canonicalLaneMathlib.CheckpointPackage

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CheckpointEvidenceTerms (C : CheckpointPackage) where
  g1sCheckpointTerm : C.g1sCheckpoint
  g2mCheckpointTerm : C.g2mCheckpoint
  spindleCheckpointTerm : C.spindleCheckpoint
  dnaDamageCheckpointTerm : C.dnaDamageCheckpoint
  checkpointClosed : CheckpointClosed C

def CheckpointPackage.evidenceTerms (C : CheckpointPackage) (E : CheckpointEvidence C) : CheckpointEvidenceTerms C :=
  {
    g1sCheckpointTerm := E.g1sClosed
    g2mCheckpointTerm := E.g2mClosed
    spindleCheckpointTerm := E.spindleClosed
    dnaDamageCheckpointTerm := E.dnaDamageClosed
    checkpointClosed := checkpoint_closed_from_evidence C E
  }

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse