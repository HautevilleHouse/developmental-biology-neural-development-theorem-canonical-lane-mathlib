import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean

def ConstrainedNeuralDevelopmentClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neural_development_endgame (A : AdmissibleClass) :
    ConstrainedNeuralDevelopmentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse
