(define (domain tea_no_vessel)

    (:requirements :adl)
        

    (:predicates
        (in ?x ?y)
        (hot ?x)
        (empty ?x)

        (water ?x)
        (bottle ?x)
        (kettle ?x)
        (cup ?x)
        (teabag ?x)
    )


    (:action Pour
        :parameters (?x ?from ?to)
        :precondition (and (water ?x) (in ?x ?from) (not (in ?x ?to)) (empty ?to))
        :effect (and (not (in ?x ?from)) (in ?x ?to) (not (empty ?to)) (empty ?from))
    )

    (:action Add_Tea_Bag
        :parameters (?t ?c)
        :precondition (and (teabag ?t) (cup ?c) (not (in ?t ?c)))
        :effect (in ?t ?c)
    )

    (:action Boil_Water_In_Kettle
        :parameters (?w ?k)
        :precondition (and (water ?w) (kettle ?k) (not (hot ?w)) (in ?w ?k))
        :effect (hot ?w)
    )

)