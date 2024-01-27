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
taking_design - Capability
photolithography - Capability
implanting - Capability
taking_resist - Capability
taking_impurity - Capability
checking_quality - Capability
taking_silicon - Capability
smart_testing - Capability
dicing - Capability
mask_creating - Capability
packaging - Capability
taking_chemicals - Capability
packaging_cooling - Capability
testing - Capability
designerchina - Service_des_ch
lithographer1usa - Service_lit1
implanter2usa - Service_imp2
inventorycanada - Service_inv_ca
designerusa - Service_des_us
inventorychile - Service_inv_cl
quality1usa - Service_qua1
lithographer2usa - Service_lit2
inventorybrazil - Service_inv_br
implanter1usa - Service_imp1
smarttester1usa - Service_sma_tes1
dicer1usa - Service_dic1
creator1usa - Service_cre1
packager2usa - Service_pac2
packager1usa - Service_pac1
inventoryusa - Service_inv_us
packager_cooling1usa - Service_pac_cool1
tester1usa - Service_tes1
)
(:init 
(provides designerchina taking_design)
(provides lithographer1usa photolithography)
(provides implanter2usa implanting)
(provides inventorycanada taking_resist)
(provides designerusa taking_design)
(provides inventorychile taking_impurity)
(provides quality1usa checking_quality)
(provides lithographer2usa photolithography)
(provides inventorybrazil taking_silicon)
(provides implanter1usa implanting)
(provides smarttester1usa smart_testing)
(provides dicer1usa dicing)
(provides creator1usa mask_creating)
(provides packager2usa packaging)
(provides packager1usa packaging)
(provides inventoryusa taking_impurity)
(provides inventoryusa taking_silicon)
(provides inventoryusa taking_resist)
(provides inventoryusa taking_chemicals)
(provides packager_cooling1usa packaging_cooling)
(provides tester1usa testing)
(taken impurity false)
(implanted impurity false)
(status designerchina available)
(masked chip false)
(lithographed chip false)
(implanted chip false)
(tested chip false)
(diced chip false)
(packed chip false)
(status lithographer1usa available)
(status implanter2usa available)
(status inventorycanada available)
(status designerusa available)
(taken design false)
(masked design false)
(status inventorychile available)
(status quality1usa available)
(status lithographer2usa available)
(status inventorybrazil available)
(status implanter1usa available)
(status smarttester1usa available)
(status dicer1usa available)
(status creator1usa available)
(status packager2usa available)
(status packager1usa available)
(taken chemicals false)
(implanted chemicals false)
(taken silicon false)
(masked silicon false)
(lithographed silicon false)
(status inventoryusa available)
(status packager_cooling1usa available)
(taken resist false)
(implanted resist false)
(status tester1usa available)
(= (total-cost) 0)
)
(:goal 
(and 
(packed chip true)
)
)
(:metric minimize (total-cost))

)