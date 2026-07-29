import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean

structure NeuralTubeFormationPDE where
  morphogenConcentration : Type
  diffusionCoefficient : Prop
  reactionTerm : Prop
  boundaryConditions : Prop
  solutionExists : Prop
  solutionUnique : Prop

structure NeuralTubeFormationEvidence (P : NeuralTubeFormationPDE) where
  diffusionCoefficientClosed : P.diffusionCoefficient
  reactionTermClosed : P.reactionTerm
  boundaryConditionsClosed : P.boundaryConditions
  solutionExistsClosed : P.solutionExists
  solutionUniqueClosed : P.solutionUnique

def NeuralTubeFormationClosed (P : NeuralTubeFormationPDE) : Prop :=
  P.diffusionCoefficient ∧ P.reactionTerm ∧ P.boundaryConditions ∧ P.solutionExists ∧ P.solutionUnique

theorem neural_tube_formation_closed_from_evidence (P : NeuralTubeFormationPDE) (E : NeuralTubeFormationEvidence P) :
    NeuralTubeFormationClosed P := by
  exact And.intro E.diffusionCoefficientClosed
    (And.intro E.reactionTermClosed
      (And.intro E.boundaryConditionsClosed
        (And.intro E.solutionExistsClosed E.solutionUniqueClosed)))

end DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse
