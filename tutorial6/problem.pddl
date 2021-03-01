(define (problem tea_problem)
    (:domain tea)
    (:objects 
        W B K C T
    )
    
    (:init
        (water W)
        (bottle B)
        (kettle K)
        (cup C)

        (teabag T)

        (in W B)
        (empty K)
        (empty C)

        (vessel B)
        (vessel K)
        (vessel C)
    )
    
    (:goal (and
        (water W)
        (teabag T)
        (cup C)
        (in W C)
        (hot W)
        (in T C)
    ))
)