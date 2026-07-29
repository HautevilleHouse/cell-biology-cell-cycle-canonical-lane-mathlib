import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CellCycleAdmittedObject where
  cellType : Type
  phaseMarkers : List String
  cycleRegulationLogic : Prop
  cycleRegulationLogicTerm : cycleRegulationLogic

structure AdmissibleClass where
  object : CellCycleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CellCycleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CellCycleWitnessClosed (O : CellCycleAdmittedObject) : Prop :=
  O.cycleRegulationLogic

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse