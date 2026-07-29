import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean

structure NeurogenesisPackage where
  progenitorProliferation : Prop
  cellCycleExit : Prop
  neuronalDifferentiation : Prop
  migration : Prop
  axonOutgrowth : Prop
  synapseFormation : Prop

structure NeurogenesisEvidence (N : NeurogenesisPackage) where
  progenitorProliferationClosed : N.progenitorProliferation
  cellCycleExitClosed : N.cellCycleExit
  neuronalDifferentiationClosed : N.neuronalDifferentiation
  migrationClosed : N.migration
  axonOutgrowthClosed : N.axonOutgrowth
  synapseFormationClosed : N.synapseFormation

def NeurogenesisClosed (N : NeurogenesisPackage) : Prop :=
  N.progenitorProliferation ∧ N.cellCycleExit ∧ N.neuronalDifferentiation ∧
  N.migration ∧ N.axonOutgrowth ∧ N.synapseFormation

theorem neurogenesis_closed_from_evidence (N : NeurogenesisPackage) (E : NeurogenesisEvidence N) :
    NeurogenesisClosed N := by
  exact And.intro E.progenitorProliferationClosed
    (And.intro E.cellCycleExitClosed
      (And.intro E.neuronalDifferentiationClosed
        (And.intro E.migrationClosed
          (And.intro E.axonOutgrowthClosed E.synapseFormationClosed))))

end DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse