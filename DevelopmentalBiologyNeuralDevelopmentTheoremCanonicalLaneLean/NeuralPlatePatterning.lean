import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean

structure NeuralPlatePatterningPackage where
  morphogenGradientDefined : Prop
  targetGeneExpression : Prop
  dorsalVentralAxisSpecified : Prop
  shhSignalingActive : Prop

structure NeuralPlatePatterningEvidence (P : NeuralPlatePatterningPackage) where
  morphogenGradientClosed : P.morphogenGradientDefined
  targetGeneExpressionClosed : P.targetGeneExpression
  dorsalVentralAxisSpecifiedClosed : P.dorsalVentralAxisSpecified
  shhSignalingActiveClosed : P.shhSignalingActive

def NeuralPlatePatterningClosed (P : NeuralPlatePatterningPackage) : Prop :=
  P.morphogenGradientDefined ∧ P.targetGeneExpression ∧ P.dorsalVentralAxisSpecified ∧ P.shhSignalingActive

theorem neural_plate_patterning_closed_from_evidence (P : NeuralPlatePatterningPackage) (E : NeuralPlatePatterningEvidence P) : NeuralPlatePatterningClosed P := by
  exact And.intro E.morphogenGradientClosed (And.intro E.targetGeneExpressionClosed (And.intro E.dorsalVentralAxisSpecifiedClosed E.shhSignalingActiveClosed))

end DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse