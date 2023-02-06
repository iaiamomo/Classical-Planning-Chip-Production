(define (problem myProblem)
(:domain myDomain)
(:objects 
o1 - Object
l00 - Location
l01 - Location
l02 - Location
l10 - Location
l11 - Location
l12 - Location
l20 - Location
l21 - Location
l22 - Location
l30 - Location
l31 - Location
l32 - Location
true - Boolean
false - Boolean
cooling - Capability
conversion - Capability
heating - Capability
processing - Capability
movement - Capability
loading - Capability
unloading - Capability
clr1 - Service
cnv1 - Service
htr1 - Service
prc1 - Service
rb1 - Service
)
(:init 
(provides clr1 cooling)
(provides cnv1 conversion)
(provides htr1 heating)
(provides prc1 processing)
(provides rb1 movement)
(provides rb1 loading)
(provides rb1 unloading)
(at o1 l00)
(movable o1 true)
(at clr1 l02)
(at cnv1 l20)
(at htr1 l12)
(heated o1 false)
(processed o1 false)
(cooled o1 false)
(at o1 l00)
(at prc1 l11)
(at rb1 l01)
)
(:goal 
(and 
(at o1 l32)
(cooled o1 true)
)
)

)