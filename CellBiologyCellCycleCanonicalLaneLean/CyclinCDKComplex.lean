import HautevilleHouse.CellBiologyCellCycleCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure CyclinCDKComplexPackage (A : AdmissibleClass) where
  cyclinD : Prop
  cyclinE : Prop
  cyclinA : Prop
  cyclinB : Prop
  cdkActivation : Prop

structure CyclinCDKComplexEvidence {A : AdmissibleClass} (C : CyclinCDKComplexPackage A) where
  cyclinDClosed : C.cyclinD
  cyclinEClosed : C.cyclinE
  cyclinAClosed : C.cyclinA
  cyclinBClosed : C.cyclinB
  cdkActivationClosed : C.cdkActivation

def CyclinCDKComplexClosed {A : AdmissibleClass} (C : CyclinCDKComplexPackage A) : Prop :=
  C.cyclinD ∧ C.cyclinE ∧ C.cyclinA ∧ C.cyclinB ∧ C.cdkActivation

theorem cyclin_cdk_complex_closed_from_evidence
    {A : AdmissibleClass} (C : CyclinCDKComplexPackage A)
    (E : CyclinCDKComplexEvidence C) : CyclinCDKComplexClosed C := by
  exact And.intro E.cyclinDClosed
    (And.intro E.cyclinEClosed
      (And.intro E.cyclinAClosed
        (And.intro E.cyclinBClosed E.cdkActivationClosed)))

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse