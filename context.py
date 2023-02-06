from translator import *

instances = {   "Design":["design"],
                "RawMaterial":["silicon"],
                "Boolean":["true","false"]}

atomicTerms = [ atomicTerm("taken", "o - Object", "b - Boolean"),]

groundAtomicTerms = []

# strips: strips style
# equality: "=" as built-in predicate
# typing: allow types names in declaration of variables
requirements = ["strips", "equality", "typing"]

goal = [groundAtomicTerm("taken", "design", "true"),
        groundAtomicTerm("taken", "silicon", "true")]
