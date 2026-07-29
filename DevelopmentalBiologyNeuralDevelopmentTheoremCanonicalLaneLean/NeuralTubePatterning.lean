import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean

structure NeuralTubePatterningPackage where
  morphogenGradient : Prop
  dorsoventralAxisEstablishment : Prop
  progenitorDomainSpecification : Prop
  neurogenesisTiming : Prop

structure NeuralTubePatterningEvidence (N : NeuralTubePatterningPackage) where
  morphogenGradientClosed : N.morphogenGradient
  dorsoventralAxisEstablishmentClosed : N.dorsoventralAxisEstablishment
  progenitorDomainSpecificationClosed : N.progenitorDomainSpecification
  neurogenesisTimingClosed : N.neurogenesisTiming

def NeuralTubePatterningClosed (N : NeuralTubePatterningPackage) : Prop :=
  N.morphogenGradient ∧ N.dorsoventralAxisEstablishment ∧ N.progenitorDomainSpecification ∧ N.neurogenesisTiming

theorem neural_tube_patterning_closed_from_evidence (N : NeuralTubePatterningPackage) (E : NeuralTubePatterningEvidence N) : NeuralTubePatterningClosed N := by
  exact And.intro E.morphogenGradientClosed (And.intro E.dorsoventralAxisEstablishmentClosed (And.intro E.progenitorDomainSpecificationClosed E.neurogenesisTimingClosed))

end DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse