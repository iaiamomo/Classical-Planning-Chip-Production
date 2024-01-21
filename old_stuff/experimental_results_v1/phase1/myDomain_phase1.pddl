(define (domain myDomain_phase1)
(:requirements :strips :equality :typing)
(:types 
Service - Thing
Capability
Design
BoronMaterial
PhosphorMaterial
SiliconMaterial
AluminumMaterial
ResistMaterial
PlasticMaterial
ChemicalsMaterial
CopperMaterial
Material
Boolean
State
Service_inv_in Service_des_uk Service_des_tw Service_inv_kz Service_inv_aus Service_inv_kr Service_inv_no Service_inv_cn Service_des_ch Service_inv_br Service_inv_ru Service_inv_au Service_inv_ma Service_inv_my Service_inv_bo Service_inv_ar Service_inv_be Service_inv_jp Service_des_us Service_inv_sv Service_inv_fr Service_inv_us Service_inv_tr Service_inv_pe Service_inv_cl Service_inv_ca - Service
)
(:predicates 
(provides ?srv - Service ?c - Capability) 
(taken ?o - Design ?b - Boolean)
(taken ?o - BoronMaterial ?b - Boolean)
(taken ?o - PhosphorMaterial ?b - Boolean)
(taken ?o - SiliconMaterial ?b - Boolean)
(taken ?o - AluminumMaterial ?b - Boolean)
(taken ?o - ResistMaterial ?b - Boolean)
(taken ?o - PlasticMaterial ?b - Boolean)
(taken ?o - ChemicalsMaterial ?b - Boolean)
(taken ?o - CopperMaterial ?b - Boolean)
(taken ?o - Material ?b - Boolean)
(status ?o - Service ?b - State)
)
(:functions (total-cost))
(:action take_aluminum_in
:parameters (?srv - Service_inv_in ?d - Design ?b - AluminumMaterial)
:precondition (and (provides ?srv taking_aluminum) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 13))
)
(:action take_resist_in
:parameters (?srv - Service_inv_in ?d - Design ?b - ResistMaterial)
:precondition (and (provides ?srv taking_resist) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 13))
)
(:action take_plastic_in
:parameters (?srv - Service_inv_in ?d - Design ?p - PlasticMaterial)
:precondition (and (provides ?srv taking_plastic) (taken ?d true) (taken ?p false) (status ?srv available) )
:effect (and (taken ?p true) (not(taken ?p false)) (increase (total-cost) 13))
)
(:action take_design_uk
:parameters (?srv - Service_des_uk ?o - Design)
:precondition (and (provides ?srv taking_design) (taken ?o false) (status ?srv available) )
:effect (and (taken ?o true) (not(taken ?o false)) (increase (total-cost) 6))
)
(:action take_design_tw
:parameters (?srv - Service_des_tw ?o - Design)
:precondition (and (provides ?srv taking_design) (taken ?o false) (status ?srv available) )
:effect (and (taken ?o true) (not(taken ?o false)) (increase (total-cost) 12))
)
(:action take_boron_kz
:parameters (?srv - Service_inv_kz ?d - Design ?b - BoronMaterial)
:precondition (and (provides ?srv taking_boron) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 10))
)
(:action take_resist_aus
:parameters (?srv - Service_inv_aus ?d - Design ?b - ResistMaterial)
:precondition (and (provides ?srv taking_resist) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 8))
)
(:action take_wafer_kr
:parameters (?srv - Service_inv_kr ?d - Design ?w - Material)
:precondition (and (provides ?srv taking_wafer) (taken ?d true) (taken ?w false) (status ?srv available) )
:effect (and (taken ?w true) (not(taken ?w false)) (increase (total-cost) 10))
)
(:action take_silicon_no
:parameters (?srv - Service_inv_no ?d - Design ?s - SiliconMaterial)
:precondition (and (provides ?srv taking_silicon) (taken ?d true) (taken ?s false) (status ?srv available) )
:effect (and (taken ?s true) (not(taken ?s false)) (increase (total-cost) 7))
)
(:action take_boron_cn
:parameters (?srv - Service_inv_cn ?d - Design ?b - BoronMaterial)
:precondition (and (provides ?srv taking_boron) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 11))
)
(:action take_silicon_cn
:parameters (?srv - Service_inv_cn ?d - Design ?s - SiliconMaterial)
:precondition (and (provides ?srv taking_silicon) (taken ?d true) (taken ?s false) (status ?srv available) )
:effect (and (taken ?s true) (not(taken ?s false)) (increase (total-cost) 11))
)
(:action take_phosphor_cn
:parameters (?srv - Service_inv_cn ?d - Design ?p - PhosphorMaterial)
:precondition (and (provides ?srv taking_phosphor) (taken ?d true) (taken ?p false) (status ?srv available) )
:effect (and (taken ?p true) (not(taken ?p false)) (increase (total-cost) 11))
)
(:action take_plastic_cn
:parameters (?srv - Service_inv_cn ?d - Design ?p - PlasticMaterial)
:precondition (and (provides ?srv taking_plastic) (taken ?d true) (taken ?p false) (status ?srv available) )
:effect (and (taken ?p true) (not(taken ?p false)) (increase (total-cost) 11))
)
(:action take_copper_cn
:parameters (?srv - Service_inv_cn ?d - Design ?b - CopperMaterial)
:precondition (and (provides ?srv taking_copper) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 11))
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
(:action take_aluminum_br
:parameters (?srv - Service_inv_br ?d - Design ?b - AluminumMaterial)
:precondition (and (provides ?srv taking_aluminum) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 6))
)
(:action take_silicon_ru
:parameters (?srv - Service_inv_ru ?d - Design ?s - SiliconMaterial)
:precondition (and (provides ?srv taking_silicon) (taken ?d true) (taken ?s false) (status ?srv available) )
:effect (and (taken ?s true) (not(taken ?s false)) (increase (total-cost) 9))
)
(:action take_boron_ru
:parameters (?srv - Service_inv_ru ?d - Design ?b - BoronMaterial)
:precondition (and (provides ?srv taking_boron) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 9))
)
(:action take_aluminum_au
:parameters (?srv - Service_inv_au ?d - Design ?b - AluminumMaterial)
:precondition (and (provides ?srv taking_aluminum) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 14))
)
(:action take_phosphor_ma
:parameters (?srv - Service_inv_ma ?d - Design ?p - PhosphorMaterial)
:precondition (and (provides ?srv taking_phosphor) (taken ?d true) (taken ?p false) (status ?srv available) )
:effect (and (taken ?p true) (not(taken ?p false)) (increase (total-cost) 7))
)
(:action take_silicon_my
:parameters (?srv - Service_inv_my ?d - Design ?s - SiliconMaterial)
:precondition (and (provides ?srv taking_silicon) (taken ?d true) (taken ?s false) (status ?srv available) )
:effect (and (taken ?s true) (not(taken ?s false)) (increase (total-cost) 14))
)
(:action take_boron_bo
:parameters (?srv - Service_inv_bo ?d - Design ?b - BoronMaterial)
:precondition (and (provides ?srv taking_boron) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 6))
)
(:action take_boron_ar
:parameters (?srv - Service_inv_ar ?d - Design ?b - BoronMaterial)
:precondition (and (provides ?srv taking_boron) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 8))
)
(:action take_resist_be
:parameters (?srv - Service_inv_be ?d - Design ?b - ResistMaterial)
:precondition (and (provides ?srv taking_resist) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 7))
)
(:action take_wafer_jp
:parameters (?srv - Service_inv_jp ?d - Design ?w - Material)
:precondition (and (provides ?srv taking_wafer) (taken ?d true) (taken ?w false) (status ?srv available) )
:effect (and (taken ?w true) (not(taken ?w false)) (increase (total-cost) 10))
)
(:action take_design_us
:parameters (?srv - Service_des_us ?o - Design)
:precondition (and (provides ?srv taking_design) (taken ?o false) (status ?srv available) )
:effect (and (taken ?o true) (not(taken ?o false)) (increase (total-cost) 1))
)
(:action take_resist_sv
:parameters (?srv - Service_inv_sv ?d - Design ?b - ResistMaterial)
:precondition (and (provides ?srv taking_resist) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 8))
)
(:action take_silicon_fr
:parameters (?srv - Service_inv_fr ?d - Design ?s - SiliconMaterial)
:precondition (and (provides ?srv taking_silicon) (taken ?d true) (taken ?s false) (status ?srv available) )
:effect (and (taken ?s true) (not(taken ?s false)) (increase (total-cost) 7))
)
(:action take_boron_us
:parameters (?srv - Service_inv_us ?d - Design ?b - BoronMaterial)
:precondition (and (provides ?srv taking_boron) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 1))
)
(:action take_phosphor_us
:parameters (?srv - Service_inv_us ?d - Design ?p - PhosphorMaterial)
:precondition (and (provides ?srv taking_phosphor) (taken ?d true) (taken ?p false) (status ?srv available) )
:effect (and (taken ?p true) (not(taken ?p false)) (increase (total-cost) 1))
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
(:action take_copper_us
:parameters (?srv - Service_inv_us ?d - Design ?b - CopperMaterial)
:precondition (and (provides ?srv taking_copper) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 1))
)
(:action take_boron_tr
:parameters (?srv - Service_inv_tr ?d - Design ?b - BoronMaterial)
:precondition (and (provides ?srv taking_boron) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 10))
)
(:action take_copper_pe
:parameters (?srv - Service_inv_pe ?d - Design ?b - CopperMaterial)
:precondition (and (provides ?srv taking_copper) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 6))
)
(:action take_boron_cl
:parameters (?srv - Service_inv_cl ?d - Design ?b - BoronMaterial)
:precondition (and (provides ?srv taking_boron) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 7))
)
(:action take_copper_cl
:parameters (?srv - Service_inv_cl ?d - Design ?b - CopperMaterial)
:precondition (and (provides ?srv taking_copper) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 7))
)
(:action take_resist_ca
:parameters (?srv - Service_inv_ca ?d - Design ?b - ResistMaterial)
:precondition (and (provides ?srv taking_resist) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 2))
)
(:action take_chemicals_ca
:parameters (?srv - Service_inv_ca ?d - Design ?b - ChemicalsMaterial)
:precondition (and (provides ?srv taking_chemicals) (taken ?d true) (taken ?b false) (status ?srv available) )
:effect (and (taken ?b true) (not(taken ?b false)) (increase (total-cost) 2))
)

)