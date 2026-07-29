import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean

structure CorticalAreaPatterning where
  morphogenSourceEstablished : Prop
  arealIdentityMarker : Prop
  boundarySpecification : Prop
  thalamocorticalProjection : Prop

structure CorticalAreaEvidence (C : CorticalAreaPatterning) where
  morphogenSourceEstablishedClosed : C.morphogenSourceEstablished
  arealIdentityMarkerClosed : C.arealIdentityMarker
  boundarySpecificationClosed : C.boundarySpecification
  thalamocorticalProjectionClosed : C.thalamocorticalProjection

def CorticalAreaClosed (C : CorticalAreaPatterning) : Prop :=
  C.morphogenSourceEstablished ∧ C.arealIdentityMarker ∧
  C.boundarySpecification ∧ C.thalamocorticalProjection

theorem cortical_area_closed_from_evidence (C : CorticalAreaPatterning) (E : CorticalAreaEvidence C) : CorticalAreaClosed C := by
  exact And.intro E.morphogenSourceEstablishedClosed (And.intro E.arealIdentityMarkerClosed (And.intro E.boundarySpecificationClosed E.thalamocorticalProjectionClosed))

end DevelopmentalBiologyNeuralDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse
