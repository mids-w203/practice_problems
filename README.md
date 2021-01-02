# practice_problems

This repo contains pointers to practice problems that run alongside the weekly concepts covered in MIDS w203. 
 
# Unit 1 Concepts 
 
| Concept                 | Example                   | Page Number | 
|-------------------------|---------------------------|-------------|
| Probability Spaces      | 1.1: Dice Rolling         | 1           |
| Probability Sapces      | 1.2: Dice Rolling         | 2           |
| Probability Sapces      | 1.3: Letters in Word      | 4           |
| Set Theory Probability  | 1.1.2: Basic Properties   | 5           |
| Set Theory Probability  | 1.4: Car Stereos          | 5           |
| Set Theory Probability  | 1.5: Sports Playoffs      | 6-8         |
| Conditional Probability | 3.1: Dice Rolling         | 81          |
| Conditional Probability | 3.2: Betting Games        | 82          |
| Conditional Probability | 3.4: Cards                | 83          |
| Conditional Probability | 3.5: Hockey Playoff       | 83          |
| Conditional Probability | 3.6: Graduating           | 84          |
| Conditional Probability | 3.8: Monty Hall Problem   | 84          |
| Conditional Probability | 3.9: Cognitive Dissonance | 85          |

# Unit 1 Practice Problems 

| Concept                  | Questions      | Page Number |
|--------------------------|----------------|-------------|
| Probability Spaces       | 1-2, 4-6, 8-18 | 26-27       |
| Statistical Independence | All            | 27-28       |
|                          |                |             |

# Unit 2 Practice Problems

## Concert Time

You are excited about a concert featuring your favorite a cappella group: the Pitch Estimators. Tickets go on sale at noon, but before you can buy a ticket, you have to wait for your turn in an online waiting room.  Because tickets are in high demand, you enlist two of your friends to help you.  All three of you enter the waiting room at noon, and as soon as any one of you gets a ticket, you are done and can all sign off.

Suppose your waiting time in minutes is a continuous random variable $T$.
Your first friend's waiting time in minutes is a continuous random variable $U$.
Your second friend's waiting time in minutes is a continuous random variable $V$.

Suppose these random varibles are have probability density functions given by:

$$f_T(t)=\begin{cases}
   \frac{1}{3}e^{-\frac{1}{3}t}, &t \geq 0\\
    0, &otherwise
\end{cases}$$

$$f_U(t)=\begin{cases}
    \frac{1}{2}e^{-\frac{1}{2}t}, &t \geq0\\
    0, &otherwise
    \end{cases}$$
    
$$f_V(t)=\begin{cases}
    \frac{1}{6}e^{-\frac{1}{6}t}, &t\geq 0\\
    0, &otherwise
    \end{cases}$$
    
These are examples of what we call exponential random variables.

  a. Please sketch the probability density for all three random variables on one graph.
  
  b. For a particular time $t$, compute the probability that $T>t$, $U>t$, and $V>t$.
  
  c. Let $O$ represent your overall waiting time.  $O$ is the minimum of the waiting times for each of the three websites, $O = min(T,U,V)$.  Compute the probability density function of $O$.  (Hint: use the previous answer to write down the cdf)


## Lecture #Fail 

Suppose that the time of an event is a random variable $T$.  One way to describe the distribution of $T$ is with the *hazard rate*.  If $T$ has pdf $f_T$ and cdf $F_T$, the hazard rate is given by:

$$
h_T(t) = \frac{f_T(t)}{1-F_T(t)}
$$

The hazard rate at time $t$ is the probability density conditional on the event $T \geq t$.  To put it roughly, the hazard rate indicates how likely an event is to occur right away, given that it has not already occured.  

1. (3 points) Say that the time that a server breaks down is a random variable $B$, which is uniformly distributed on $[0,2]$.  Compute the hazard rate of $B$. 

2. (3 points) Prove that if $X$ is a random variable with hazard rate $h_X$ and $Y$ is a random variable with hazard rate $h_Y$, then the hazard rate of $min(X,Y)$ is $h_X + h_Y$.  (Hint: write the hazard rate in terms of just the cdf - no pdf.  Then remember what the cdf of a minimum of random variables looks like from the previous problem)
