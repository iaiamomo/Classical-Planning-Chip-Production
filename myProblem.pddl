(define (problem myProblem)
(:domain myDomain)
(:objects 
design - Design
boron - BoronMaterial
phosphor - PhosphorMaterial
silicon - SiliconMaterial
wafer - Material
true - Boolean
false - Boolean
available - State
broken - State
stripping - Capability
packaging - Capability
taking_boron - Capability
cleaning - Capability
taking_design - Capability
etching - Capability
activating - Capability
taking_silicon - Capability
taking_wafer - Capability
testing - Capability
exposing - Capability
assembling - Capability
developing - Capability
implanting - Capability
taking_phosphor - Capability
coating - Capability
depositing - Capability
stripper2usa - Service_str2
packager1usa - Service_pac1
inventorykazakhstan - Service_inv_kz
cleaner1usa - Service_cle1
designerchina - Service_des_ch
etcher2usa - Service_etc2
activator1usa - Service_act1
etcher1usa - Service_etc1
designeruk - Service_des_uk
stripper1usa - Service_str1
inventorymalaysia - Service_inv_my
inventoryjapan - Service_inv_jp
tester2usa - Service_tes2
activator2usa - Service_act2
inventoryfrance - Service_inv_fr
designerusa - Service_des_us
inventorybolivia - Service_inv_bo
exposer2usa - Service_exp2
assembler2usa - Service_ass2
cleaner2usa - Service_cle2
developer1usa - Service_dev1
inventoryrussia - Service_inv_ru
implanter1usa - Service_imp1
exposer1usa - Service_exp1
implanter2usa - Service_imp2
inventoryusa - Service_inv_us
coater1usa - Service_coa1
tester1usa - Service_tes1
depositer1usa - Service_dep1
inventoryturkey - Service_inv_tr
designertaiwan - Service_des_tw
packager2usa - Service_pac2
developer2usa - Service_dev2
inventorymorocco - Service_inv_ma
inventoryargentina - Service_inv_ar
inventorychina - Service_inv_cn
depositer2usa - Service_dep2
inventorynorway - Service_inv_no
inventorybrazil - Service_inv_br
coater2usa - Service_coa2
inventorychile - Service_inv_cl
assembler1usa - Service_ass1
inventorysouthkorea - Service_inv_kr
)
(:init 
(provides stripper2usa stripping)
(provides packager1usa packaging)
(provides inventorykazakhstan taking_boron)
(provides cleaner1usa cleaning)
(provides designerchina taking_design)
(provides etcher2usa etching)
(provides activator1usa activating)
(provides etcher1usa etching)
(provides designeruk taking_design)
(provides stripper1usa stripping)
(provides inventorymalaysia taking_silicon)
(provides inventoryjapan taking_wafer)
(provides tester2usa testing)
(provides activator2usa activating)
(provides inventoryfrance taking_silicon)
(provides designerusa taking_design)
(provides inventorybolivia taking_boron)
(provides exposer2usa exposing)
(provides assembler2usa assembling)
(provides cleaner2usa cleaning)
(provides developer1usa developing)
(provides inventoryrussia taking_silicon)
(provides inventoryrussia taking_boron)
(provides implanter1usa implanting)
(provides exposer1usa exposing)
(provides implanter2usa implanting)
(provides inventoryusa taking_boron)
(provides inventoryusa taking_phosphor)
(provides inventoryusa taking_silicon)
(provides coater1usa coating)
(provides tester1usa testing)
(provides depositer1usa depositing)
(provides inventoryturkey taking_boron)
(provides designertaiwan taking_design)
(provides packager2usa packaging)
(provides developer2usa developing)
(provides inventorymorocco taking_phosphor)
(provides inventoryargentina taking_boron)
(provides inventorychina taking_boron)
(provides inventorychina taking_silicon)
(provides inventorychina taking_phosphor)
(provides depositer2usa depositing)
(provides inventorynorway taking_silicon)
(provides inventorybrazil taking_silicon)
(provides coater2usa coating)
(provides inventorychile taking_boron)
(provides assembler1usa assembling)
(provides inventorysouthkorea taking_wafer)
(status stripper2usa available)
(status packager1usa available)
(status inventorykazakhstan available)
(status cleaner1usa available)
(status designerchina available)
(status etcher2usa available)
(status activator1usa available)
(status etcher1usa available)
(status designeruk available)
(status stripper1usa available)
(status inventorymalaysia available)
(status inventoryjapan available)
(status tester2usa available)
(status activator2usa available)
(status inventoryfrance available)
(status designerusa available)
(status inventorybolivia available)
(status exposer2usa available)
(status assembler2usa available)
(status cleaner2usa available)
(status developer1usa available)
(status inventoryrussia available)
(status implanter1usa available)
(taken phosphor false)
(implanted phosphor false)
(status exposer1usa available)
(status implanter2usa available)
(status inventoryusa available)
(status coater1usa available)
(status tester1usa available)
(status depositer1usa available)
(status inventoryturkey available)
(status designertaiwan available)
(taken design false)
(taken boron false)
(implanted boron false)
(status packager2usa available)
(status developer2usa available)
(status inventorymorocco available)
(status inventoryargentina available)
(status inventorychina available)
(status depositer2usa available)
(status inventorynorway available)
(taken wafer false)
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
(status inventorybrazil available)
(status coater2usa available)
(status inventorychile available)
(taken silicon false)
(implanted silicon false)
(status assembler1usa available)
(status inventorysouthkorea available)
(= (total-cost) 0)
)
(:goal 
(and 
(packed wafer true)
)
)
(:metric minimize (total-cost))

)