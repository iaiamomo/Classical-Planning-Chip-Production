(define (domain myDomain)
(:requirements :strips :equality :typing)
(:types 
Service - Thing
Capability
Object - Thing
Location
Boolean
)
(:predicates 
(provides ?srv - Service ?c - Capability) 
(movable ?o - Object ?b - Boolean)
(heated ?o - Object ?b - Boolean)
(processed ?o - Object ?b - Boolean)
(cooled ?o - Object ?b - Boolean)
(at ?s - Service ?l - Location)
(carries ?s - Service ?o - Object)
)
(:action cool
:parameters (?srv - Service ?o - Object ?l - Location)
:precondition (and (provides ?srv cooling) (at ?o ?l) (at ?srv ?l) (heated ?o true) (processed ?o true) )
:effect (and (cooled ?o true) (not(cooled ?o false)) )
)
(:action convert
:parameters (?srv - Service ?o - Object ?l - Location)
:precondition (and (provides ?srv conversion) (at ?o ?l) (at ?srv ?l) )
:effect (and (heated ?o true) (processed ?o true) (cooled ?o true) (not(heated ?o false)) (not(processed ?o false)) (not(cooled ?o false)) )
)
(:action heat
:parameters (?srv - Service ?o - Object ?l - Location)
:precondition (and (provides ?srv heating) (at ?o ?l) (at ?srv ?l) )
:effect (and (heated ?o true) (not(heated ?o false)) )
)
(:action process
:parameters (?srv - Service ?o - Object ?l - Location)
:precondition (and (provides ?srv processing) (at ?o ?l) (at ?srv ?l) (heated ?o true) )
:effect (and (processed ?o true) (not(processed ?o false)) )
)
(:action move
:parameters (?srv - Service ?from - Location ?to - Location)
:precondition (and (provides ?srv movement) (at ?srv ?from) )
:effect (and (at ?srv ?to) (not(at ?srv ?from)) )
)
(:action load
:parameters (?srv - Service ?o - Object ?l - Location)
:precondition (and (provides ?srv loading) (at ?srv ?l) (at ?o ?l) )
:effect (and (carries ?srv ?o) (not(at ?o ?l)) )
)
(:action unload
:parameters (?srv - Service ?o - Object ?l - Location)
:precondition (and (provides ?srv unloading) (carries ?srv ?o) )
:effect (and (at ?o ?l) (not(carries ?srv ?o)) )
)

)