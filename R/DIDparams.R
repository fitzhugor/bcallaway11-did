#' @title DIDparams
#'
#' @description object to hold did parameters
#'
#' @inheritParams att_gt
#'
#' @export
DIDparams <- function(yname, 
                   tname,
                   idname=NULL,
                   first.treat.name,
                   xformla,
                   data,
                   control.group,
                   maxe = NULL,
                   mine = NULL,
                   w=NULL,
                   alp=0.05,
                   bstrap=T, biters=1000, clustervars=NULL,
                   cband=T,
                   printdetails=TRUE,
                   seedvec=NULL, pl=FALSE, cores=2,method="logit",
                   estMethod="dr", panel=TRUE) {

  out <- list(yname=yname,
              tname=tname,
              idname=idname,
              first.treat.name=first.treat.name,
              xformla=xformla,
              data=data,
              control.group=control.group,
              maxe=maxe,
              mine=mine,
              w=w,
              alp=alp,
              bstrap=bstrap,
              biters=biters,
              clustervars=clustervars,
              cband=cband,
              printdetails=printdetails,
              seedvec=seedvec,
              pl=pl,
              cores=cores,
              method=method,
              estMethod=estMethod,
              panel=panel)
  class(out) <- "DIDparams"
  out
}