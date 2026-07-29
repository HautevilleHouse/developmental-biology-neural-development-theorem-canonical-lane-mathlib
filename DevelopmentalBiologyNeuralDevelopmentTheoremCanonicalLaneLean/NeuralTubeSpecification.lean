import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean

structure NeuralTubeSpecification where
  dorsalVentralAxisDefined : Prop
  floorPlateInduction : Prop
  roolPlatePattern : Prop
  morphogenGradient : Prop

structure NeuralTubeEvidence (N : NeuralTubeSpecification) where
  dorsalVentralAxisDefinedClosed : N.dorsalVentralAxisDefined
  floorPlateInductionClosed : N.floorPlateInduction
  roolPlatePatternClosed : N.roolPlatePattern
  morphogenGradientClosed : N.morphogenGradient

def NeuralTubeClosed (N : NeuralTubeSpecification) : Prop :=
  N.dorsalVentralAxisDefined ∧ N.floorPlateInduction ∧
  N.roolPlatePattern ∧ N.morphogenGradient

theorem neural_tube_closed_from_evidence (N : NeuralTubeSpecification) (E : NeuralTubeEvidence N) : NeuralTubeClosed N := by
  exact And.intro E.dorsalVentralAxisDefinedClosed (And.intro E.floorPlateInductionClosed (And.intro E.roolPlatePatternClosed E.morphogenGradientClosed))

end DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse
