import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CellCyclePhase where
  name : String
  duration : Nat

structure CellCycleCheckpoint where
  checkpointType : String
  passed : Prop

structure CellCycleCell where
  phase : CellCyclePhase
  checkpoints : List CellCycleCheckpoint
  dnaIntegrity : Bool
  cyclinLevels : Nat

structure CellCycleAdmittedObject where
  cell : CellCycleCell
  allCheckpointsPassed : Prop
  dnaIntact : Prop
  cyclinSufficient : Prop
  conclusion : allCheckpointsPassed ∧ dnaIntact ∧ cyclinSufficient

structure CellCycleEndgameState where
  object : CellCycleAdmittedObject

def CellCycleWitnessClosed (O : CellCycleAdmittedObject) : Prop :=
  O.conclusion

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse