---
index: 5
statement: |
    Using the clues given below, fill in the rest of the joint distribution. There is only one answer.

    |$Y$|$X=0$|3|6|
    |---|---|---|---|
    |$1$|$?$|$?$|$?$|
    |$2$|$0.1$|$0.05$|$?$|

    (a) $P(Y=2\|X=0)=\frac{1}{4}$, and (b) $X$ and $Y$ are independent.
---
Let us assume the following probabilities, 

|$Y$|$X=0$|3|6|
|--|--|--|--|
|$1$|$p_1$|$p_2$|$p_3$|
|$2$|$0.1$|$0.05$|$p_4$|

From (a), we have
$$\frac{0.1}{p_1+0.1}=\frac{1}{4}\implies p_1=0.3.$$

From (b), $X,Y$ are independent. So,  
$$P(Y=2,X=0)=P(Y=2)P(X=0)\implies 0.1=(p_4+0.15)\times0.4\implies p_4=0.1.$$

Also,
$$P(Y=2,X=6)=P(Y=2)P(X=6)\implies 0.1=0.25\times(p_3+0.1)\implies p_3=0.3.$$

Since $p_1+p_2+p_3+p_4=1$, we get $p_2=0.15$.