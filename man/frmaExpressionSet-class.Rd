\name{frmaExpressionSet-class}
\docType{class}
\alias{class:frmaExpressionSet}
\alias{frmaExpressionSet-class}
\alias{frmaExpressionSet}
\alias{frmaExpressionSet-methods}
\alias{initialize,frmaExpressionSet-method}
\alias{se.exprs,frmaExpressionSet-method}
\alias{se.exprs,ExpressionSet-method}
\alias{weights,frmaExpressionSet-method}
\alias{residuals,frmaExpressionSet-method}
\alias{randomeffects,frmaExpressionSet-method}
\alias{as.ExpressionSet,frmaExpressionSet-method}
\alias{se.exprs,frmaExpressionSet-method}
\alias{se.exprs<-}
\alias{se.exprs<-,frmaExpressionSet-method}
\alias{se.exprs<-,ExpressionSet-method}
\alias{weights,frmaExpressionSet-method}
\alias{weights<-}
\alias{weights<-,frmaExpressionSet-method}
\alias{residuals,frmaExpressionSet-method}
\alias{residuals<-}
\alias{residuals<-,frmaExpressionSet-method}
\alias{randomeffects}
\alias{randomeffects,frmaExpressionSet-method}
\alias{randomeffects<-}
\alias{randomeffects<-,frmaExpressionSet-method}
\title{
  Class to Contain and Describe High-Throughput Expression Level Assays
  preprocessed with fRMA}
\description{This is a class representation for fRMA-preprocessed expression
  data. \code{frmaExpressionSet} class is derived from
  \code{ExpressionSet}, and requires a matrix named \code{exprs}
  and optionally matrices named \code{se.exprs}, \code{weights}, and \code{residuals}.}
\section{Extends}{
  Extends class \code{ExpressionSet}.
  }
\section{Creating Objects}{

  \code{new("frmaExpressionSet",
    exprs = new("matrix"),
    se.exprs = new("matrix"),
    weights=new("matrix"),
    residuals=new("matrix"),
    randomeffects=new("matrix"),
    phenoData = new("AnnotatedDataFrame"),
    featureData = new("AnnotatedDataFrame"),
    experimentData = new("MIAME"),
    annotation = new("character"),
    ...)
  }  

  This creates a \code{frmaExpressionSet} with \code{assayData}
  implicitly created to contain \code{exprs} and \code{se.exprs}. The
  only required named arguments is \code{exprs}. Three optional named
  matrices, \code{weights}, \code{residuals}, and \code{randomeffects}
  can be added to the object.

  \code{new("frmaExpressionSet",
    assayData = assayDataNew(exprs=new("matrix"),se.exprs=new("matrix")),  
    weights=new("matrix"),
    residuals=new("matrix"),
    randomeffects=new("matrix"),
    phenoData = new("AnnotatedDataFrame"),
    featureData = new("AnnotatedDataFrame"),
    experimentData = new("MIAME"),
    annotation = new("character"),
    ...)
  }

  This creates a \code{frmaExpressionSet} with \code{assayData} provided
  explicitly. In this form, the only required named argument is
  \code{assayData}. Three optional named matrices, \code{weights},
  \code{residuals}, and \code{randomeffects} can be added to the object.
  }
    
\section{Slots}{
  \describe{
    \item{\code{se.exprs}:}{standard errors for the expression estimates}
    \item{\code{weights}:}{weights used in the summarization step}
    \item{\code{residuals}:}{residuals from fitting the probe-level
      model}
    \item{\code{randomeffects}:}{random effect estimates from fitting
  the probe-level model using random effect summarization}
  }
  Inherited from \code{ExpressionSet}:
  \describe{
    \item{\code{assayData}:}{Contains matrices with equal dimensions,
      and with column number equal to
      \code{nrow(phenoData)}. \code{assayData} must contain a matrix
      \code{exprs} with rows representing features and columns
      representing samples. It may also contain a matrix \code{se.exprs}
    containing standard errors.}  
    \item{\code{phenoData}:}{See \code{eSet}}
    \item{\code{annotation}:}{See \code{eSet}}
    \item{\code{featureData}:}{See \code{eSet}}
    \item{\code{experimentData}:}{See \code{eSet}} 
  }
}

\section{Methods}{
  Class-specific methods:
  \describe{
    \item{\code{se.exprs(frmaExpressionSet)}}{Access elements named
      \code{se.exprs} in the \code{AssayData-class} slot.}
    \item{\code{weights(frmaExpressionSet)}}{Access elements named
      \code{weights}}
    \item{\code{residuals(frmaExpressionSet)}}{Access elements named
      \code{residuals}}
    \item{\code{randomeffects(frmaExpressionSet)}}{Access elements named
      \code{randomeffects}}
  }

  For derived methods (see \code{ExpressionSet}).
}

\seealso{
  \code{eSet-class}, \code{ExpressionSet-class}, \code{frma}. 
} 

\examples{
# create an instance of frmaExpressionSet
new("frmaExpressionSet")
}

\keyword{classes}