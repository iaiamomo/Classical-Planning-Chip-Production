(define (problem myProblem_phase2_manageable1)
(:domain myDomain_phase2_manageable1)
(:objects 
boron - BoronMaterial
phosphor - PhosphorMaterial
silicon - SiliconMaterial
aluminum - AluminumMaterial
resist - ResistMaterial
plastic - PlasticMaterial
chemicals - ChemicalsMaterial
copper - CopperMaterial
wafer - Material
true - Boolean
false - Boolean
available - State
broken - State
developing - Capability
testing - Capability
assembling - Capability
depositing - Capability
activating - Capability
exposing - Capability
coating - Capability
etching - Capability
packaging - Capability
stripping - Capability
implanting - Capability
cleaning - Capability
developer2usa - Service_dev2
developer1usa - Service_dev1
tester2usa - Service_tes2
assembler1usa - Service_ass1
tester1usa - Service_tes1
depositer1usa - Service_dep1
activator1usa - Service_act1
exposer1usa - Service_exp1
coater1usa - Service_coa1
etcher1usa - Service_etc1
packager1usa - Service_pac1
stripper1usa - Service_str1
exposer2usa - Service_exp2
implanter1usa - Service_imp1
etcher2usa - Service_etc2
cleaner1usa - Service_cle1
coater2usa - Service_coa2
)
(:init 
(provides developer2usa developing)
(provides developer1usa developing)
(provides tester2usa testing)
(provides assembler1usa assembling)
(provides tester1usa testing)
(provides depositer1usa depositing)
(provides activator1usa activating)
(provides exposer1usa exposing)
(provides coater1usa coating)
(provides etcher1usa etching)
(provides packager1usa packaging)
(provides stripper1usa stripping)
(provides exposer2usa exposing)
(provides implanter1usa implanting)
(provides etcher2usa etching)
(provides cleaner1usa cleaning)
(provides coater2usa coating)
(status developer2usa available)
(status developer1usa available)
(implanted silicon false)
(deposited silicon false)
(coated resist false)
(status tester2usa available)
(status assembler1usa available)
(implanted phosphor false)
(status tester1usa available)
(implanted boron false)
(cleaned wafer false)
(deposited wafer false)
(coated wafer false)
(exposed wafer false)
(developed wafer false)
(etched wafer false)
(implanted wafer false)
(activated wafer false)
(stripped wafer false)
(assembled wafer false)
(tested wafer false)
(packed wafer false)
(status depositer1usa available)
(taken aluminum false)
(deposited aluminum false)
(status activator1usa available)
(status exposer1usa available)
(status coater1usa available)
(status etcher1usa available)
(status packager1usa available)
(status stripper1usa available)
(status exposer2usa available)
(status implanter1usa available)
(packed plastic false)
(etched chemicals false)
(stripped chemicals false)
(assembled copper false)
(status etcher2usa available)
(status cleaner1usa available)
(status coater2usa available)
(= (total-cost) 0)
)
(:goal 
(and 
(packed wafer true)
)
)
(:metric minimize (total-cost))

)