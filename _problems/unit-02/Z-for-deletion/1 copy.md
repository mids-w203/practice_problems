---
index: 1
statement: |
    $F(x)=3x^2−2x^3$ for $0<x<1$ (with $F(x)=0$ if $x\leq0$ and $F(x)=1$ if $x\geq1$) deﬁnes a distribution function. Find the corresponding density function.
---
To solve this, we note that when the question writes $F(x)$ is it referring to the cumulative density function, and that when it writes $f(x)$ is it referring to the probability density function. 

Using the definition that relates cdf and pdf, namely that $\frac{d}{dx} F(x) = f(x)$: 

\\begin{aligned} 
  \frac{d}{dx} F(x) &= \frac{d}{dx} 3x^2 - 2x^3 \\\\ 
	  &= 6x - 6x^2
		f(x) \\\\&= 6x(1-x)
\\end{aligned} 
