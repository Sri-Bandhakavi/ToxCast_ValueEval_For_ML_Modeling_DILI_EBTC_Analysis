# ToxCast_ValueEval_For_ML_Modeling_DILI_EBTC_Analysis

This project evaluated the value-add of Toxcast data for machine learning based prediction of "mostDILI" drugs vs "otherDILI" drugs.

Drugs with "mostDILI" classification have the highest risk for hepatotoxicty and the dataset used for this study consisted of 60 drugs for which Toxcast data was retrieved and used for ML modeling.  Drugs with "otherDILI" classification included "lessDILI" (70), "noDILI" (22), and "ambiDILI" (23) drugs - all of which have lower hepatoxicity risk or no hepatoxicity risk or ambiguous hepatoxicity risk, as defined by the FDA (https://www.fda.gov/ScienceResearch/BioinformaticsTools/LiverToxicityKnowledgeBase/ucm2024036.htm)

In this study, the value-add of Toxcast predictors was compared against a benchmark logistic regression model based on prior publication by Chen MC et al., 2016 (https://www.ncbi.nlm.nih.gov/pubmed/27302180)
