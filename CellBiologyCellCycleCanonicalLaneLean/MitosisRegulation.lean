import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleCanonicalLaneLean

structure MitoticEvent where
  eventName : String
  phase : String
  completed : Prop

structure MitosisRegulationPackage where
  prophase : MitoticEvent
  prometaphase : MitoticEvent
  metaphase : MitoticEvent
  anaphase : MitoticEvent
  telophase : MitoticEvent
  cytokinesis : MitoticEvent
  spindleAssembly : Prop
  chromosomeSegregation : Prop
  cytokineticRing : Prop

structure MitosisRegulationEvidence (M : MitosisRegulationPackage) where
  spindleAssemblyClosed : M.spindleAssembly
  chromosomeSegregationClosed : M.chromosomeSegregation
  cytokineticRingClosed : M.cytokineticRing

def MitosisRegulationClosed (M : MitosisRegulationPackage) : Prop :=
  M.spindleAssembly ∧ M.chromosomeSegregation ∧ M.cytokineticRing

theorem mitosis_regulation_closed_from_evidence (M : MitosisRegulationPackage)
    (E : MitosisRegulationEvidence M) : MitosisRegulationClosed M := by
  exact And.intro E.spindleAssemblyClosed
    (And.intro E.chromosomeSegregationClosed E.cytokineticRingClosed)

end CellBiologyCellCycleCanonicalLaneLean
end HautevilleHouse