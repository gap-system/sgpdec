# quick but comprehensive test for establishing correctness of the algorithms

LoadPackage("sgpdec");
#just aliases
Read("namedgroups.g");
Read("namedsemigroups.g");

SEED := IO_gettimeofday().tv_sec;
Reset(GlobalMersenneTwister, SEED);
Print("#Random seed:", SEED, "\n");

SMALL_GROUPS := true;;
test_groups := [D8,C4,C5,S4];;
test_semigroups := [MICROBUG,HEYBUG,SMLBUG,BECKS, BEX,T4, ALIFEX, NONISOMPERM];
ITER := 33;;

#reading the test functions
Read("lazycartesian.g");;
Read("straightword.g");;
Read("idmul.g");;
Read("inverse.g");;
Read("yeast.g");;
Read("depextract.g");;
Read("monomial.g");;
Read("lagrange.g");;
Read("skeleton.g");;
#Read("permutator.g");;
Read("holonomy.g");;

########################################################
############MAIN########################################
########################################################
Print("\nTesting lazily evaluated cartesian product list.\n");
TestCartesianEnumerator();

Print("\nTesting straight words.\n");
#TestStraightWords(pocket_cube_gens, 3333);
TestStraightWords(GeneratorsOfSemigroup(T5), 6222);

Print("\nTesting skeletons.\n");
for sg in test_semigroups do
  TestSkeleton(sg);
od;
#Print("\nTesting permutator searches.\n");
#TestPermutator(FiniteSet([1,4,5],5),GeneratorsOfSemigroup(T5));
#TestPermutator(FiniteSet([1,2,3,4],5),GeneratorsOfSemigroup(T5));
#TestPermutator(FiniteSet([4,5],6),becks);

Print("\n#### TESTING HOLONOMY DECOMPOSITIONS ######################\n");
for sg in test_semigroups do
  Print("\n");Display(sg);
  hd := HolonomyDecomposition(sg);
  #change a random representative TODO! this is broken!
  #ChangeCoveredSet(hd, Random(ImageSets(SkeletonOf(hd))));
  #DisplaySkeletonRepresentatives(SkeletonOf(hd));
  HolonomyTestCoordinates(hd);
  HolonomyTestAction(hd);
  HolonomyTestSemigroupElements(hd);
  if Size(sg) <= 11 then
    HolonomyTestAllProducts(hd);
  else
    HolonomyTestSomeProducts(hd,100);
  fi;
od;


Print("\nTesting a group cascade ");
GRP := CascadeShell([Z3,Z2,Z2,Z5]);;
Print(Name(GRP),"\n\n");

TestMultiplicationByIdentity(GRP);
TestYEAST4Operations(GRP);
TestCascadedInverses(GRP);
TestDependencyExtraction(GRP);

Print("\nTesting a semigroup cascade ");
SGRP := CascadeShell([Z3,FlipFlop,FlipFlop,Z5]);;
Print(Name(SGRP),"\n\n");

TestMultiplicationByIdentity(SGRP);
TestYEAST4Operations(SGRP);
TestDependencyExtraction(SGRP);

Print("\nTesting monomial Generators \n");
SGPDEC_TestMonomialGenerators([FlipFlop]);
SGPDEC_TestMonomialGenerators([FlipFlop,FlipFlop]);
SGPDEC_TestMonomialGenerators([FlipFlop,Z3]);
SGPDEC_TestMonomialGenerators([Z3,Z3]);
SGPDEC_TestMonomialGenerators([Z2,Z3,Z4]);
SGPDEC_TestMonomialGenerators([Z4,Z2,Z3]);

Print("\nTesting Lagrange Group coordinates \n");
for G in test_groups do
  Print("\n Decomposing ",StructureDescription(G),"\n");
  decomp := LagrangeDecomposition(G);
  LagrangeTestGroupElements(decomp);
  LagrangeTestPoints(decomp);
  LagrangeTestActions(decomp);
  LagrangeTestMultiplication(decomp);
  LagrangeTestCoords(decomp);
  LagrangeTestKilling(decomp);
  LagrangeTestIsomorphism(decomp);
  LagrangeTestX2Y(decomp);
od;
#Dump the random seed in case there was something interesting.
Print("#Random seed:", SEED, "\n");