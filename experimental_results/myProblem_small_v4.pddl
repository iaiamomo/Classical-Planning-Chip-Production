(define (problem myProblem_small_v4)
(:domain myDomain_small_v4)
(:objects 
design - Design
silicon - SiliconMaterial
impurity - ImpurityMaterial
resist - ResistMaterial
chemicals - ChemicalsMaterial
chip - ChipMaterial
true - Boolean
false - Boolean
available - State
broken - State
implanting - Capability
packaging - Capability
mask_creating - Capability
taking_design - Capability
testing - Capability
taking_impurity - Capability
taking_silicon - Capability
taking_resist - Capability
taking_chemicals - Capability
photolithography - Capability
dicing - Capability
implanter1usa - Service_imp1
packager1usa - Service_pac1
creator1usa - Service_cre1
designerusa - Service_des_us
tester1usa - Service_tes1
inventoryusa - Service_inv_us
lithographer1usa - Service_lit1
dicer1usa - Service_dic1
)
(:init 
(provides implanter1usa implanting)
(provides packager1usa packaging)
(provides creator1usa mask_creating)
(provides designerusa taking_design)
(provides tester1usa testing)
(provides inventoryusa taking_impurity)
(provides inventoryusa taking_silicon)
(provides inventoryusa taking_resist)
(provides inventoryusa taking_chemicals)
(provides lithographer1usa photolithography)
(provides dicer1usa dicing)
(status implanter1usa available)
(taken resist false)
(implanted resist false)
(status packager1usa available)
(taken silicon false)
(masked silicon false)
(lithographed silicon false)
(status creator1usa available)
(status designerusa available)
(taken impurity false)
(implanted impurity false)
(status tester1usa available)
(status inventoryusa available)
(status lithographer1usa available)
(taken chemicals false)
(implanted chemicals false)
(status dicer1usa available)
(taken design false)
(masked design false)
(masked chip false)
(lithographed chip false)
(implanted chip false)
(tested chip false)
(diced chip false)
(packed chip false)
(= (total-cost) 0)
)
(:goal 
(and 
(packed chip true)
)
)
(:metric minimize (total-cost))

)