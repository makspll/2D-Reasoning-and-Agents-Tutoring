(define (problem tea_problem_no_vessel)
    (:domain tea_no_vessel)
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

        (empty T) ; note need to specify T as empty otherwise we cannot pour into it
    )
    
    (:goal (and ; absurd goal, works iff T is empty 
        (water W)
        (teabag T)
        (cup C)
        (in W T)
        (hot W)
    ))
)