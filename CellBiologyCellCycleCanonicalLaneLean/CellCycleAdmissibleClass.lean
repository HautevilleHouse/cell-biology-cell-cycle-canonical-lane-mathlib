import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CellCycleAdmittedObject where
  cell : Type u
  phaseMarkers : List String
  cyclinConcentrations : List Float
  checkpointFlags : Prop
  conclusion : checkpointFlags

def CellCycleWitnessClosed (O : CellCycleAdmittedObject) : Prop :=
  O.checkpointFlags

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse