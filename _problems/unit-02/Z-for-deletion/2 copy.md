---
index: 2
caption: Lecture Fail 
statement: |
    Suppose that the time of an event is a random variable $T$.  One way to describe the distribution of $T$ is with the *hazard rate*.  If $T$ has pdf $f_T$ and cdf $F_T$, the hazard rate is given by:

    $$
    h_T(t) = \frac{f_T(t)}{1-F_T(t)}
    $$

    The hazard rate at time $t$ is the probability density conditional on the event $T \geq t$.  To put it roughly, the hazard rate indicates how likely an event is to occur right away, given that it has not already occured.  

    1. Say that the time that a server breaks down is a random variable $B$, which is uniformly distributed on $[0,2]$.  Compute the hazard rate of $B$. 

    2. Prove that if $X$ is a random variable with hazard rate $h_X$ and $Y$ is a random variable with hazard rate $h_Y$, then the hazard rate of $min(X,Y)$ is $h_X + h_Y$.  (Hint: write the hazard rate in terms of just the cdf - no pdf.  Then remember what the cdf of a minimum of random variables looks like from the previous problem)
---