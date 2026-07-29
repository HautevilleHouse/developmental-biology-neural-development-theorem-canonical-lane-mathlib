import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean

structure NeuralStemCellDynamics where
  stemCellPool : Type
  proliferationRate : Prop
  differentiationRate : Prop
  selfRenewal : Prop
  quiescence : Prop
  lineageSpecification : Prop

structure NeuralStemCellDynamicsEvidence (D : NeuralStemCellDynamics) where
  proliferationRateClosed : D.proliferationRate
  differentiationRateClosed : D.differentiationRate
  selfRenewalClosed : D.selfRenewal
  quiescenceClosed : D.quiescence
  lineageSpecificationClosed : D.lineageSpecification

def NeuralStemCellDynamicsClosed (D : NeuralStemCellDynamics) : Prop :=
  D.proliferationRate ∧ D.differentiationRate ∧ D.selfRenewal ∧ D.quiescence ∧ D.lineageSpecification

theorem neural_stem_cell_dynamics_closed_from_evidence (D : NeuralStemCellDynamics) (E : NeuralStemCellDynamicsEvidence D) :
    NeuralStemCellDynamicsClosed D := by
  exact And.intro E.proliferationRateClosed
    (And.intro E.differentiationRateClosed
      (And.intro E.selfRenewalClosed
        (And.intro E.quiescenceClosed E.lineageSpecificationClosed)))

end DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse
