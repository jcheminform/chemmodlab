% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model_train_utilities.R
\name{chemmodlab}
\alias{chemmodlab}
\title{Constructor for the chemmodlab object}
\usage{
chemmodlab(all.preds, all.probs, model.acc, classify, responses, data, params,
  des.names, models, nsplits)
}
\arguments{
\item{all.preds}{a list of lists of dataframes.  The elements of the outer
list correspond to each split performed by \code{\link{ModelTrain}}. The
elements of the inner list correspond to each descriptor set.  For each
descriptor set and CV split combination, the output is a dataframe
containing all model predictions.  The first column of each data frame
contains the true value of the response.  The remaining columns correspond
to the models fit to the data.}

\item{all.probs}{a list of lists of dataframes. Constructed only if there is
a binary response.  The structure is the same as \code{all.preds}, except
that predictions are replaced by predicted probabilities of a response
value of one.  Predicted
probabilities are only reported for classification models (see
\code{\link{ModelTrain}})}

\item{model.acc}{a list of lists of model accuracy measures.  The elements of
the outer list correspond each split performed by \code{\link{ModelTrain}}.
The elements of the inner list correspond to each descriptor set.  For each
descriptor set and CV split combination model accuracy measures for each model fit
to the data.  Regression models are assessed with Pearson's \eqn{r} and
\eqn{RMSE} Classification models are assessed with contingency tables.}

\item{classify}{a logical.  Was classification models used for binary
response?}

\item{responses}{a numeric vector.  The true value of the response.}

\item{data}{a list of numeric matrices.  Each matrix is a descriptor set used
as model input. The first column of each matrix is the response vector, and
the remaining columns are descriptors.}

\item{params}{a list of dataframes as made by
\code{\link{MakeModelDefaults}}.  Each dataframe contains the parameters to
be set for a particular model.}

\item{des.names}{a character vector specifying the descriptor set names.  NA if 
unspecified.}

\item{models}{a character vector specifying the models fit to the data.}

\item{nsplits}{number of CV splits performed.}
}
\description{
Constructor for the chemmodlab object
}
\seealso{
\code{\link{chemmodlab}}, \code{\link{plot.chemmodlab}},
  \code{\link{CombineSplits}},
}
\author{
Jacqueline Hughes-Oliver, Jeremy Ash
}
