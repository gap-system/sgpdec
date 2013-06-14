DeclareCategory("IsSKELETON", IsObject and IsAttributeStoringRep);
BindGlobal("SKELETONFamily",NewFamily("SKELETONFamily", IsSKELETON));
BindGlobal("SKELETONType", NewType(SKELETONFamily,IsSKELETON));

DeclareGlobalFunction("SKELETON");
DeclareAttribute("TransSgp",IsSKELETON);
DeclareAttribute("BaseSet",IsSKELETON);
DeclareAttribute("Generators",IsSKELETON);
DeclareAttribute("DegreeOfSKELETON",IsSKELETON);
DeclareAttribute("Singletons",IsSKELETON);