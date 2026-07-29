import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean

structure CriticalPeriodPlasticityPackage where
  experienceDependentRefinement : Prop
  synapticStabilization : Prop
  perineuronalNetFormation : Prop
  closureOfCriticalPeriod : Prop

structure CriticalPeriodPlasticityEvidence (C : CriticalPeriodPlasticityPackage) where
  experienceDependentClosed : C.experienceDependentRefinement
  synapticStabilizationClosed : C.synapticStabilization
  perineuronalNetClosed : C.perineuronalNetFormation
  closureClosed : C.closureOfCriticalPeriod

def CriticalPeriodPlasticityClosed (C : CriticalPeriodPlasticityPackage) : Prop :=
  C.experienceDependentRefinement ∧ C.synapticStabilization ∧ C.perineuronalNetFormation ∧ C.closureOfCriticalPeriod

theorem critical_period_plasticity_closed_from_evidence (C : CriticalPeriodPlasticityPackage) (E : CriticalPeriodPlasticityEvidence C) : CriticalPeriodPlasticityClosed C := by
  exact And.intro E.experienceDependentClosed (And.intro E.synapticStabilizationClosed (And.intro E.perineuronalNetClosed E.closureClosed))

end DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse