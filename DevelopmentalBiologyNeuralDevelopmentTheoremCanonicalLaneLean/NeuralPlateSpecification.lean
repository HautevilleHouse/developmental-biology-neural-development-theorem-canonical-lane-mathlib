import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean

structure NeuralPlatePackage where
  neuralPlate : Type u
  ectoderm : Type v
  signalingCenter : Prop
  morphogenGradient : Prop
  dorsalVentralPatterning : Prop
  neuralInduction : Prop

structure NeuralPlateEvidence (P : NeuralPlatePackage) where
  signalingCenterClosed : P.signalingCenter
  morphogenGradientClosed : P.morphogenGradient
  dorsalVentralPatterningClosed : P.dorsalVentralPatterning
  neuralInductionClosed : P.neuralInduction

def NeuralPlateClosed (P : NeuralPlatePackage) : Prop :=
  P.signalingCenter ∧ P.morphogenGradient ∧ P.dorsalVentralPatterning ∧ P.neuralInduction

theorem neural_plate_closed_from_evidence (P : NeuralPlatePackage) (E : NeuralPlateEvidence P) :
    NeuralPlateClosed P := by
  exact And.intro E.signalingCenterClosed
    (And.intro E.morphogenGradientClosed
      (And.intro E.dorsalVentralPatterningClosed E.neuralInductionClosed))

end DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse