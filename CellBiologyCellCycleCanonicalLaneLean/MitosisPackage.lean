import HautevilleHouse.CellBiologyCellCycleCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure MitosisPackage (A : AdmissibleClass) where
  prophase : Prop
  prometaphase : Prop
  metaphase : Prop
  anaphase : Prop
  telophase : Prop

structure MitosisEvidence {A : AdmissibleClass} (M : MitosisPackage A) where
  prophaseClosed : M.prophase
  prometaphaseClosed : M.prometaphase
  metaphaseClosed : M.metaphase
  anaphaseClosed : M.anaphase
  telophaseClosed : M.telophase

def MitosisClosed {A : AdmissibleClass} (M : MitosisPackage A) : Prop :=
  M.prophase ∧ M.prometaphase ∧ M.metaphase ∧ M.anaphase ∧ M.telophase

theorem mitosis_closed_from_evidence
    {A : AdmissibleClass} (M : MitosisPackage A)
    (E : MitosisEvidence M) : MitosisClosed M := by
  exact And.intro E.prophaseClosed
    (And.intro E.prometaphaseClosed
      (And.intro E.metaphaseClosed
        (And.intro E.anaphaseClosed E.telophaseClosed)))

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse