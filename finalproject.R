#T-Independent-Test
attach(IAlevel)
maleIA <- subset(IAlevel , Gender == 1)$IA_Level
femaleIA <- subset(IAlevel , Gender == 0)$IA_Level
m1=mean(femaleIA)
s1=sd(femaleIA)
shapiro.test(maleIA)
ks.test(femaleIA , "pnorm" , mean=m1 , sd=s1)
library(car)
Gender2 <- as.factor(Gender)
leveneTest(IA_Level ~ Gender2)
t.test(IA_Level~Gender2 , data=IAlevel , var.equal=TRUE)


maleBDI <- subset(IAlevel, Gender == 1)$BDI
femaleBDI <- subset(IAlevel , Gender == 0)$BDI
shapiro.test(maleBDI)
m2=mean(femaleBDI)
s2=sd(femaleBDI)
ks.test(femaleBDI , "pnorm" , mean=m2 , sd=s2)
leveneTest(BDI ~ Gender2)
t.test(BDI~Gender2 , data=IAlevel , var.equal=TRUE)


maleEX <- subset(IAlevel, Gender == 1)$Extraversion
femaleEX <- subset(IAlevel , Gender == 0)$Extraversion
shapiro.test(maleEX)
m2=mean(femaleEX)
s2=sd(femaleEX)
ks.test(femaleEX , "pnorm" , mean=m2 , sd=s2)
leveneTest(Extraversion ~ Gender2)
t.test(Extraversion~Gender2 , data=IAlevel , var.equal=TRUE)


malePSY <- subset(IAlevel, Gender == 1)$Psychoticism
femalePSY <- subset(IAlevel , Gender == 0)$Psychoticism
shapiro.test(malePSY)
m2=mean(femalePSY)
s2=sd(femalePSY)
ks.test(femalePSY , "pnorm" , mean=m2 , sd=s2)
leveneTest(Psychoticism~ Gender2)
wilcox.test(Psychoticism~ Gender2 , data=IAlevel , alternative = "two.sided")

#AnovaTest
BDI2 <- cut(BDI , breaks = c(21 , 35 , 48 , 61 , 84) , labels = c("low","medium","high","very high"))
BDI2 <- as.factor(BDI2)
leveneTest(IA_Level ~ BDI2 , data=IAlevel)
anova_result1 <- aov(IA_Level ~ BDI2, data = IAlevel)
summary(anova_result1)
resid_values <- residuals(anova_result1)
ks.test(resid_values, "pnorm", mean = mean(resid_values1), sd = sd(resid_values1))

EX2 <- cut(Extraversion , breaks = c(0,5,10,15,21) , labels = c("low","medium","high","very high"))
exEX2 <- as.factor(EX2)
leveneTest(IA_Level ~ EX2 , data=IAlevel)
anova_result2 <- aov(IA_Level ~ EX2, data = IAlevel)
summary(anova_result2)
resid_values <- residuals(anova_result2)
ks.test(resid_values, "pnorm", mean = mean(resid_values2), sd = sd(resid_values2))

PSY <- cut(Psychoticism , breaks = c(0,6,12,18,25) , labels = c("low","medium","high","very high"))
PSY<- as.factor(PSY)
leveneTest(IA_Level ~ PSY , data=IAlevel)
anova_result3 <- aov(IA_Level ~ PSY, data = IAlevel)
summary(anova_result3)
resid_values <- residuals(anova_result3)
ks.test(resid_values, "pnorm", mean = mean(resid_values3), sd = sd(resid_values3))

A <- cut(Age , breaks = c(0,12,20,40,60,100) , labels = c("child","teenage","adult","middle aged" , "old"))
A<- as.factor(A)
leveneTest(IA_Level ~ A , data=IAlevel)
anova_result4 <- aov(IA_Level ~ A, data = IAlevel)
summary(anova_result4)
resid_values <- residuals(anova_result4)
ks.test(resid_values, "pnorm", mean = mean(resid_values4), sd = sd(resid_values4))


#EDU <- cut(Education , breaks = c(0,12,20,40,60,100) , labels = c("child","teenage","adult","middle aged" , "old"))
EDU <- Education
EDU<- as.factor(EDU)
leveneTest(IA_Level ~ EDU , data=IAlevel)
anova_result5 <- aov(IA_Level ~ EDU, data = IAlevel)
summary(anova_result5)
resid_values <- residuals(anova_result5)
ks.test(resid_values, "pnorm", mean = mean(resid_values5), sd = sd(resid_values5))


MaritalStatus <- as.factor(MaritalStatus)
anova_result6 <- aov(IA_Level ~ MaritalStatus, data = IAlevel)
summary(anova_result6)

#Ancova
ancova_interaction <- aov(IA_Level ~ BDI * A)
summary(ancova_interaction)
ancova_interaction2 <- aov(IA_Level ~ BDI + A)
summary(ancova_interaction2)

ancova_interaction3 <- aov(IA_Level ~ BDI * Gender2)
summary(ancova_interaction3)
ancova_interaction4 <- aov(IA_Level ~ BDI + Gender2)
summary(ancova_interaction4)



