import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CellDivisionPackage where
  mitosis : Prop
  cytokinesis : Prop
  chromosomeSegregation : Prop
  spindleFormation : Prop
  contractileRing : Prop

structure CellDivisionEvidence (C : CellDivisionPackage) where
  mitosisClosed : C.mitosis
  cytokinesisClosed : C.cytokinesis
  chromosomeSegregationClosed : C.chromosomeSegregation
  spindleFormationClosed : C.spindleFormation
  contractileRingClosed : C.contractileRing

def CellDivisionClosed (C : CellDivisionPackage) : Prop :=
  C.mitosis ∧ C.cytokinesis ∧ C.chromosomeSegregation ∧ C.spindleFormation ∧ C.contractileRing

theorem cell_division_closed_from_evidence (C : CellDivisionPackage)
    (E : CellDivisionEvidence C) : CellDivisionClosed C := by
  exact And.intro E.mitosisClosed (And.intro E.cytokinesisClosed
    (And.intro E.chromosomeSegregationClosed (And.intro E.spindleFormationClosed
      E.contractileRingClosed)))

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse