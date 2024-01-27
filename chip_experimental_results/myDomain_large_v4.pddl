(define (domain myDomain_large_v4)
(:requirements :strips :equality :typing)
(:types 
Service - Thing
Capability
Design
SiliconMaterial
ImpurityMaterial
ResistMaterial
ChemicalsMaterial
ChipMaterial
Boolean
State
Service_imp2 Service_inv_cl Service_des_ch Service_inv_br Service_des_us Service_inv_ru Service_des_uk Service_dic2 Service_dic1 Service_inv_cn Service_pac_cool1 Service_inv_be Service_lit2 Service_pac1 Service_pac2 Service_imp1 Service_cre1 Service_qua1 Service_pac_cool3 Service_lit1 Service_tes3 Service_pac3 Service_qua2 Service_inv_ca Service_tes2 Service_inv_aus Service_pac_cool2 Service_inv_us Service_sma_tes1 Service_tes1 - Service
)
(:predicates 
(provides ?srv - Service ?c - Capability) 
(taken ?o - Design ?b - Boolean)
(taken ?o - SiliconMaterial ?b - Boolean)
(taken ?o - ImpurityMaterial ?b - Boolean)
(taken ?o - ResistMaterial ?b - Boolean)
(taken ?o - ChemicalsMaterial ?b - Boolean)
(status ?o - Service ?b - State)
(masked ?o - Design ?b - Boolean)
(masked ?o - SiliconMaterial ?b - Boolean)
(masked ?o - ChipMaterial ?b - Boolean)
(lithographed ?o - SiliconMaterial ?b - Boolean)
(lithographed ?o - ChipMaterial ?b - Boolean)
(implanted ?o - ChipMaterial ?b - Boolean)
(implanted ?o - ImpurityMaterial ?b - Boolean)
(implanted ?o - ResistMaterial ?b - Boolean)
(implanted ?o - ChemicalsMaterial ?b - Boolean)
(tested ?o - ChipMaterial ?b - Boolean)
(smart_tested ?o - ChipMaterial ?b - Boolean)
(quality_checked ?o - ChipMaterial ?b - Boolean)
(diced ?o - ChipMaterial ?b - Boolean)
(packed ?o - ChipMaterial ?b - Boolean)
(packed_cool ?o - ChipMaterial ?b - Boolean)
)
(:functions (total-cost))
(:action implant_2
:parameters (?srv - Service_imp2 ?s - ChipMaterial ?b - ImpurityMaterial ?p - ResistMaterial ?c - ChemicalsMaterial)
:precondition (and (provides ?srv implanting) (lithographed ?s true) (taken ?b true) (taken ?p true) (taken ?c true) (implanted ?s false) (implanted ?b false) (implanted ?p false) (implanted ?c false) (status ?srv available) )
:effect (and (implanted ?s true) (implanted ?b true) (implanted ?p true) (implanted ?c true) (not(implanted ?s false)) (not(implanted ?b false)) (not(implanted ?p false)) (not(implanted ?c false)) (increase (total-cost) 5))
)
(:action take_impurity_cl
:parameters (?srv - Service_inv_cl ?d - Design ?b - ImpurityMaterial)
:precondition (and (provides ?srv taking_impurity) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 7))
)
(:action take_design_cn
:parameters (?srv - Service_des_ch ?o - Design)
:precondition (and (provides ?srv taking_design) (taken ?o false) (status ?srv available) )
:effect (and (taken ?o true) (not(taken ?o false)) (increase (total-cost) 11))
)
(:action take_silicon_br
:parameters (?srv - Service_inv_br ?d - Design ?s - SiliconMaterial)
:precondition (and (provides ?srv taking_silicon) (taken ?d true) (taken ?s false) (status ?srv available) )
:effect (and (taken ?s true) (not(taken ?s false)) (increase (total-cost) 6))
)
(:action take_impurity_br
:parameters (?srv - Service_inv_br ?d - Design ?s - ImpurityMaterial)
:precondition (and (provides ?srv taking_impurity) (taken ?d true) (taken ?s false) (status ?srv available) )
:effect (and (taken ?s true) (not(taken ?s false)) (increase (total-cost) 6))
)
(:action take_design_us
:parameters (?srv - Service_des_us ?o - Design)
:precondition (and (provides ?srv taking_design) (taken ?o false) (status ?srv available) )
:effect (and (taken ?o true) (not(taken ?o false)) (increase (total-cost) 1))
)
(:action take_silicon_ru
:parameters (?srv - Service_inv_ru ?d - Design ?s - SiliconMaterial)
:precondition (and (provides ?srv taking_silicon) (taken ?d true) (taken ?s false) (status ?srv available) )
:effect (and (taken ?s true) (not(taken ?s false)) (increase (total-cost) 9))
)
(:action take_design_uk
:parameters (?srv - Service_des_uk ?o - Design)
:precondition (and (provides ?srv taking_design) (taken ?o false) (status ?srv available) )
:effect (and (taken ?o true) (not(taken ?o false)) (increase (total-cost) 6))
)
(:action dic_2
:parameters (?srv - Service_dic2 ?w - ChipMaterial)
:precondition (and (provides ?srv dicing) (tested ?w true) (diced ?w false) (status ?srv available) )
:effect (and (diced ?w true) (not(diced ?w false)) (increase (total-cost) 1))
)
(:action dic_1
:parameters (?srv - Service_dic1 ?w - ChipMaterial)
:precondition (and (provides ?srv dicing) (tested ?w true) (diced ?w false) (status ?srv available) )
:effect (and (diced ?w true) (not(diced ?w false)) (increase (total-cost) 1))
)
(:action take_silicon_cn
:parameters (?srv - Service_inv_cn ?d - Design ?s - SiliconMaterial)
:precondition (and (provides ?srv taking_silicon) (taken ?d true) (taken ?s false) (status ?srv available) )
:effect (and (taken ?s true) (not(taken ?s false)) (increase (total-cost) 11))
)
(:action pack_cool_1
:parameters (?srv - Service_pac_cool1 ?w - ChipMaterial)
:precondition (and (provides ?srv packaging_cooling) (diced ?w true) (packed_cool ?w false) (status ?srv available) )
:effect (and (packed_cool ?w true) (not(packed_cool ?w false)) (increase (total-cost) 1))
)
(:action take_resist_be
:parameters (?srv - Service_inv_be ?d - Design ?b - ResistMaterial)
:precondition (and (provides ?srv taking_resist) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 7))
)
(:action photolithograph_2
:parameters (?srv - Service_lit2 ?s - SiliconMaterial ?c - ChipMaterial)
:precondition (and (provides ?srv photolithography) (masked ?c true) (lithographed ?s false) (lithographed ?c false) (status ?srv available) )
:effect (and (lithographed ?s true) (lithographed ?c true) (not(lithographed ?s false)) (not(lithographed ?c false)) (increase (total-cost) 5))
)
(:action pack_1
:parameters (?srv - Service_pac1 ?w - ChipMaterial)
:precondition (and (provides ?srv packaging) (diced ?w true) (packed ?w false) (status ?srv available) )
:effect (and (packed ?w true) (not(packed ?w false)) (increase (total-cost) 1))
)
(:action pack_2
:parameters (?srv - Service_pac2 ?w - ChipMaterial)
:precondition (and (provides ?srv packaging) (diced ?w true) (packed ?w false) (status ?srv available) )
:effect (and (packed ?w true) (not(packed ?w false)) (increase (total-cost) 1))
)
(:action implant_1
:parameters (?srv - Service_imp1 ?s - ChipMaterial ?b - ImpurityMaterial ?p - ResistMaterial ?c - ChemicalsMaterial)
:precondition (and (provides ?srv implanting) (lithographed ?s true) (taken ?b true) (taken ?p true) (taken ?c true) (implanted ?s false) (implanted ?b false) (implanted ?p false) (implanted ?c false) (status ?srv available) )
:effect (and (implanted ?s true) (implanted ?b true) (implanted ?p true) (implanted ?c true) (not(implanted ?s false)) (not(implanted ?b false)) (not(implanted ?p false)) (not(implanted ?c false)) (increase (total-cost) 5))
)
(:action mask_create_1
:parameters (?srv - Service_cre1 ?s - SiliconMaterial ?d - Design ?c - ChipMaterial)
:precondition (and (provides ?srv mask_creating) (taken ?d true) (taken ?s true) (masked ?d false) (masked ?s false) (masked ?c false) (status ?srv available) )
:effect (and (masked ?d true) (masked ?s true) (masked ?c true) (not(masked ?d false)) (not(masked ?s false)) (not(masked ?c false)) (increase (total-cost) 1))
)
(:action qua_1
:parameters (?srv - Service_qua1 ?a - ChipMaterial)
:precondition (and (provides ?srv checking_quality) (smart_tested ?a true) (quality_checked ?a false) (status ?srv available) )
:effect (and (quality_checked ?a true) (not(quality_checked ?a false)) (increase (total-cost) 5))
)
(:action pack_cool_3
:parameters (?srv - Service_pac_cool3 ?w - ChipMaterial)
:precondition (and (provides ?srv packaging_cooling) (diced ?w true) (packed_cool ?w false) (status ?srv available) )
:effect (and (packed_cool ?w true) (not(packed_cool ?w false)) (increase (total-cost) 9))
)
(:action photolithograph_1
:parameters (?srv - Service_lit1 ?s - SiliconMaterial ?c - ChipMaterial)
:precondition (and (provides ?srv photolithography) (masked ?c true) (lithographed ?s false) (lithographed ?c false) (status ?srv available) )
:effect (and (lithographed ?s true) (lithographed ?c true) (not(lithographed ?s false)) (not(lithographed ?c false)) (increase (total-cost) 5))
)
(:action test_3
:parameters (?srv - Service_tes3 ?a - ChipMaterial)
:precondition (and (provides ?srv testing) (implanted ?a true) (tested ?a false) (status ?srv available) )
:effect (and (tested ?a true) (not(tested ?a false)) (increase (total-cost) 7))
)
(:action pack_3
:parameters (?srv - Service_pac3 ?w - ChipMaterial)
:precondition (and (provides ?srv packaging) (diced ?w true) (packed ?w false) (status ?srv available) )
:effect (and (packed ?w true) (not(packed ?w false)) (increase (total-cost) 7))
)
(:action qua_2
:parameters (?srv - Service_qua2 ?a - ChipMaterial)
:precondition (and (provides ?srv checking_quality) (smart_tested ?a true) (quality_checked ?a false) (status ?srv available) )
:effect (and (quality_checked ?a true) (not(quality_checked ?a false)) (increase (total-cost) 2))
)
(:action take_chemicals_ca
:parameters (?srv - Service_inv_ca ?d - Design ?b - ChemicalsMaterial)
:precondition (and (provides ?srv taking_chemicals) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 2))
)
(:action test_2
:parameters (?srv - Service_tes2 ?a - ChipMaterial)
:precondition (and (provides ?srv testing) (implanted ?a true) (tested ?a false) (status ?srv available) )
:effect (and (tested ?a true) (not(tested ?a false)) (increase (total-cost) 5))
)
(:action take_resist_aus
:parameters (?srv - Service_inv_aus ?d - Design ?b - ResistMaterial)
:precondition (and (provides ?srv taking_resist) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 8))
)
(:action pack_cool_2
:parameters (?srv - Service_pac_cool2 ?w - ChipMaterial)
:precondition (and (provides ?srv packaging_cooling) (diced ?w true) (packed_cool ?w false) (status ?srv available) )
:effect (and (packed_cool ?w true) (not(packed_cool ?w false)) (increase (total-cost) 4))
)
(:action take_impurity_us
:parameters (?srv - Service_inv_us ?d - Design ?b - ImpurityMaterial)
:precondition (and (provides ?srv taking_impurity) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 1))
)
(:action take_silicon_us
:parameters (?srv - Service_inv_us ?d - Design ?s - SiliconMaterial)
:precondition (and (provides ?srv taking_silicon) (taken ?d true) (taken ?s false) (status ?srv available) )
:effect (and (taken ?s true) (not(taken ?s false)) (increase (total-cost) 1))
)
(:action take_resist_us
:parameters (?srv - Service_inv_us ?d - Design ?b - ResistMaterial)
:precondition (and (provides ?srv taking_resist) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 1))
)
(:action take_chemicals_us
:parameters (?srv - Service_inv_us ?d - Design ?b - ChemicalsMaterial)
:precondition (and (provides ?srv taking_chemicals) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 1))
)
(:action sma_test_1
:parameters (?srv - Service_sma_tes1 ?a - ChipMaterial)
:precondition (and (provides ?srv smart_testing) (implanted ?a true) (smart_tested ?a false) (status ?srv available) )
:effect (and (smart_tested ?a true) (not(smart_tested ?a false)) (increase (total-cost) 5))
)
(:action test_1
:parameters (?srv - Service_tes1 ?a - ChipMaterial)
:precondition (and (provides ?srv testing) (implanted ?a true) (tested ?a false) (status ?srv available) )
:effect (and (tested ?a true) (not(tested ?a false)) (increase (total-cost) 5))
)

)