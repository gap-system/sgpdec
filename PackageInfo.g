##  <#GAPDoc Label="PKGVERSIONDATA">
##  <!ENTITY VERSION "0.7.33">
##  <!ENTITY COPYRIGHTYEARS "2008-2016">
##  <#/GAPDoc>

SetPackageInfo(rec(

PackageName := "SgpDec",

Subtitle := "Hierarchical Coordinatizations of Finite Groups and Semigroups",

Version := "0.7.33",

Date := "27/02/2016",

Persons := [
  rec(
    LastName      := "Egri-Nagy",
    FirstNames    := "Attila",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email         := "attila@egri-nagy.hu",
    WWWHome       := "http://www.egri-nagy.hu",
    PostalAddress := Concatenation( [
                       "University of Hertfordshire\n",
                       "STRI\n",
                       "College Lane\n",
                       "AL10 9AB\n",
                       "United Kingdom" ] ),
    Place         := "Hatfield, Herts",
    Institution   := "UH"
  ),
  rec(
    LastName      := "L. Nehaniv",
    FirstNames    := "Chrystopher",
    IsAuthor      := true,
    IsMaintainer  := false,
    Email         := "C.L.Nehaniv@herts.ac.uk",
    WWWHome       := "http://homepages.feis.herts.ac.uk/~comqcln/",
    PostalAddress := Concatenation( [
                       "University of Hertfordshire\n",
                       "STRI\n",
                       "College Lane\n",
                       "AL10 9AB\n",
                       "United Kingdom" ] ),
    Place         := "Hatfield, Herts",
    Institution   := "UH"
  ),
  rec(
    LastName      := "Mitchell",
    FirstNames    := "J. D.",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email         := "jdm3@st-and.ac.uk",
    WWWHome       := "http://tinyurl.com/jdmitchell",
    PostalAddress := Concatenation( [
                       "Mathematical Institute,",
                       " North Haugh,", " St Andrews,", " Fife,", " KY16 9SS,",
                       " Scotland"] ),
    Place         := "St Andrews",
    Institution   := "University of St Andrews"
  )
],

Status := "dev",

PackageWWWHome := "http://gap-packages.github.io/sgpdec/",
README_URL     := Concatenation(~.PackageWWWHome, "README"),
PackageInfoURL := Concatenation(~.PackageWWWHome, "PackageInfo.g"),
ArchiveURL     := Concatenation("https://github.com/gap-packages/sgpdec/",
                           "releases/download/v", ~.Version,
                           "/sgpdec-", ~.Version),
                   ArchiveFormats := ".tar.gz .tar.bz2",

AbstractHTML := "<span class=\"pkgname\">SgpDec</span> is  a <span class=\
                   \"pkgname\">GAP</span> \
                   package for hierarchical decompositions of finite \
                   permutation groups and transformation semigroups.",

PackageDoc := rec(
  BookName  := "SgpDec",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "Hierarchical Decompositions and Coordinate Systems",
  Autoload  := true
),


Dependencies := rec(
 GAP := ">= 4.8.2",
 NeededOtherPackages := [["GAPDoc", ">=1.5"],  #StringPrint
                   ["orb", ">=4.7.5"], #hashtable functionalities
                   ["semigroups", ">=2.7.2"]
                   ],
 SuggestedOtherPackages := [],#["viz", ">=0.2"]], #Draw, Splash]
 ExternalConditions := [ ]
),

AvailabilityTest := ReturnTrue,

Autoload := false,

TestFile := "tst/test.g",

Keywords := ["Krohn-Rhodes Theory",
             "transformation semigroup",
             "permutation group",
             "hierarchical decomposition"]
));
