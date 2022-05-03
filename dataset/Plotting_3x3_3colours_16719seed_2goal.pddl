(define (problem Plotting_3x3_3colours_16719seed_2goal.pddl)
(:domain plotting)
(:objects
n1 - number
n2 - number
n3 - number
c1 - colour
c2 - colour
c3 - colour
)
(:init
(coloured n1 n1 c3)
(coloured n1 n2 c2)
(coloured n1 n3 c1)
(coloured n2 n1 c2)
(coloured n2 n2 c3)
(coloured n2 n3 c2)
(coloured n3 n1 c2)
(coloured n3 n2 c2)
(coloured n3 n3 c2)
(hand wildcard)
(succ n2 n1)
(succ n3 n2)
(pred n1 n2)
(pred n2 n3)
(lt n1 n2)
(lt n1 n3)
(lt n2 n3)
(gt n3 n2)
(gt n3 n1)
(gt n2 n1)
(isfirstcolumn n1)
(islastcolumn n3)
(istoprow n1)
(isbottomrow n3)
(distance n1 n2 n1)
(distance n2 n1 n1)
)
(:goal
(exists (?x1 ?y1 - number)
(and
(forall (?x2 ?y2 - number) (or
    (and (= ?x1 ?x2) (= ?y1 ?y2))
(coloured ?x2 ?y2 null)))))
)
)
