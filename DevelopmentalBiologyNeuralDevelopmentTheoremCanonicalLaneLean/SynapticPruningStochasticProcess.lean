import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean

structure SynapticPruningStochasticProcess where
  synapsePopulation : Type
  eliminationRate : Prop
  stabilizationRule : Prop
  activityDependence : Prop
  criticalPeriod : Prop
  networkTopology : Prop

structure SynapticPruningStochasticProcessEvidence (S : SynapticPruningStochasticProcess) where
  eliminationRateClosed : S.eliminationRate
  stabilizationRuleClosed : S.stabilizationRule
  activityDependenceClosed : S.activityDependence
  criticalPeriodClosed : S.criticalPeriod
  networkTopologyClosed : S.networkTopology

def SynapticPruningStochasticProcessClosed (S : SynapticPruningStochasticProcess) : Prop :=
  S.eliminationRate ∧ S.stabilizationRule ∧ S.activityDependence ∧ S.criticalPeriod ∧ S.networkTopology

theorem synaptic_pruning_stochastic_process_closed_from_evidence (S : SynapticPruningStochasticProcess) (E : SynapticPruningStochasticProcessEvidence S) :
    SynapticPruningStochasticProcessClosed S := by
  exact And.intro E.eliminationRateClosed
    (And.intro E.stabilizationRuleClosed
      (And.intro E.activityDependenceClosed
        (And.intro E.criticalPeriodClosed E.networkTopologyClosed)))

end DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse
