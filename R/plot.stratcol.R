plot.stratcol = function(x, ...){
  #' @export
  #'
  #' @title basic plotting of stratigraphic columns
  #'
  #' @param x stratcol object
  #' @param ... further plotting options. ignored
  #'
  #' @returns invisible NULL
  #'


 lilog = StratigrapheR::litholog(l = x$bdry[1:(length(x$bdry) - 1)],
                  r = x$bdry[2:length(x$bdry) ],
                  h = x$fa,
                  i = seq_along(x$fa))
 StratigrapheR::whiteSet(xlim = range(c(0, x$fa)), ylim = range(x$bdry), ytick = 1, ny = 10)
 StratigrapheR::multigons(lilog$i, lilog$xy, lilog$dt)

 return(invisible())

}
