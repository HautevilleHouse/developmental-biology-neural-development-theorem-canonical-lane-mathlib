import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean

structure NeuralTubeFormationPackage where
  notochordSignaling : Prop
  neuralPlateInduction : Prop
  convergentExtension : Prop
  tubeClosure : Prop
  cellPolarity : Prop

structure NeuralTubeFormationEvidence (N : NeuralTubeFormationPackage) where
  notochordSignalingClosed : N.notochordSignaling
  neuralPlateInductionClosed : N.neuralPlateInduction
  convergentExtensionClosed : N.convergentExtension
  tubeClosureClosed : N.tubeClosure
  cellPolarityClosed : N.cellPolarity

def NeuralTubeFormationClosed (N : NeuralTubeFormationPackage) : Prop :=
  N.notochordSignaling ∧ N.neuralPlateInduction ∧ N.convergentExtension ∧
  N.tubeClosure ∧ N.cellPolarity

theorem neural_tube_formation_closed_from_evidence
    (N : NeuralTubeFormationPackage) (E : NeuralTubeFormationEvidence N) :
    NeuralTubeFormationClosed N := by
  exact And.intro E.notochordSignalingClosed
    (And.intro E.neuralPlateInductionClosed
      (And.intro E.convergentExtensionClosed
        (And.intro E.tubeClosureClosed E.cellPolarityClosed)))

end DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse