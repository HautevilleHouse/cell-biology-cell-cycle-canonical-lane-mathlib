import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CyclinCDKRegulationPackage where
  cyclinExpression : Prop
  cdkActivity : Prop
  phosphorylationEvents : Prop
  complexFormation : Prop

structure CyclinCDKRegulationEvidence (P : CyclinCDKRegulationPackage) where
  cyclinExpressionClosed : P.cyclinExpression
  cdkActivityClosed : P.cdkActivity
  phosphorylationEventsClosed : P.phosphorylationEvents
  complexFormationClosed : P.complexFormation

def CyclinCDKRegulationClosed (P : CyclinCDKRegulationPackage) : Prop :=
  P.cyclinExpression ∧ P.cdkActivity ∧ P.phosphorylationEvents ∧ P.complexFormation

theorem cyclin_cdk_regulation_closed_from_evidence (P : CyclinCDKRegulationPackage) (E : CyclinCDKRegulationEvidence P) :
    CyclinCDKRegulationClosed P := by
  exact And.intro E.cyclinExpressionClosed (And.intro E.cdkActivityClosed (And.intro E.phosphorylationEventsClosed E.complexFormationClosed))

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse