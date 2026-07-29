import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellCycleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.cycleRegulationLogicTerm

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse