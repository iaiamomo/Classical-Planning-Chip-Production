from translator import *

instances = {   "Design":["design"],
                "BoronMaterial":["boron"],
                "PhosphorMaterial":["phosphor"],
                "SiliconMaterial":["silicon"],
                "Material":["wafer"],
                "Boolean":["true","false"],
                "State":["available","broken"]}

types = { "Object": [] }

# predicates
atomicTerms = [ atomicTerm("taken", "o - Design", "b - Boolean"),
                atomicTerm("taken", "o - BoronMaterial", "b - Boolean"),
                atomicTerm("taken", "o - PhosphorMaterial", "b - Boolean"),
                atomicTerm("taken", "o - SiliconMaterial", "b - Boolean"),
                atomicTerm("taken", "o - Material", "b - Boolean"),
                atomicTerm("cleaned", "o - Material", "b - Boolean"),
                atomicTerm("deposited", "o - Material", "b - Boolean"), 
                atomicTerm("coated", "o - Material", "b - Boolean"),
                atomicTerm("exposed", "o - Material", "b - Boolean"),
                atomicTerm("developed", "o - Material", "b - Boolean"),
                atomicTerm("etched", "o - Material", "b - Boolean"),
                atomicTerm("implanted", "o - Material", "b - Boolean"),
                atomicTerm("implanted", "o - BoronMaterial", "b - Boolean"),
                atomicTerm("implanted", "o - PhosphorMaterial", "b - Boolean"),
                atomicTerm("implanted", "o - SiliconMaterial", "b - Boolean"),
                atomicTerm("activated", "o - Material", "b - Boolean"),
                atomicTerm("stripped", "o - Material", "b - Boolean"),
                atomicTerm("assembled", "o - Material", "b - Boolean"),
                atomicTerm("tested", "o - Material", "b - Boolean"),
                atomicTerm("packed", "o - Material", "b - Boolean"),
                atomicTerm("status", "o - Service", "b - State")]

# strips: strips style
# equality: "=" as built-in predicate
# typing: allow types names in declaration of variables
requirements = ["strips", "equality", "typing"]

# plan goal
goal = [groundAtomicTerm("packed", "wafer", "true")]
