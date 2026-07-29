import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean

structure SynaptogenesisPlasticityPackage where
  synapseFormation : Prop
  neurotransmitterRelease : Prop
  receptorClustering : Prop
  activityDependentPruning : Prop
  longTermPotentiation : Prop

structure SynaptogenesisPlasticityEvidence (S : SynaptogenesisPlasticityPackage) where
  synapseFormationClosed : S.synapseFormation
  neurotransmitterReleaseClosed : S.neurotransmitterRelease
  receptorClusteringClosed : S.receptorClustering
  activityDependentPruningClosed : S.activityDependentPruning
  longTermPotentiationClosed : S.longTermPotentiation

def SynaptogenesisPlasticityClosed (S : SynaptogenesisPlasticityPackage) : Prop :=
  S.synapseFormation ∧ S.neurotransmitterRelease ∧ S.receptorClustering ∧
  S.activityDependentPruning ∧ S.longTermPotentiation

theorem synaptogenesis_plasticity_closed_from_evidence
    (S : SynaptogenesisPlasticityPackage) (E : SynaptogenesisPlasticityEvidence S) :
    SynaptogenesisPlasticityClosed S := by
  exact And.intro E.synapseFormationClosed
    (And.intro E.neurotransmitterReleaseClosed
      (And.intro E.receptorClusteringClosed
        (And.intro E.activityDependentPruningClosed E.longTermPotentiationClosed)))

end DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse