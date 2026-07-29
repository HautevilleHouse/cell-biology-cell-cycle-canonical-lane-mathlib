import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CellCycleSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellCycleAdmittedObject where
  space : CellCycleSpace
  cellCycleDefined : Prop
  phasesSequential : Prop
  checkpointsFunctional : Prop
  regulationCoherent : Prop
  conclusion : phasesSequential ∧ checkpointsFunctional ∧ regulationCoherent

structure CellCycleEndgameState where
  object : CellCycleAdmittedObject

def CellCycleWitnessClosed (O : CellCycleAdmittedObject) : Prop :=
  O.conclusion

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse