import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellCycleCanonicalLaneLean.KinaseCyclinAdmissible

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellCycleCheckpoint.g1Checkpoint (A.object : CellCycleCheckpoint)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse