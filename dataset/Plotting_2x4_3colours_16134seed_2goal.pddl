(define (problem Plotting_2x4_3colours_16134seed_2goal.pddl)
(:domain plotting)
(:objects
n1 - number
n2 - number
n3 - number
n4 - number
c1 - colour
c2 - colour
c3 - colour
)
(:init
(coloured n1 n1 c2)
(coloured n1 n2 c2)
(coloured n1 n3 c3)
(coloured n1 n4 c3)
(coloured n2 n1 c3)
(coloured n2 n2 c2)
(coloured n2 n3 c2)
(coloured n2 n4 c2)
(hand wildcard)
(succ n2 n1)
(succ n3 n2)
(succ n4 n3)
(pred n1 n2)
(pred n2 n3)
(pred n3 n4)
(lt n1 n2)
(lt n1 n3)
(lt n1 n4)
(lt n2 n3)
(lt n2 n4)
(lt n3 n4)
(gt n4 n3)
(gt n4 n2)
(gt n4 n1)
(gt n3 n2)
(gt n3 n1)
(gt n2 n1)
(isfirstcolumn n1)
(islastcolumn n4)
(istoprow n1)
(isbottomrow n4)
(distance n1 n2 n1)
(distance n1 n3 n2)
(distance n2 n1 n1)
(distance n2 n3 n1)
(distance n3 n1 n2)
(distance n3 n2 n1)
)
(:goal
(exists (?x1 ?y1 - number)
(and
(forall (?x2 ?y2 - number) (or
    (and (= ?x1 ?x2) (= ?y1 ?y2))
(coloured ?x2 ?y2 null)))))
)
)
