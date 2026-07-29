import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean

structure NeurogenesisTimingPackage where
  progenitorProliferation : Prop
  cellCycleExit : Prop
  neuronalDifferentiation : Prop
  migrationTiming : Prop
  layerFormation : Prop

structure NeurogenesisTimingEvidence (N : NeurogenesisTimingPackage) where
  progenitorProliferationClosed : N.progenitorProliferation
  cellCycleExitClosed : N.cellCycleExit
  neuronalDifferentiationClosed : N.neuronalDifferentiation
  migrationTimingClosed : N.migrationTiming
  layerFormationClosed : N.layerFormation

def NeurogenesisTimingClosed (N : NeurogenesisTimingPackage) : Prop :=
  N.progenitorProliferation ∧ N.cellCycleExit ∧ N.neuronalDifferentiation ∧
  N.migrationTiming ∧ N.layerFormation

theorem neurogenesis_timing_closed_from_evidence
    (N : NeurogenesisTimingPackage) (E : NeurogenesisTimingEvidence N) :
    NeurogenesisTimingClosed N := by
  exact And.intro E.progenitorProliferationClosed
    (And.intro E.cellCycleExitClosed
      (And.intro E.neuronalDifferentiationClosed
        (And.intro E.migrationTimingClosed E.layerFormationClosed)))

end DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse