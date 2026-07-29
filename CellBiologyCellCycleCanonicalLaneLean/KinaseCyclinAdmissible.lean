import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CyclinDependentKinase where
  catalyticSubunit : Type u
  regulatorySubunit : Type u
  cyclinBinding : Prop
  activeState : Prop
  substratePhosphorylation : Prop

structure CellCycleCheckpoint where
  checkpointName : String
  sensorActivation : Prop
  signalTransduction : Prop
  effectorExecution : Prop
  g1Checkpoint : Prop
  g2Checkpoint : Prop
  spindleCheckpoint : Prop

structure CellCyclePhase where
  phaseName : String
  phaseDuration : Prop
  regulatoryKinase : CyclinDependentKinase

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse