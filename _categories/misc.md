---
number: 4
---

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

1. Say that the time that a server breaks down is a random variable $B$, which is uniformly distributed on $[0,2]$.  Compute the hazard rate of $B$. 
2. Prove that if $X$ is a random variable with hazard rate $h_X$ and $Y$ is a random variable with hazard rate $h_Y$, then the hazard rate of $min(X,Y)$ is $h_X + h_Y$.  (Hint: write the hazard rate in terms of just the cdf - no pdf.  Then remember what the cdf of a minimum of random variables looks like from the previous problem)

## Can Independence Carry Through?

The following statements are either true or false.  Prove them or provide a counterexample:

1. If X, Y, and Z are random variables, X and Y are independent, Y and Z are independent, then X and Z must be independent.
2. If X, Y, and Z are random variables, X and Y are not independent, Y and Z are not independent, then X and Z must be not independent.


## Stacking Blocks

In $\R^2$, define square region A with corners at $\{ (0,1), (1,1),(1,2), (0,2) \}$ and square region B with corners at $\{ (0.5,0),(1.5,0),(1.5,1),(0.5,1) \}$.  Suppose that random variables X and Y have joint density given by,

$$f(x,y) = \begin{cases} 0.5, &(x,y) \in A \cup B \\
0, &otherwise
\end{cases}
$$

1. Compute the conditional expectation function of Y given X.

2. Compute the conditional expectation function of X given Y.


## Fanning Out

Suppose random variables X and Y have joint density given by,

$$f(x,y) = \begin{cases} 1/x, &0 < x < 1, 0 < y < x \\
0, &otherwise
\end{cases}
$$

This is a long (but revealing) way to compute $var[Y]$

1. Compute the marginal distribution of X.
2. Compute $var[Y|X]$.  This will be a fuction of X.
3. Compute $\E[ var[Y|X]]$.  This will be a number.
4. Compute $\E[Y|X]$.  This will be a function of X.
5. Compute $var[ \E[Y|X]]$.  This will be a number.
6. Using the law of total variance, compute $var[Y]$.



## BLP for a Square

Suppose X and Y have joint density given by,

$$f(x,y) = \begin{cases} 1, &0 \leq x \leq 1, 0 \leq y \leq 1\\
0, &otherwise
\end{cases}
$$

1. Prove that the linear predictor $g(x) = 0.5$ fulfills the first population moment condition.

2. Prove that the linear predictor $g(x) = 0.5$ fulfills the second population moment condition.

You conclude that $g$ is the BLP.


## Closer Look at Moment Conditions

Suppose X and Y have joint mass function given by,

$$f(x,y) = \begin{cases} 0.25,  &(x,y) \in \{ (1,1),(1,-1). (-1,1), (-1,-1) \} \\
0, &otherwise
\end{cases}
$$

Consider a linear predictor, $g(x) = \beta_0 + \beta_1 x$, and let $\epsilon = Y - g(X)$ be the error term.

1. Compute $\E[\epsilon]$ in terms of $\beta_0$ and $\beta_1$.

Now set $\beta_0$ to fulfill the first moment condition: $\E[\epsilon] = 0$.

2. Compute $\E[X \epsilon]$ in terms of $\beta_1$

Now set $\beta_1$ to fulfill the second moment condition: $\E[X \epsilon] = 0$.

3. What is the BLP?


## Regression: Origins

Consider random variables $X$ and $Y$.  In the technique called *regression through the origin*, we are interested in linear predictors of the form,

$$g(x) = b_1 x$$

In other words, linear predictors that pass through the origin.  Given such a predictor, define $\epsilon = Y - g(X)$ as always.  We are interested in minimizing mean squared error:

$$\beta_1 = \text{argmin}_{b_1} \E[\epsilon^2]$$


Examine the proof on page 77 of *Agnostic Statistics* and consider how it would be different for regression through the origin.

1. Prove that $\E[\epsilon X] = 0$ as before.
2. Is it still true that $cov[\epsilon, X] = 0$?  Prove it or give a counterexample.
3. Compute an expression for $\beta_1$.e at time $t$ is the probability density conditional on the event $T \geq t$.  To put it roughly, the hazard rate indicates how likely an event is to occur right away, given that it has not already occured.  

1. Say that the time that a server breaks down is a random variable $B$, which is uniformly distributed on $[0,2]$.  Compute the hazard rate of $B$. 
2. Prove that if $X$ is a random variable with hazard rate $h_X$ and $Y$ is a random variable with hazard rate $h_Y$, then the hazard rate of $min(X,Y)$ is $h_X + h_Y$.  (Hint: write the hazard rate in terms of just the cdf - no pdf.  Then remember what the cdf of a minimum of random variables looks like from the previous problem)

## Can Independence Carry Through?

The following statements are either true or false.  Prove them or provide a counterexample:

1. If X, Y, and Z are random variables, X and Y are independent, Y and Z are independent, then X and Z must be independent.
2. If X, Y, and Z are random variables, X and Y are not independent, Y and Z are not independent, then X and Z must be not independent.


## Stacking Blocks

In $\R^2$, define square region A with corners at $\{ (0,1), (1,1),(1,2), (0,2) \}$ and square region B with corners at $\{ (0.5,0),(1.5,0),(1.5,1),(0.5,1) \}$.  Suppose that random variables X and Y have joint density given by,

$$f(x,y) = \begin{cases} 0.5, &(x,y) \in A \cup B \\
0, &otherwise
\end{cases}
$$

1. Compute the conditional expectation function of Y given X.

2. Compute the conditional expectation function of X given Y.


## Fanning Out

Suppose random variables X and Y have joint density given by,

$$f(x,y) = \begin{cases} 1/x, &0 < x < 1, 0 < y < x \\
0, &otherwise
\end{cases}
$$

This is a long (but revealing) way to compute $var[Y]$

1. Compute the marginal distribution of X.
2. Compute $var[Y|X]$.  This will be a fuction of X.
3. Compute $\E[ var[Y|X]]$.  This will be a number.
4. Compute $\E[Y|X]$.  This will be a function of X.
5. Compute $var[ \E[Y|X]]$.  This will be a number.
6. Using the law of total variance, compute $var[Y]$.



## BLP for a Square

Suppose X and Y have joint density given by,

$$f(x,y) = \begin{cases} 1, &0 \leq x \leq 1, 0 \leq y \leq 1\\
0, &otherwise
\end{cases}
$$

1. Prove that the linear predictor $g(x) = 0.5$ fulfills the first population moment condition.

2. Prove that the linear predictor $g(x) = 0.5$ fulfills the second population moment condition.

You conclude that $g$ is the BLP.


## Closer Look at Moment Conditions

Suppose X and Y have joint mass function given by,

$$f(x,y) = \begin{cases} 0.25,  &(x,y) \in \{ (1,1),(1,-1). (-1,1), (-1,-1) \} \\
0, &otherwise
\end{cases}
$$

Consider a linear predictor, $g(x) = \beta_0 + \beta_1 x$, and let $\epsilon = Y - g(X)$ be the error term.

1. Compute $\E[\epsilon]$ in terms of $\beta_0$ and $\beta_1$.

Now set $\beta_0$ to fulfill the first moment condition: $\E[\epsilon] = 0$.

2. Compute $\E[X \epsilon]$ in terms of $\beta_1$

Now set $\beta_1$ to fulfill the second moment condition: $\E[X \epsilon] = 0$.

3. What is the BLP?


## Regression: Origins

Consider random variables $X$ and $Y$.  In the technique called *regression through the origin*, we are interested in linear predictors of the form,

$$g(x) = b_1 x$$

In other words, linear predictors that pass through the origin.  Given such a predictor, define $\epsilon = Y - g(X)$ as always.  We are interested in minimizing mean squared error:

$$\beta_1 = \text{argmin}_{b_1} \E[\epsilon^2]$$


Examine the proof on page 77 of *Agnostic Statistics* and consider how it would be different for regression through the origin.

1. Prove that $\E[\epsilon X] = 0$ as before.
2. Is it still true that $cov[\epsilon, X] = 0$?  Prove it or give a counterexample.
3. Compute an expression for $\beta_1$.