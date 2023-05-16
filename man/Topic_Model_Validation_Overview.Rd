% Topic_Model_Validation_Overview.Rd
\name{Topic_Model_Validation_Overview}
\alias{Topic_Model_Validation_Overview}
\title{Topic_Model_Validation Repository Overview}
\description{
The `Topic_Model_Validation` repository is a collection of scripts and functions for performing topic modeling and evaluating topic models. This document provides an overview of the different scripts and functions in the repository and their purpose.
}
%\usage{}
\details{
## Python Scripts
### evaluate.py
The `evaluate.py` script provides functions for evaluating the performance of topic models on different datasets and tasks. The functions within this script include:
- \code{R4WSItasktest()}: Evaluates the performance of a topic model on the R4WSI task, which involves predicting the top k words for a given topic.
- \code{allR4WSItasktest()}: Evaluates the performance of a topic model on multiple versions of the R4WSI task.
- \code{goldR4WSItest()}: Evaluates the performance of a topic model on a gold-standard R4WSI dataset.
- \code{heldouttest()}: Evaluates the performance of a topic model on held-out data.
- \code{keypostedtest()}: Evaluates the performance of a topic model on a key-posted dataset.
- \code{masstest()}: Evaluates the performance of a topic model on a massive dataset.
- \code{modtest()}: Evaluates the performance of a topic model on a given dataset.
- \code{resultstest()}: Evaluates the performance of a topic model on a given dataset and stores the results.
### record.py
The `record.py` script provides a function for storing the results of topic model evaluations. The function within this script is:
- \code{record()}: Stores the results of topic model evaluations.
## R Scripts
### lda.R
The `lda.R` script provides functions for performing Latent Dirichlet Allocation (LDA) topic modeling on text data. The functions within this script include:
- \code{lda_model()}: Fits an LDA model to text data.
### lsa.R
The `lsa.R` script provides functions for performing Latent Semantic Analysis (LSA) topic modeling on text data. The functions within this script include:
- \code{lsa_model()}: Fits an LSA model to text data.
### evaluate.R
The `evaluate.R` script provides functions for evaluating the performance of topic models using various metrics, such as perplexity and coherence. The functions within this script include:
- \code{evaluate_model()}: Evaluates the performance of a topic model using various metrics.
### helpers.R
The `helpers.R` script provides various helper functions that are used by the other scripts in the repository. The functions within this script include:
- \code{clean_text()}: Cleans and preprocesses text data for use in topic modeling.
- \code{read_data()}: Reads in text data from a file.
- \code{write_data()}: Writes text data to a file.
}
%\examples{}
