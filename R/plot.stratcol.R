plot.stratcol = function(x, ...){
  #' @export
  #'
  #' @title basic plotting of stratigraphic columns
  #'
  #' @param x stratigraphic column (a `stratcol` object)
  #' @param ... further plotting options. ignored
  #'
  #' @returns invisible NULL
  #'
  #' @description wraps around `StratigrapheR::litholog()` to plot a stratigraphic column. The beds are plotted as polygons, the boundaries as horizontal lines.
  #' @examples
    #' s = as_stratcol(c(0.5, 1, 0.3, 0.7), c(1,2,3,1.5), L_unit = "m")
    #' # facies codes are used as hardness
    #' plot(s)


 lilog = StratigrapheR::litholog(l = x$bdry[1:(length(x$bdry) - 1)],
                  r = x$bdry[2:length(x$bdry) ],
                  h = x$fa,
                  i = seq_along(x$fa))
 StratigrapheR::whiteSet(xlim = range(c(0, x$fa)), ylim = range(x$bdry), ytick = 1, ny = 10)
 StratigrapheR::multigons(lilog$i, lilog$xy, lilog$dt)

 return(invisible())

}
