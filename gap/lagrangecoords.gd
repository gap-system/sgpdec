#############################################################################
##
## lagrangecoords.gd           SgpDec package
##
## Copyright (C)  Attila Egri-Nagy, Chrystopher L. Nehaniv, James D. Mitchell
##
## 2008-2012
##
## A hierarchical decomposition: Lagrange coordinatization of groups.
##

DeclareInfoClass("LagrangeDecompositionInfoClass");
DeclareOperation("LagrangeDecomposition",[IsPermGroup,IsList]);
#getting the coset representative corresponding to a group element
DeclareGlobalFunction("Perm2CosetRepr");
#encoding decoding of coset represntatives - points
DeclareGlobalFunction("EncodeCosetReprs");
DeclareGlobalFunction("DecodeCosetReprs");
DeclareGlobalFunction("Perm2Coords");
DeclareGlobalFunction("Coords2Perm");
DeclareGlobalFunction("LevelKillers");
DeclareGlobalFunction("LevelBuilders");
#access functions
DeclareGlobalFunction("OriginalStateSet");
DeclareGlobalFunction("TransversalsOf");
DeclareGlobalFunction("SeriesOf");

#TYPE INFO
DeclareCategory("IsLagrangeDecomposition", IsHierarchicalDecomposition);

DeclareRepresentation( "IsLagrangeDecompositionRep",
                       IsHierarchicalDecompositionRep,
                       [ "series",
                         "transversals"] );

LagrangeDecompositionType  := NewType(
    NewFamily("LagrangeDecompositionTypeFamily",IsLagrangeDecomposition),
    IsLagrangeDecomposition and IsLagrangeDecompositionRep);