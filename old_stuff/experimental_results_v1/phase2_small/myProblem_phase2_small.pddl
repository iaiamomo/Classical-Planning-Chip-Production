(define (problem myProblem_phase2_small)
(:domain myDomain_phase2_small)
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
depositing - Capability
developing - Capability
assembling - Capability
packaging - Capability
cleaning - Capability
testing - Capability
etching - Capability
activating - Capability
exposing - Capability
implanting - Capability
coating - Capability
stripping - Capability
depositer1usa - Service_dep1
developer2usa - Service_dev2
assembler1usa - Service_ass1
packager1usa - Service_pac1
cleaner1usa - Service_cle1
tester1usa - Service_tes1
etcher1usa - Service_etc1
developer1usa - Service_dev1
activator1usa - Service_act1
exposer1usa - Service_exp1
implanter1usa - Service_imp1
coater1usa - Service_coa1
etcher2usa - Service_etc2
stripper1usa - Service_str1
)
(:init 
(provides depositer1usa depositing)
(provides developer2usa developing)
(provides assembler1usa assembling)
(provides packager1usa packaging)
(provides cleaner1usa cleaning)
(provides tester1usa testing)
(provides etcher1usa etching)
(provides developer1usa developing)
(provides activator1usa activating)
(provides exposer1usa exposing)
(provides implanter1usa implanting)
(provides coater1usa coating)
(provides etcher2usa etching)
(provides stripper1usa stripping)
(implanted boron false)
(status depositer1usa available)
(status developer2usa available)
(assembled copper false)
(implanted phosphor false)
(status assembler1usa available)
(status packager1usa available)
(status cleaner1usa available)
(status tester1usa available)
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
(status etcher1usa available)
(status developer1usa available)
(status activator1usa available)
(packed plastic false)
(status exposer1usa available)
(status implanter1usa available)
(coated resist false)
(status coater1usa available)
(implanted silicon false)
(deposited silicon false)
(taken aluminum false)
(deposited aluminum false)
(etched chemicals false)
(stripped chemicals false)
(status etcher2usa available)
(status stripper1usa available)
(= (total-cost) 0)
)
(:goal 
(and 
(packed wafer true)
)
)
(:metric minimize (total-cost))

)