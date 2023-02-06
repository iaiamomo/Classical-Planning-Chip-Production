(define (domain myDomain)
(:requirements :strips :equality :typing)
(:types 
Service - Thing
Capability
Design
RawMaterial
Boolean
)
(:predicates 
(provides ?srv - Service ?c - Capability) 
(taken ?o - Object ?b - Boolean)
)

)