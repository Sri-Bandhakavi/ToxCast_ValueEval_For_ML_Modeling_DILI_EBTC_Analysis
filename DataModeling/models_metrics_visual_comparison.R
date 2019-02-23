setwd("C:\\Users\\Sri Bandhakavi\\Desktop\\Python\\EBTC_ph4\\Modeling\\PCA_eightyfive_percent_data")

library(tidyverse)
library(ggpubr)

three_models<-read.csv("three_models_metrics.csv")

colnames(three_models)[1]<-"ModelClass"

##Compare benchmark model vs best model

benchmark_vs_best_model<-three_models[1:20, ]


a<-ggplot(data=benchmark_vs_best_model, aes(x=Model, y=Precision, fill=Predictors))+geom_boxplot(alpha=0.1)+
  geom_point(aes(color=Precision), position = 'jitter', alpha=0.4)+
  theme_classic(base_size = 20)+xlab("")+ylab("Precision\n")+
  stat_summary(fun.y = mean, color = "red",geom = "point", size = 2)+
  stat_summary(fun.y=mean, colour="red", geom="text", vjust=-0.6, aes( label=round(..y.., digits=2)))+
  stat_compare_means(method="t.test", label.y=1.0, color="blue", size=6, paired = TRUE) +theme(legend.position = "none")


b<-ggplot(data=benchmark_vs_best_model, aes(x=Model, y=Recall, fill=Predictors))+geom_boxplot(alpha=0.1)+
  geom_point(aes(color=Recall), position = 'jitter', alpha=0.4)+
  theme_classic(base_size = 20)+xlab("")+ylab("Sensitivity\n")+
  stat_summary(fun.y = mean, color = "red",geom = "point", size = 2)+
  stat_summary(fun.y=mean, colour="red", geom="text", vjust=-0.6, aes( label=round(..y.., digits=2)))+
  stat_compare_means(method="t.test", label.y=1.0, color="blue", size=6, paired=TRUE) +theme(legend.position = "none")

c<-ggplot(data=benchmark_vs_best_model, aes(x=Model, y=Specificity, fill=Predictors))+geom_boxplot(alpha=0.1)+
  geom_point(aes(color=Specificity), position = 'jitter', alpha=0.4)+
  theme_classic(base_size = 20)+xlab("")+ylab("Specificity\n")+
  stat_summary(fun.y = mean, color = "red",geom = "point", size = 2)+
  stat_summary(fun.y=mean, colour="red", geom="text", vjust=-0.6, aes( label=round(..y.., digits=2)))+
  stat_compare_means(method="t.test", label.y=1.0, color="blue", size=6, paired=TRUE) +theme(legend.position = "none")


d<-ggplot(data=benchmark_vs_best_model, aes(x=Model, y=Accuracy, fill=Predictors))+geom_boxplot(alpha=0.1)+
  geom_point(aes(color=Accuracy), position = 'jitter', alpha=0.4)+
  theme_classic(base_size = 20)+xlab("")+ylab("Accuracy\n")+
  stat_summary(fun.y = mean, color = "red",geom = "point", size = 2)+
  stat_summary(fun.y=mean, colour="red", geom="text", vjust=-0.6, aes( label=round(..y.., digits=2)))+
  stat_compare_means(method="t.test", label.y=1.0, color="blue", size=6, paired=TRUE) +theme(legend.position = "none")

ggarrange(a,b,c,d, ncol = 2, nrow = 2, common.legend=TRUE, legend = "bottom")

##Compare benchmark model vs nextbest model

benchmark_vs_next_best_model<-three_models[-c(11:20), ]

e<-ggplot(data=benchmark_vs_next_best_model, aes(x=Model, y=Precision, fill=Predictors))+geom_boxplot(alpha=0.1)+
  geom_point(aes(color=Precision), position = 'jitter', alpha=0.4)+
  theme_classic(base_size = 20)+xlab("")+ylab("Precision\n")+
  stat_summary(fun.y = mean, color = "red",geom = "point", size = 2)+
  stat_summary(fun.y=mean, colour="red", geom="text", vjust=-0.6, aes( label=round(..y.., digits=2)))+
  stat_compare_means(method="t.test", label.y=1.0, color="blue", size=6, paired = TRUE) +theme(legend.position = "none")


f<-ggplot(data=benchmark_vs_next_best_model, aes(x=Model, y=Recall, fill=Predictors))+geom_boxplot(alpha=0.1)+
  geom_point(aes(color=Recall), position = 'jitter', alpha=0.4)+
  theme_classic(base_size = 20)+xlab("")+ylab("Sensitivity\n")+
  stat_summary(fun.y = mean, color = "red",geom = "point", size = 2)+
  stat_summary(fun.y=mean, colour="red", geom="text", vjust=-0.6, aes( label=round(..y.., digits=2)))+
  stat_compare_means(method="t.test", label.y=1.0, color="blue", size=6, paired=TRUE) +theme(legend.position = "none")

g<-ggplot(data=benchmark_vs_next_best_model, aes(x=Model, y=Specificity, fill=Predictors))+geom_boxplot(alpha=0.1)+
  geom_point(aes(color=Specificity), position = 'jitter', alpha=0.4)+
  theme_classic(base_size = 20)+xlab("")+ylab("Specificity\n")+
  stat_summary(fun.y = mean, color = "red",geom = "point", size = 2)+
  stat_summary(fun.y=mean, colour="red", geom="text", vjust=-0.6, aes( label=round(..y.., digits=2)))+
  stat_compare_means(method="t.test", label.y=1.0, color="blue", size=6, paired=TRUE) +theme(legend.position = "none")


h<-ggplot(data=benchmark_vs_next_best_model, aes(x=Model, y=Accuracy, fill=Predictors))+geom_boxplot(alpha=0.1)+
  geom_point(aes(color=Accuracy), position = 'jitter', alpha=0.4)+
  theme_classic(base_size = 20)+xlab("")+ylab("Accuracy\n")+
  stat_summary(fun.y = mean, color = "red",geom = "point", size = 2)+
  stat_summary(fun.y=mean, colour="red", geom="text", vjust=-0.6, aes( label=round(..y.., digits=2)))+
  stat_compare_means(method="t.test", label.y=1.0, color="blue", size=6, paired=TRUE) +theme(legend.position = "none")

ggarrange(e,f,g,h, ncol = 2, nrow = 2, common.legend=TRUE, legend = "bottom")
