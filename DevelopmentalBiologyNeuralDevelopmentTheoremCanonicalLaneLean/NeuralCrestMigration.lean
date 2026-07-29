import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean

structure NeuralCrestMigrationPackage where
  delaminationSignal : Prop
  epithelialMesenchymalTransition : Prop
  directedMigration : Prop
  populationCohesion : Prop

structure NeuralCrestMigrationEvidence (N : NeuralCrestMigrationPackage) where
  delaminationSignalClosed : N.delaminationSignal
  epithelialMesenchymalTransitionClosed : N.epithelialMesenchymalTransition
  directedMigrationClosed : N.directedMigration
  populationCohesionClosed : N.populationCohesion

def NeuralCrestMigrationClosed (N : NeuralCrestMigrationPackage) : Prop :=
  N.delaminationSignal ∧ N.epithelialMesenchymalTransition ∧ N.directedMigration ∧ N.populationCohesion

theorem neural_crest_migration_closed_from_evidence (N : NeuralCrestMigrationPackage) (E : NeuralCrestMigrationEvidence N) : NeuralCrestMigrationClosed N := by
  exact And.intro E.delaminationSignalClosed (And.intro E.epithelialMesenchymalTransitionClosed (And.intro E.directedMigrationClosed E.populationCohesionClosed))

end DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse