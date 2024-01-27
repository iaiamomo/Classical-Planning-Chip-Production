(define (problem myProblem_xsmall_v4)
(:domain myDomain_xsmall_v4)
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
mask_creating - Capability
dicing - Capability
packaging_cooling - Capability
testing - Capability
implanting - Capability
checking_quality - Capability
packaging - Capability
smart_testing - Capability
taking_design - Capability
photolithography - Capability
taking_impurity - Capability
taking_silicon - Capability
taking_resist - Capability
taking_chemicals - Capability
creator1usa - Service_cre1
dicer1usa - Service_dic1
packager_cooling1usa - Service_pac_cool1
tester1usa - Service_tes1
implanter1usa - Service_imp1
quality1usa - Service_qua1
packager1usa - Service_pac1
smarttester1usa - Service_sma_tes1
designerusa - Service_des_us
lithographer1usa - Service_lit1
inventoryusa - Service_inv_us
)
(:init 
(provides creator1usa mask_creating)
(provides dicer1usa dicing)
(provides packager_cooling1usa packaging_cooling)
(provides tester1usa testing)
(provides implanter1usa implanting)
(provides quality1usa checking_quality)
(provides packager1usa packaging)
(provides smarttester1usa smart_testing)
(provides designerusa taking_design)
(provides lithographer1usa photolithography)
(provides inventoryusa taking_impurity)
(provides inventoryusa taking_silicon)
(provides inventoryusa taking_resist)
(provides inventoryusa taking_chemicals)
(masked chip false)
(lithographed chip false)
(implanted chip false)
(tested chip false)
(diced chip false)
(packed chip false)
(taken chemicals false)
(implanted chemicals false)
(status creator1usa available)
(status dicer1usa available)
(taken impurity false)
(implanted impurity false)
(taken design false)
(masked design false)
(taken silicon false)
(masked silicon false)
(lithographed silicon false)
(status packager_cooling1usa available)
(status tester1usa available)
(taken resist false)
(implanted resist false)
(status implanter1usa available)
(status quality1usa available)
(status packager1usa available)
(status smarttester1usa available)
(status designerusa available)
(status lithographer1usa available)
(status inventoryusa available)
(= (total-cost) 0)
)
(:goal 
(and 
(packed chip true)
)
)
(:metric minimize (total-cost))

)