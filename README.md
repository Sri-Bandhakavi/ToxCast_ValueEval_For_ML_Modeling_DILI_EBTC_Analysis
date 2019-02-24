# ToxCast_ValueEval_For_ML_Modeling_DILI_EBTC_Analysis

This project evaluated the value-add of US EPA's Toxcast data (https://www.epa.gov/chemical-research/toxicity-forecasting) for machine learning based prediction of "mostDILI" drugs (drugs with the hghest risk for hepatotoxicity) vs "otherDILI" (drugs with lower/no hepatotoxicity risk) drugs.

The dataset used for this study consisted of 60 "mostDILI" drugs and 115 "otherDILI" drugs. The 115 "otherDILI" drugs consisted of "lessDILI" (70), "noDILI" (22), and "ambiDILI" (23) drugs. Annotations/DILI classification label for all drugs were retrieved from Liver Toxicity Knowledge Base: (https://www.fda.gov/ScienceResearch/BioinformaticsTools/LiverToxicityKnowledgeBase/ucm2024036.htm)

For all drugs, ML modeling for "mostDILI" vs "otherDILI" was performed using one of three different sets of predictors:
1. Benchamrk predictors alone*: Values for LogP, molecular Weight, daily dose, Cmax, and reactive metabolites for 175 drugs in this study
2. Toxcast predictors alone: AC50 values for up to 216 Toxcast assay targets/pathways retrieved for 175 drugs used in this study
3. Combination of benchmark predictors and toxcast predictors for 175 drugs used in this study

Results of models generated from predictor set 1 vs predictor set 3 from above were used to evaluate value-add of Toxcast predictors to prediction of "mostDILI" drugs. 



*"benchmark model/predictors" based on publication by Chen MC et al., 2016 (https://www.ncbi.nlm.nih.gov/pubmed/27302180).
