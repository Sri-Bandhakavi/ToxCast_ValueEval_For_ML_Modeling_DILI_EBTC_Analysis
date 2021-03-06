# ToxCast_ValueEval_For_ML_Modeling_DILI_EBTC_Analysis

This project evaluated the value-add of US EPA's Toxcast data (https://www.epa.gov/chemical-research/toxicity-forecasting) for machine learning based prediction of "mostDILI" drugs (drugs with the hghest risk for hepatotoxicity) vs "otherDILI" (drugs with lower/no hepatotoxicity risk) drugs.

After processing, the dataset used for this study consisted of 60 "mostDILI" drugs and 115 "otherDILI" drugs. The 115 "otherDILI" drugs consisted of "lessDILI" (70), "noDILI" (22), and "ambiDILI" (23) drugs. DILI classification labels for all drugs were retrieved from Liver Toxicity Knowledge Base (https://www.fda.gov/ScienceResearch/BioinformaticsTools/LiverToxicityKnowledgeBase/ucm2024036.htm).

For all drugs, ML modeling for "mostDILI" vs "otherDILI" was performed using one of three different sets of predictors:
1. Benchmark predictors alone*: Values for LogP, molecular Weight, daily dose, Cmax, and reactive metabolites for 175 drugs in this study
2. Toxcast predictors alone: Normalized activtion scores for up to 216 Toxcast assay targets/pathways across 175 drugs used in this study
3. Combination of predictors within "benchmark predictors" and "toxcast predictors" across 175 drugs used in this study

Results of models generated from predictor set 1 vs predictor set 3 from above were used to evaluate, what additive value if any, was offered by Toxcast predictors to the benchmark predictors. Final results summary - presented to FDA's DILI working group - in March 2019 are also provided as a pdf file (https://github.com/Sri-Bandhakavi/ToxCast_ValueEval_For_ML_Modeling_DILI_EBTC_Analysis/blob/master/ToxCast_ValueAdd_For_DILI_Predictions_DILIWG_Presentation.pdf).



*"benchmark model/predictors" based on publication by 
Chen MC et al., 2016 (https://www.ncbi.nlm.nih.gov/pubmed/27302180).
