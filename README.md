# Body-Temperature-Dependence
This repository has been created for the study of the significance of gender in predicting a person's body temperature and heart rate.

# Problem Statement
Consider the data stored in bodytemp-heartrate.csv, containing measurements of body temperature and heart rate for 65 male (gender = 1) and 65 female (gender = 2) subjects. Perform an appropriate analysis to determine if the males and females differ in mean body temperature and mean heart rate. Also determine if there is a linear relationship between body temperature and heart rate and if this relationship depends on gender.

# Observations
By looking at the data values, the assumption of normality cannot be assumed to this data. Hence, we examine box plots to see if the two distributions have equal variance.

1. From the boxplot, we can understand the following:
  a.	Variability of male body temperature: Q3 – Q1 = 98.6 – 97.6 = 1.
  b.	Variability of female body temperature: Q3 – Q1 = 98.8 – 98 = 0.8.
  c.	It seems that the male body temperatures are slightly more variable than the female body temperatures. Therefore, we go with               Satterthwaite's approximation.
  
  OBSERVATION: 
  Since p-value < alpha, we reject the null hypothesis, i.e, we reject the hypothesis that “the mean body temperatures for males and         females are equal”. We conclude that they are not equal.
  
2. From the boxplots, we understand the following:
  a.	Variability of male heart rate = Q3 – Q1 = 78 – 70 = 8
  b.	Variability of female heart rate = Q3 – Q1 = 80-68 = 12
  c.	It is obvious from the boxplots above that female heart rate has more variability than male heart rate. Therefore, we go with               Satterthwaite's approximation.
  
  OBSERVATION:
  Since p – value > alpha, we accept the null hypothesis. The mean heart rates of males and females are the same.
  
3. Plot 1: Body temp vs Heart rate (Male)
In this plot, the plot points are scattered about the regression line. There isn’t a clear-cut pattern of linearity that can be detected. Therefore, it can be concluded that Plot 1 is not exactly linear. Lack of linearity implies that running a correlation calculation on the concerned data set would be futile. It would lead to a very small percentage of correlation and may lead us to believe that it may be non-linear, which may be incorrect altogether. Hence, Plot 1 displays very little linearity for us to arrive at a proper conclusion.

4. Plot 2: Body temp vs Heart rate (Female)
In this plot, the scenario seems similar to Plot 1. The distinguishing factor here is that in Plot 2, the plot points are closer to the regression line and form a somewhat dense pattern around the line. This is different compared to Plot 1 where the points were scattered across the plot space. “Somewhat Linear” is the conclusion that can be drawn from this plot too. With very few points lying on the line, it is futile to run a correlation calculation for this data set too. The same problem of arriving at an incorrect conclusion would arise – a very small percentage of correlation may lead us to believe that it may be non-linear but the case may not be so.

5. Plot 3: Body temp vs Heart rate
Plot 3 is the general Body temp vs heart rate graph for the entire data set, irrespective of gender. The plot points form dense closely-knit patterns around the regression line and show a “Somewhat Linear” pattern. CORRELATION, by definition, is a measure of strength of linear association, i.e. how close the points are to a straight line. From the plot, it can be observed that while many points are considerably close to the line, very few lie on the line. There is a regular pattern of points that are equally spaced over the line and hence, do not indicate an inclination towards higher linearity. Therefore, it can be concluded that body temp and heart rate have a somewhat linear association but not linear enough for us to calculate and determine the correlation between them.
