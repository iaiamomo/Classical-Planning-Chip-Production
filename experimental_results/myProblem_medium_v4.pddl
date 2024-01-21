(define (problem myProblem_medium_v4)
(:domain myDomain_medium_v4)
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
packaging - Capability
mask_creating - Capability
taking_silicon - Capability
taking_impurity - Capability
taking_resist - Capability
taking_chemicals - Capability
testing - Capability
dicing - Capability
designerusa - Service_des_us
lithographer2usa - Service_lit2
implanter1usa - Service_imp1
implanter2usa - Service_imp2
designerchina - Service_des_ch
packager1usa - Service_pac1
creator1usa - Service_cre1
inventorybrazil - Service_inv_br
inventorychina - Service_inv_cn
packager2usa - Service_pac2
inventoryusa - Service_inv_us
inventorychile - Service_inv_cl
inventorycanada - Service_inv_ca
tester1usa - Service_tes1
dicer1usa - Service_dic1
lithographer1usa - Service_lit1
)
(:init 
(provides designerusa taking_design)
(provides lithographer2usa photolithography)
(provides implanter1usa implanting)
(provides implanter2usa implanting)
(provides designerchina taking_design)
(provides packager1usa packaging)
(provides creator1usa mask_creating)
(provides inventorybrazil taking_silicon)
(provides inventorychina taking_silicon)
(provides packager2usa packaging)
(provides inventoryusa taking_impurity)
(provides inventoryusa taking_silicon)
(provides inventoryusa taking_resist)
(provides inventoryusa taking_chemicals)
(provides inventorychile taking_impurity)
(provides inventorycanada taking_chemicals)
(provides tester1usa testing)
(provides dicer1usa dicing)
(provides lithographer1usa photolithography)
(status designerusa available)
(status lithographer2usa available)
(status implanter1usa available)
(status implanter2usa available)
(status designerchina available)
(status packager1usa available)
(status creator1usa available)
(status inventorybrazil available)
(status inventorychina available)
(taken impurity false)
(implanted impurity false)
(status packager2usa available)
(status inventoryusa available)
(status inventorychile available)
(taken chemicals false)
(implanted chemicals false)
(status inventorycanada available)
(status tester1usa available)
(taken resist false)
(implanted resist false)
(taken design false)
(masked design false)
(taken silicon false)
(masked silicon false)
(lithographed silicon false)
(masked chip false)
(lithographed chip false)
(implanted chip false)
(tested chip false)
(diced chip false)
(packed chip false)
(status dicer1usa available)
(status lithographer1usa available)
(= (total-cost) 0)
)
(:goal 
(and 
(packed chip true)
)
)
(:metric minimize (total-cost))

)