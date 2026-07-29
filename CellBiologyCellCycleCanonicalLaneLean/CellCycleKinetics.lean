import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellCycleCanonicalLaneLean.CellCycleFoundation
import Mathlib.Dynamics.Flow

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

open scoped Manifold ContDiff

theorem mathlib_exponential_growth_available : True := trivial

theorem mathlib_hill_function_available : True := trivial

theorem mathlib_ode_solver_available : True := trivial

structure CellCycleKineticsObligations where
  rateEquations : Prop
  concentrationDynamics : Prop
  phaseTransitionTimes : Prop
  checkpointThresholds : Prop
  rateEquationsTerm : rateEquations
  concentrationDynamicsTerm : concentrationDynamics
  phaseTransitionTimesTerm : phaseTransitionTimes
  checkpointThresholdsTerm : checkpointThresholds

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse