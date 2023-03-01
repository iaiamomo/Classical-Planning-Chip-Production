(define (domain myDomain)
(:requirements :strips :equality :typing)
(:types 
Service - Thing
Capability
Design
BoronMaterial
PhosphorMaterial
SiliconMaterial
Material
Boolean
State
Service_str2 Service_pac1 Service_inv_kz Service_cle1 Service_des_ch Service_etc2 Service_act1 Service_etc1 Service_des_uk Service_str1 Service_inv_my Service_inv_jp Service_tes2 Service_act2 Service_inv_fr Service_des_us Service_inv_bo Service_exp2 Service_ass2 Service_cle2 Service_dev1 Service_inv_ru Service_imp1 Service_exp1 Service_imp2 Service_inv_us Service_coa1 Service_tes1 Service_dep1 Service_inv_tr Service_des_tw Service_pac2 Service_dev2 Service_inv_ma Service_inv_ar Service_inv_cn Service_dep2 Service_inv_no Service_inv_br Service_coa2 Service_inv_cl Service_ass1 Service_inv_kr - Service
)
(:predicates 
(provides ?srv - Service ?c - Capability) 
(taken ?o - Design ?b - Boolean)
(taken ?o - BoronMaterial ?b - Boolean)
(taken ?o - PhosphorMaterial ?b - Boolean)
(taken ?o - SiliconMaterial ?b - Boolean)
(taken ?o - Material ?b - Boolean)
(cleaned ?o - Material ?b - Boolean)
(deposited ?o - Material ?b - Boolean)
(coated ?o - Material ?b - Boolean)
(exposed ?o - Material ?b - Boolean)
(developed ?o - Material ?b - Boolean)
(etched ?o - Material ?b - Boolean)
(implanted ?o - Material ?b - Boolean)
(implanted ?o - BoronMaterial ?b - Boolean)
(implanted ?o - PhosphorMaterial ?b - Boolean)
(implanted ?o - SiliconMaterial ?b - Boolean)
(activated ?o - Material ?b - Boolean)
(stripped ?o - Material ?b - Boolean)
(assembled ?o - Material ?b - Boolean)
(tested ?o - Material ?b - Boolean)
(packed ?o - Material ?b - Boolean)
(status ?o - Service ?b - State)
)
(:functions (total-cost))
(:action strip_2
:parameters (?srv - Service_str2 ?w - Material)
:precondition (and (provides ?srv stripping) (activated ?w true) (stripped ?w false) (status ?srv available) )
:effect (and (stripped ?w true) (not(stripped ?w false)) (increase (total-cost) 3))
)
(:action pack_1
:parameters (?srv - Service_pac1 ?w - Material)
:precondition (and (provides ?srv packaging) (tested ?w true) (packed ?w false) (status ?srv available) )
:effect (and (packed ?w true) (not(packed ?w false)) (increase (total-cost) 1))
)
(:action take_boron_kz
:parameters (?srv - Service_inv_kz ?d - Design ?b - BoronMaterial)
:precondition (and (provides ?srv taking_boron) (taken ?d true) (taken ?b false) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 10))
)
(:action clean_1
:parameters (?srv - Service_cle1 ?d - Design ?b - BoronMaterial ?p - PhosphorMaterial ?s - SiliconMaterial ?w - Material)
:precondition (and (provides ?srv cleaning) (taken ?d true) (taken ?b true) (taken ?p true) (taken ?s true) (taken ?w true) (cleaned ?w false) (status ?srv available) )
:effect (and (cleaned ?w true) (not(cleaned ?w false)) (increase (total-cost) 1))
)
(:action take_design_cn
:parameters (?srv - Service_des_ch ?o - Design)
:precondition (and (provides ?srv taking_design) (taken ?o false) (status ?srv available) )
:effect (and (taken ?o true) (not(taken ?o false)) (increase (total-cost) 11))
)
(:action etch_2
:parameters (?srv - Service_etc2 ?w - Material)
:precondition (and (provides ?srv etching) (developed ?w true) (etched ?w false) (status ?srv available) )
:effect (and (etched ?w true) (not(etched ?w false)) (increase (total-cost) 5))
)
(:action activate_1
:parameters (?srv - Service_act1 ?b - BoronMaterial ?p - PhosphorMaterial ?s - SiliconMaterial ?w - Material)
:precondition (and (provides ?srv activating) (implanted ?b true) (implanted ?p true) (implanted ?s true) (implanted ?w true) (activated ?w false) (status ?srv available) )
:effect (and (activated ?w true) (not(activated ?w false)) (increase (total-cost) 1))
)
(:action etch_1
:parameters (?srv - Service_etc1 ?w - Material)
:precondition (and (provides ?srv etching) (developed ?w true) (etched ?w false) (status ?srv available) )
:effect (and (etched ?w true) (not(etched ?w false)) (increase (total-cost) 3))
)
(:action take_design_uk
:parameters (?srv - Service_des_uk ?o - Design)
:precondition (and (provides ?srv taking_design) (taken ?o false) (status ?srv available) )
:effect (and (taken ?o true) (not(taken ?o false)) (increase (total-cost) 6))
)
(:action strip_1
:parameters (?srv - Service_str1 ?w - Material)
:precondition (and (provides ?srv stripping) (activated ?w true) (stripped ?w false) (status ?srv available) )
:effect (and (stripped ?w true) (not(stripped ?w false)) (increase (total-cost) 3))
)
(:action take_silicon_my
:parameters (?srv - Service_inv_my ?d - Design ?s - SiliconMaterial)
:precondition (and (provides ?srv taking_silicon) (taken ?d true) (taken ?s false) )
:effect (and (taken ?s true) (not(taken ?s false)) (increase (total-cost) 14))
)
(:action take_wafer_jp
:parameters (?srv - Service_inv_jp ?d - Design ?w - Material)
:precondition (and (provides ?srv taking_wafer) (taken ?d true) (taken ?w false) )
:effect (and (taken ?w true) (not(taken ?w false)) (increase (total-cost) 10))
)
(:action test_2
:parameters (?srv - Service_tes2 ?w - Material)
:precondition (and (provides ?srv testing) (assembled ?w true) (tested ?w false) (status ?srv available) )
:effect (and (tested ?w true) (not(tested ?w false)) (increase (total-cost) 3))
)
(:action activate_2
:parameters (?srv - Service_act2 ?b - BoronMaterial ?p - PhosphorMaterial ?s - SiliconMaterial ?w - Material)
:precondition (and (provides ?srv activating) (implanted ?b true) (implanted ?p true) (implanted ?s true) (implanted ?w true) (activated ?w false) (status ?srv available) )
:effect (and (activated ?w true) (not(activated ?w false)) (increase (total-cost) 3))
)
(:action take_silicon_fr
:parameters (?srv - Service_inv_fr ?d - Design ?s - SiliconMaterial)
:precondition (and (provides ?srv taking_silicon) (taken ?d true) (taken ?s false) )
:effect (and (taken ?s true) (not(taken ?s false)) (increase (total-cost) 7))
)
(:action take_design_us
:parameters (?srv - Service_des_us ?o - Design)
:precondition (and (provides ?srv taking_design) (taken ?o false) (status ?srv available) )
:effect (and (taken ?o true) (not(taken ?o false)) (increase (total-cost) 1))
)
(:action take_boron_bo
:parameters (?srv - Service_inv_bo ?d - Design ?b - BoronMaterial)
:precondition (and (provides ?srv taking_boron) (taken ?d true) (taken ?b false) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 6))
)
(:action expose_2
:parameters (?srv - Service_exp2 ?w - Material)
:precondition (and (provides ?srv exposing) (coated ?w true) (exposed ?w false) (status ?srv available) )
:effect (and (exposed ?w true) (not(exposed ?w false)) (increase (total-cost) 1))
)
(:action assemble_2
:parameters (?srv - Service_ass2 ?w - Material)
:precondition (and (provides ?srv assembling) (stripped ?w true) (assembled ?w false) (status ?srv available) )
:effect (and (assembled ?w true) (not(assembled ?w false)) (increase (total-cost) 3))
)
(:action clean_2
:parameters (?srv - Service_cle2 ?d - Design ?b - BoronMaterial ?p - PhosphorMaterial ?s - SiliconMaterial ?w - Material)
:precondition (and (provides ?srv cleaning) (taken ?d true) (taken ?b true) (taken ?p true) (taken ?s true) (taken ?w true) (cleaned ?w false) (status ?srv available) )
:effect (and (cleaned ?w true) (not(cleaned ?w false)) (increase (total-cost) 3))
)
(:action delevop_1
:parameters (?srv - Service_dev1 ?w - Material)
:precondition (and (provides ?srv developing) (exposed ?w true) (developed ?w false) (status ?srv available) )
:effect (and (developed ?w true) (not(developed ?w false)) (increase (total-cost) 5))
)
(:action take_silicon_ru
:parameters (?srv - Service_inv_ru ?d - Design ?s - SiliconMaterial)
:precondition (and (provides ?srv taking_silicon) (taken ?d true) (taken ?s false) )
:effect (and (taken ?s true) (not(taken ?s false)) (increase (total-cost) 9))
)
(:action take_boron_ru
:parameters (?srv - Service_inv_ru ?d - Design ?b - BoronMaterial)
:precondition (and (provides ?srv taking_boron) (taken ?d true) (taken ?b false) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 9))
)
(:action implant_1
:parameters (?srv - Service_imp1 ?w - Material ?b - BoronMaterial ?p - PhosphorMaterial ?s - SiliconMaterial)
:precondition (and (provides ?srv implanting) (etched ?w true) (implanted ?w false) (implanted ?b false) (implanted ?p false) (implanted ?s false) (status ?srv available) )
:effect (and (implanted ?w true) (implanted ?b true) (implanted ?p true) (implanted ?s true) (not(implanted ?w false)) (not(implanted ?b false)) (not(implanted ?p false)) (not(implanted ?s false)) (increase (total-cost) 5))
)
(:action expose_1
:parameters (?srv - Service_exp1 ?w - Material)
:precondition (and (provides ?srv exposing) (coated ?w true) (exposed ?w false) (status ?srv available) )
:effect (and (exposed ?w true) (not(exposed ?w false)) (increase (total-cost) 3))
)
(:action implant_2
:parameters (?srv - Service_imp2 ?w - Material ?b - BoronMaterial ?p - PhosphorMaterial ?s - SiliconMaterial)
:precondition (and (provides ?srv implanting) (etched ?w true) (implanted ?w false) (implanted ?b false) (implanted ?p false) (implanted ?s false) (status ?srv available) )
:effect (and (implanted ?w true) (implanted ?b true) (implanted ?p true) (implanted ?s true) (not(implanted ?w false)) (not(implanted ?b false)) (not(implanted ?p false)) (not(implanted ?s false)) (increase (total-cost) 3))
)
(:action take_boron_us
:parameters (?srv - Service_inv_us ?d - Design ?b - BoronMaterial)
:precondition (and (provides ?srv taking_boron) (taken ?d true) (taken ?b false) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 1))
)
(:action take_phosphor_us
:parameters (?srv - Service_inv_us ?d - Design ?p - PhosphorMaterial)
:precondition (and (provides ?srv taking_phosphor) (taken ?d true) (taken ?p false) )
:effect (and (taken ?p true) (not(taken ?p false)) (increase (total-cost) 1))
)
(:action take_silicon_us
:parameters (?srv - Service_inv_us ?d - Design ?s - SiliconMaterial)
:precondition (and (provides ?srv taking_silicon) (taken ?d true) (taken ?s false) )
:effect (and (taken ?s true) (not(taken ?s false)) (increase (total-cost) 1))
)
(:action coat_1
:parameters (?srv - Service_coa1 ?w - Material)
:precondition (and (provides ?srv coating) (deposited ?w true) (coated ?w false) (status ?srv available) )
:effect (and (coated ?w true) (not(coated ?w false)) (increase (total-cost) 5))
)
(:action test_1
:parameters (?srv - Service_tes1 ?w - Material)
:precondition (and (provides ?srv testing) (assembled ?w true) (tested ?w false) (status ?srv available) )
:effect (and (tested ?w true) (not(tested ?w false)) (increase (total-cost) 5))
)
(:action deposit_1
:parameters (?srv - Service_dep1 ?w - Material)
:precondition (and (provides ?srv depositing) (cleaned ?w true) (deposited ?w false) (status ?srv available) )
:effect (and (deposited ?w true) (not(deposited ?w false)) (increase (total-cost) 5))
)
(:action take_boron_tr
:parameters (?srv - Service_inv_tr ?d - Design ?b - BoronMaterial)
:precondition (and (provides ?srv taking_boron) (taken ?d true) (taken ?b false) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 10))
)
(:action take_design_tw
:parameters (?srv - Service_des_tw ?o - Design)
:precondition (and (provides ?srv taking_design) (taken ?o false) (status ?srv available) )
:effect (and (taken ?o true) (not(taken ?o false)) (increase (total-cost) 12))
)
(:action pack_2
:parameters (?srv - Service_pac2 ?w - Material)
:precondition (and (provides ?srv packaging) (tested ?w true) (packed ?w false) (status ?srv available) )
:effect (and (packed ?w true) (not(packed ?w false)) (increase (total-cost) 3))
)
(:action delevop_2
:parameters (?srv - Service_dev2 ?w - Material)
:precondition (and (provides ?srv developing) (exposed ?w true) (developed ?w false) (status ?srv available) )
:effect (and (developed ?w true) (not(developed ?w false)) (increase (total-cost) 5))
)
(:action take_phosphor_ma
:parameters (?srv - Service_inv_ma ?d - Design ?p - PhosphorMaterial)
:precondition (and (provides ?srv taking_phosphor) (taken ?d true) (taken ?p false) )
:effect (and (taken ?p true) (not(taken ?p false)) (increase (total-cost) 7))
)
(:action take_boron_ar
:parameters (?srv - Service_inv_ar ?d - Design ?b - BoronMaterial)
:precondition (and (provides ?srv taking_boron) (taken ?d true) (taken ?b false) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 8))
)
(:action take_boron_cn
:parameters (?srv - Service_inv_cn ?d - Design ?b - BoronMaterial)
:precondition (and (provides ?srv taking_boron) (taken ?d true) (taken ?b false) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 11))
)
(:action take_silicon_ch
:parameters (?srv - Service_inv_cn ?d - Design ?s - SiliconMaterial)
:precondition (and (provides ?srv taking_silicon) (taken ?d true) (taken ?s false) )
:effect (and (taken ?s true) (not(taken ?s false)) (increase (total-cost) 11))
)
(:action take_phosphor_ch
:parameters (?srv - Service_inv_cn ?d - Design ?p - PhosphorMaterial)
:precondition (and (provides ?srv taking_phosphor) (taken ?d true) (taken ?p false) )
:effect (and (taken ?p true) (not(taken ?p false)) (increase (total-cost) 11))
)
(:action deposit_2
:parameters (?srv - Service_dep2 ?w - Material)
:precondition (and (provides ?srv depositing) (cleaned ?w true) (deposited ?w false) (status ?srv available) )
:effect (and (deposited ?w true) (not(deposited ?w false)) (increase (total-cost) 1))
)
(:action take_silicon_no
:parameters (?srv - Service_inv_no ?d - Design ?s - SiliconMaterial)
:precondition (and (provides ?srv taking_silicon) (taken ?d true) (taken ?s false) )
:effect (and (taken ?s true) (not(taken ?s false)) (increase (total-cost) 7))
)
(:action take_silicon_br
:parameters (?srv - Service_inv_br ?d - Design ?s - SiliconMaterial)
:precondition (and (provides ?srv taking_silicon) (taken ?d true) (taken ?s false) )
:effect (and (taken ?s true) (not(taken ?s false)) (increase (total-cost) 6))
)
(:action coat_2
:parameters (?srv - Service_coa2 ?w - Material)
:precondition (and (provides ?srv coating) (deposited ?w true) (coated ?w false) (status ?srv available) )
:effect (and (coated ?w true) (not(coated ?w false)) (increase (total-cost) 5))
)
(:action take_boron_cl
:parameters (?srv - Service_inv_cl ?d - Design ?b - BoronMaterial)
:precondition (and (provides ?srv taking_boron) (taken ?d true) (taken ?b false) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 7))
)
(:action assemble_1
:parameters (?srv - Service_ass1 ?w - Material)
:precondition (and (provides ?srv assembling) (stripped ?w true) (assembled ?w false) (status ?srv available) )
:effect (and (assembled ?w true) (not(assembled ?w false)) (increase (total-cost) 1))
)
(:action take_wafer_kr
:parameters (?srv - Service_inv_kr ?d - Design ?w - Material)
:precondition (and (provides ?srv taking_wafer) (taken ?d true) (taken ?w false) )
:effect (and (taken ?w true) (not(taken ?w false)) (increase (total-cost) 10))
)

)