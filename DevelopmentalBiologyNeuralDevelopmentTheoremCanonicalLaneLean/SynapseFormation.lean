import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean

structure SynapseFormationPackage where
  preSynapticAssembly : Prop
  postSynapticDifferentiation : Prop
  synapticClefFormation : Prop
  neurotransmitterReleaseMachinery : Prop

structure SynapseFormationEvidence (S : SynapseFormationPackage) where
  preSynapticClosed : S.preSynapticAssembly
  postSynapticClosed : S.postSynapticDifferentiation
  synapticClefClosed : S.synapticClefFormation
  neurotransmitterClosed : S.neurotransmitterReleaseMachinery

def SynapseFormationClosed (S : SynapseFormationPackage) : Prop :=
  S.preSynapticAssembly ∧ S.postSynapticDifferentiation ∧ S.synapticClefFormation ∧ S.neurotransmitterReleaseMachinery

theorem synapse_formation_closed_from_evidence (S : SynapseFormationPackage) (E : SynapseFormationEvidence S) : SynapseFormationClosed S := by
  exact And.intro E.preSynapticClosed (And.intro E.postSynapticClosed (And.intro E.synapticClefClosed E.neurotransmitterClosed))

end DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse