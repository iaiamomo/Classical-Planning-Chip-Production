from translator import *

instances = {   "Design":["o1"],
                "Boolean":["true","false"]}

atomicTerms = [ atomicTerm("movable", "o - Object", "b - Boolean"),
                atomicTerm("heated", "o - Object", "b - Boolean"),
                atomicTerm("processed", "o - Object", "b - Boolean"),
                atomicTerm("cooled", "o - Object", "b - Boolean"),]

groundAtomicTerms = [   groundAtomicTerm("at", "o1", "l00"),
                        groundAtomicTerm("movable", "o1", "true")]

# strips: strips style
# equality: "=" as built-in predicate
# typing: allow types names in declaration of variables
requirements = ["strips", "equality", "typing"]

goal = [groundAtomicTerm("taken", "o1", "l32")]
