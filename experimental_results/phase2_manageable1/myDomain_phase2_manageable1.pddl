(define (domain myDomain_phase2_manageable1)
(:requirements :strips :equality :typing)
(:types 
Service - Thing
Capability
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
Service_dev2 Service_dev1 Service_tes2 Service_ass1 Service_tes1 Service_dep1 Service_act1 Service_exp1 Service_coa1 Service_etc1 Service_pac1 Service_str1 Service_exp2 Service_imp1 Service_etc2 Service_cle1 Service_coa2 - Service
)
(:predicates 
(provides ?srv - Service ?c - Capability) 
(cleaned ?o - Material ?b - Boolean)
(deposited ?o - Material ?b - Boolean)
(deposited ?o - SiliconMaterial ?b - Boolean)
(deposited ?o - AluminumMaterial ?b - Boolean)
(coated ?o - Material ?b - Boolean)
(coated ?o - ResistMaterial ?b - Boolean)
(exposed ?o - Material ?b - Boolean)
(developed ?o - Material ?b - Boolean)
(etched ?o - Material ?b - Boolean)
(etched ?o - ChemicalsMaterial ?b - Boolean)
(implanted ?o - Material ?b - Boolean)
(implanted ?o - BoronMaterial ?b - Boolean)
(implanted ?o - PhosphorMaterial ?b - Boolean)
(implanted ?o - SiliconMaterial ?b - Boolean)
(activated ?o - Material ?b - Boolean)
(stripped ?o - Material ?b - Boolean)
(stripped ?o - ChemicalsMaterial ?b - Boolean)
(assembled ?o - Material ?b - Boolean)
(assembled ?o - CopperMaterial ?b - Boolean)
(tested ?o - Material ?b - Boolean)
(packed ?o - Material ?b - Boolean)
(packed ?o - PlasticMaterial ?b - Boolean)
(status ?o - Service ?b - State)
)
(:functions (total-cost))
(:action delevop_2
:parameters (?srv - Service_dev2 ?w - Material)
:precondition (and (provides ?srv developing) (exposed ?w true) (developed ?w false) (status ?srv available) )
:effect (and (developed ?w true) (not(developed ?w false)) (increase (total-cost) 2))
)
(:action delevop_1
:parameters (?srv - Service_dev1 ?w - Material)
:precondition (and (provides ?srv developing) (exposed ?w true) (developed ?w false) (status ?srv available) )
:effect (and (developed ?w true) (not(developed ?w false)) (increase (total-cost) 5))
)
(:action test_2
:parameters (?srv - Service_tes2 ?w - Material ?c - CopperMaterial)
:precondition (and (provides ?srv testing) (assembled ?w true) (assembled ?c true) (tested ?w false) (status ?srv available) )
:effect (and (tested ?w true) (not(tested ?w false)) (increase (total-cost) 3))
)
(:action assemble_1
:parameters (?srv - Service_ass1 ?w - Material ?c - CopperMaterial ?ch - ChemicalsMaterial)
:precondition (and (provides ?srv assembling) (stripped ?w true) (stripped ?ch true) (assembled ?w false) (assembled ?c false) (status ?srv available) )
:effect (and (assembled ?w true) (assembled ?c true) (not(assembled ?w false)) (not(assembled ?c false)) (increase (total-cost) 1))
)
(:action test_1
:parameters (?srv - Service_tes1 ?w - Material ?c - CopperMaterial)
:precondition (and (provides ?srv testing) (assembled ?w true) (assembled ?c true) (tested ?w false) (status ?srv available) )
:effect (and (tested ?w true) (not(tested ?w false)) (increase (total-cost) 5))
)
(:action deposit_1
:parameters (?srv - Service_dep1 ?w - Material ?s - SiliconMaterial ?a - AluminumMaterial)
:precondition (and (provides ?srv depositing) (cleaned ?w true) (deposited ?w false) (deposited ?s false) (deposited ?a false) (status ?srv available) )
:effect (and (deposited ?w true) (deposited ?s true) (deposited ?a true) (not(deposited ?w false)) (not(deposited ?s false)) (not(deposited ?a false)) (increase (total-cost) 5))
)
(:action activate_1
:parameters (?srv - Service_act1 ?b - BoronMaterial ?p - PhosphorMaterial ?s - SiliconMaterial ?w - Material)
:precondition (and (provides ?srv activating) (implanted ?b true) (implanted ?p true) (implanted ?s true) (implanted ?w true) (activated ?w false) (status ?srv available) )
:effect (and (activated ?w true) (not(activated ?w false)) (increase (total-cost) 1))
)
(:action expose_1
:parameters (?srv - Service_exp1 ?w - Material ?r - ResistMaterial)
:precondition (and (provides ?srv exposing) (coated ?w true) (coated ?r true) (exposed ?w false) (status ?srv available) )
:effect (and (exposed ?w true) (not(exposed ?w false)) (increase (total-cost) 3))
)
(:action coat_1
:parameters (?srv - Service_coa1 ?w - Material ?r - ResistMaterial ?s - SiliconMaterial ?a - AluminumMaterial)
:precondition (and (provides ?srv coating) (deposited ?w true) (deposited ?s true) (deposited ?a true) (coated ?w false) (coated ?r false) (status ?srv available) )
:effect (and (coated ?w true) (coated ?r true) (not(coated ?w false)) (not(coated ?r false)) (increase (total-cost) 3))
)
(:action etch_1
:parameters (?srv - Service_etc1 ?w - Material ?c - ChemicalsMaterial)
:precondition (and (provides ?srv etching) (developed ?w true) (etched ?w false) (etched ?c false) (status ?srv available) )
:effect (and (etched ?w true) (etched ?c true) (not(etched ?w false)) (not(etched ?c false)) (increase (total-cost) 3))
)
(:action pack_1
:parameters (?srv - Service_pac1 ?w - Material ?p - PlasticMaterial)
:precondition (and (provides ?srv packaging) (tested ?w true) (packed ?w false) (packed ?p false) (status ?srv available) )
:effect (and (packed ?w true) (packed ?p true) (not(packed ?w false)) (not(packed ?p false)) (increase (total-cost) 1))
)
(:action strip_1
:parameters (?srv - Service_str1 ?w - Material ?c - ChemicalsMaterial)
:precondition (and (provides ?srv stripping) (activated ?w true) (stripped ?w false) (stripped ?c false) (status ?srv available) )
:effect (and (stripped ?w true) (stripped ?c true) (not(stripped ?w false)) (not(stripped ?c false)) (increase (total-cost) 3))
)
(:action expose_2
:parameters (?srv - Service_exp2 ?w - Material ?r - ResistMaterial)
:precondition (and (provides ?srv exposing) (coated ?w true) (coated ?r true) (exposed ?w false) (status ?srv available) )
:effect (and (exposed ?w true) (not(exposed ?w false)) (increase (total-cost) 1))
)
(:action implant_1
:parameters (?srv - Service_imp1 ?w - Material ?b - BoronMaterial ?p - PhosphorMaterial ?s - SiliconMaterial ?c - ChemicalsMaterial)
:precondition (and (provides ?srv implanting) (etched ?w true) (etched ?c true) (implanted ?w false) (implanted ?b false) (implanted ?p false) (implanted ?s false) (status ?srv available) )
:effect (and (implanted ?w true) (implanted ?b true) (implanted ?p true) (implanted ?s true) (not(implanted ?w false)) (not(implanted ?b false)) (not(implanted ?p false)) (not(implanted ?s false)) (increase (total-cost) 5))
)
(:action etch_2
:parameters (?srv - Service_etc2 ?w - Material ?c - ChemicalsMaterial)
:precondition (and (provides ?srv etching) (developed ?w true) (etched ?w false) (etched ?c false) (status ?srv available) )
:effect (and (etched ?w true) (etched ?c true) (not(etched ?w false)) (not(etched ?c false)) (increase (total-cost) 5))
)
(:action clean_1
:parameters (?srv - Service_cle1 ?w - Material)
:precondition (and (provides ?srv cleaning) (cleaned ?w false) (status ?srv available) )
:effect (and (cleaned ?w true) (not(cleaned ?w false)) (increase (total-cost) 1))
)
(:action coat_2
:parameters (?srv - Service_coa2 ?w - Material ?r - ResistMaterial ?s - SiliconMaterial ?a - AluminumMaterial)
:precondition (and (provides ?srv coating) (deposited ?w true) (deposited ?s true) (deposited ?a true) (coated ?w false) (coated ?r false) (status ?srv available) )
:effect (and (coated ?w true) (coated ?r true) (not(coated ?w false)) (not(coated ?r false)) (increase (total-cost) 5))
)

)