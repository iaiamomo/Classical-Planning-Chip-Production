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
packaging - Capability
implanting - Capability
etching - Capability
testing - Capability
developing - Capability
depositing - Capability
stripping - Capability
activating - Capability
cleaning - Capability
exposing - Capability
coating - Capability
assembling - Capability
packager1usa - Service_pac1
implanter1usa - Service_imp1
etcher2usa - Service_etc2
tester1usa - Service_tes1
developer1usa - Service_dev1
depositer1usa - Service_dep1
stripper1usa - Service_str1
activator1usa - Service_act1
cleaner1usa - Service_cle1
developer2usa - Service_dev2
exposer1usa - Service_exp1
etcher1usa - Service_etc1
depositer2usa - Service_dep2
coater1usa - Service_coa1
assembler1usa - Service_ass1
coater2usa - Service_coa2
)
(:init 
(provides packager1usa packaging)
(provides implanter1usa implanting)
(provides etcher2usa etching)
(provides tester1usa testing)
(provides developer1usa developing)
(provides depositer1usa depositing)
(provides stripper1usa stripping)
(provides activator1usa activating)
(provides cleaner1usa cleaning)
(provides developer2usa developing)
(provides exposer1usa exposing)
(provides etcher1usa etching)
(provides depositer2usa depositing)
(provides coater1usa coating)
(provides assembler1usa assembling)
(provides coater2usa coating)
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
(coated resist false)
(taken aluminum false)
(deposited aluminum false)
(implanted silicon false)
(deposited silicon false)
(status packager1usa available)
(status implanter1usa available)
(status etcher2usa available)
(implanted phosphor false)
(status tester1usa available)
(status developer1usa available)
(implanted boron false)
(status depositer1usa available)
(status stripper1usa available)
(packed plastic false)
(status activator1usa available)
(status cleaner1usa available)
(status developer2usa available)
(assembled copper false)
(status exposer1usa available)
(status etcher1usa available)
(status depositer2usa available)
(status coater1usa available)
(etched chemicals false)
(stripped chemicals false)
(status assembler1usa available)
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