import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean

structure DevelopmentalBiologyNeuralDevelopmentAdmittedObject where
  neuralTubeFormation : NeuralTubeFormationPackage
  neuralCrestMigration : NeuralCrestMigrationPackage
  neurogenesisTiming : NeurogenesisTimingPackage
  axonGuidanceSignaling : AxonGuidanceSignalingPackage
  synaptogenesisPlasticity : SynaptogenesisPlasticityPackage
  conclusion : Prop

structure AdmissibleClass where
  object : DevelopmentalBiologyNeuralDevelopmentAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NeuralTubeFormationClosed A.object.neuralTubeFormation ∧
  NeuralCrestMigrationClosed A.object.neuralCrestMigration ∧
  NeurogenesisTimingClosed A.object.neurogenesisTiming ∧
  AxonGuidanceSignalingClosed A.object.axonGuidanceSignaling ∧
  SynaptogenesisPlasticityClosed A.object.synaptogenesisPlasticity

end DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse