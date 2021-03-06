% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auto_generated_wrappers.R
\name{h2o4gpu.gradient_boosting_classifier}
\alias{h2o4gpu.gradient_boosting_classifier}
\title{Gradient Boosting Classifier}
\usage{
h2o4gpu.gradient_boosting_classifier(loss = "deviance", learning_rate = 0.1,
  n_estimators = 100L, subsample = 1, criterion = "friedman_mse",
  min_samples_split = 2L, min_samples_leaf = 1L,
  min_weight_fraction_leaf = 0, max_depth = 3L, min_impurity_decrease = 0,
  min_impurity_split = NULL, init = NULL, random_state = NULL,
  max_features = "auto", verbose = 0L, max_leaf_nodes = NULL,
  warm_start = FALSE, presort = "auto", colsample_bytree = 1,
  num_parallel_tree = 1L, tree_method = "gpu_hist", n_gpus = -1L,
  predictor = "gpu_predictor", objective = "binary:logistic",
  booster = "gbtree", n_jobs = 1L, gamma = 0L, min_child_weight = 1L,
  max_delta_step = 0L, colsample_bylevel = 1L, reg_alpha = 0L,
  reg_lambda = 1L, scale_pos_weight = 1L, base_score = 0.5,
  missing = NULL, backend = "h2o4gpu", ...)
}
\arguments{
\item{loss}{loss function to be optimized. 'deviance' refers to deviance (= logistic regression) for classification with probabilistic outputs. For loss 'exponential' gradient boosting recovers the AdaBoost algorithm.}

\item{learning_rate}{learning rate shrinks the contribution of each tree by \code{learning_rate}. There is a trade-off between learning_rate and n_estimators.}

\item{n_estimators}{The number of boosting stages to perform. Gradient boosting is fairly robust to over-fitting so a large number usually results in better performance.}

\item{subsample}{The fraction of samples to be used for fitting the individual base learners. If smaller than 1.0 this results in Stochastic Gradient Boosting. \code{subsample} interacts with the parameter \code{n_estimators}. Choosing \code{subsample < 1.0} leads to a reduction of variance and an increase in bias.}

\item{criterion}{The function to measure the quality of a split. Supported criteria are "friedman_mse" for the mean squared error with improvement score by Friedman, "mse" for mean squared error, and "mae" for the mean absolute error. The default value of "friedman_mse" is generally the best as it can provide a better approximation in some cases.}

\item{min_samples_split}{The minimum number of samples required to split an internal node:}

\item{min_samples_leaf}{The minimum number of samples required to be at a leaf node:}

\item{min_weight_fraction_leaf}{The minimum weighted fraction of the sum total of weights (of all the input samples) required to be at a leaf node. Samples have equal weight when sample_weight is not provided.}

\item{max_depth}{maximum depth of the individual regression estimators. The maximum depth limits the number of nodes in the tree. Tune this parameter for best performance; the best value depends on the interaction of the input variables.}

\item{min_impurity_decrease}{A node will be split if this split induces a decrease of the impurity greater than or equal to this value.}

\item{min_impurity_split}{Threshold for early stopping in tree growth. A node will split if its impurity is above the threshold, otherwise it is a leaf.}

\item{init}{An estimator object that is used to compute the initial predictions. \code{init} has to provide \code{fit} and \code{predict}. If NULL it uses \code{loss.init_estimator}.}

\item{random_state}{If int, random_state is the seed used by the random number generator; If RandomState instance, random_state is the random number generator; If NULL, the random number generator is the RandomState instance used by \code{np.random}.}

\item{max_features}{The number of features to consider when looking for the best split:}

\item{verbose}{Enable verbose output. If 1 then it prints progress and performance once in a while (the more trees the lower the frequency). If greater than 1 then it prints progress and performance for every tree.}

\item{max_leaf_nodes}{Grow trees with \code{max_leaf_nodes} in best-first fashion. Best nodes are defined as relative reduction in impurity. If NULL then unlimited number of leaf nodes.}

\item{warm_start}{When set to \code{TRUE}, reuse the solution of the previous call to fit and add more estimators to the ensemble, otherwise, just erase the previous solution.}

\item{presort}{Whether to presort the data to speed up the finding of best splits in fitting. Auto mode by default will use presorting on dense data and default to normal sorting on sparse data. Setting presort to true on sparse data will raise an error.}

\item{colsample_bytree}{Subsample ratio of columns when constructing each tree.}

\item{num_parallel_tree}{Number of trees to grow per round}

\item{tree_method}{The tree construction algorithm used in XGBoost Distributed and external memory version only support approximate algorithm. Choices: {‘auto’, ‘exact’, ‘approx’, ‘hist’, ‘gpu_exact’, ‘gpu_hist’} ‘auto’: Use heuristic to choose faster one. - For small to medium dataset, exact greedy will be used. - For very large-dataset, approximate algorithm will be chosen. - Because old behavior is always use exact greedy in single machine, - user will get a message when approximate algorithm is chosen to notify this choice. ‘exact’: Exact greedy algorithm. ‘approx’: Approximate greedy algorithm using sketching and histogram. ‘hist’: Fast histogram optimized approximate greedy algorithm. It uses some performance improvements such as bins caching. ‘gpu_exact’: GPU implementation of exact algorithm. ‘gpu_hist’: GPU implementation of hist algorithm.}

\item{n_gpus}{Number of gpu's to use in GradientBoostingClassifier solver. Default is -1.}

\item{predictor}{The type of predictor algorithm to use. Provides the same results but allows the use of GPU or CPU. - 'cpu_predictor': Multicore CPU prediction algorithm. - 'gpu_predictor': Prediction using GPU. Default for 'gpu_exact' and 'gpu_hist' tree method.}

\item{objective}{Specify the learning task and the corresponding learning objective or a custom objective function to be used Note: A custom objective function can be provided for the objective parameter. In this case, it should have the signature objective(y_true, y_pred) -> grad, hess:}

\item{booster}{Specify which booster to use: gbtree, gblinear or dart.}

\item{n_jobs}{Number of parallel threads used to run xgboost.}

\item{gamma}{Minimum loss reduction required to make a further partition on a leaf node of the tree.}

\item{min_child_weight}{Minimum sum of instance weight(hessian) needed in a child.}

\item{max_delta_step}{Maximum delta step we allow each tree’s weight estimation to be.}

\item{colsample_bylevel}{Subsample ratio of columns for each split, in each level.}

\item{reg_alpha}{L1 regularization term on weights}

\item{reg_lambda}{L2 regularization term on weights}

\item{scale_pos_weight}{Balancing of positive and negative weights.}

\item{base_score}{The initial prediction score of all instances, global bias.}

\item{missing}{Value in the data which needs to be present as a missing value. If NULL, defaults to np.nan.}

\item{backend}{Which backend to use. Options are 'auto', 'sklearn', 'h2o4gpu'. Saves as attribute for actual backend used.}

\item{...}{Other parameters for XGBoost object. Full documentation of parameters can be found here: https://github.com/dmlc/xgboost/blob/master/doc/parameter.md}
}
\description{
Gradient Boosting Classifier
}
