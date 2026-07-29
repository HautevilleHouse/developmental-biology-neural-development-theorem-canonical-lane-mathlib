import DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NeuralTubeFormationClosed A.object.neuralTubeFormation ∧
  NeuralCrestMigrationClosed A.object.neuralCrestMigration ∧
  NeurogenesisTimingClosed A.object.neurogenesisTiming ∧
  AxonGuidanceSignalingClosed A.object.axonGuidanceSignaling ∧
  SynaptogenesisPlasticityClosed A.object.synaptogenesisPlasticity

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  have h1 : NeuralTubeFormationClosed A.object.neuralTubeFormation := by
    exact neural_tube_formation_closed_from_evidence A.object.neuralTubeFormation
      (NeuralTubeFormationEvidence.mk ?_ ?_ ?_ ?_ ?_)
    sorry
  sorry

end DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse