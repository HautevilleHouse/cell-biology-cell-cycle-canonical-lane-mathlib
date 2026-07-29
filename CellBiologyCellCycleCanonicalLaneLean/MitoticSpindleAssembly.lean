import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure MitoticSpindleAssemblyPackage where
  centrosomeDuplication : Prop
  microtubuleNucleation : Prop
  kinetochoreAttachment : Prop
  spindlePoleFormation : Prop

structure MitoticSpindleAssemblyEvidence (M : MitoticSpindleAssemblyPackage) where
  centrosomeDuplicationClosed : M.centrosomeDuplication
  microtubuleNucleationClosed : M.microtubuleNucleation
  kinetochoreAttachmentClosed : M.kinetochoreAttachment
  spindlePoleFormationClosed : M.spindlePoleFormation

def MitoticSpindleAssemblyClosed (M : MitoticSpindleAssemblyPackage) : Prop :=
  M.centrosomeDuplication ∧ M.microtubuleNucleation ∧ M.kinetochoreAttachment ∧ M.spindlePoleFormation

theorem mitotic_spindle_assembly_closed_from_evidence (M : MitoticSpindleAssemblyPackage) (E : MitoticSpindleAssemblyEvidence M) :
    MitoticSpindleAssemblyClosed M := by
  exact And.intro E.centrosomeDuplicationClosed (And.intro E.microtubuleNucleationClosed (And.intro E.kinetochoreAttachmentClosed E.spindlePoleFormationClosed))

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse