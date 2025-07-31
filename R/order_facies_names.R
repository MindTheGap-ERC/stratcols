order_facies_names = function(s){
 #' @export
 #'
 #' @title order facies names according to appearance
 #'
 #' @param s stratigraphic column (a `stratcol` object)
 #'
 #' @returns a stratigraphic column (a `stratcol` object)
 #'
 #' @description
  #' enumerates the facies according to their order of appearance (counting from the bottom of the section). To be applied to stratigraphic columns before get_mom is called. Replaces the facies codes by integer numbers
  #' @examples
    #' s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "clay"), L_unit = "m")
    #' s = order_facies_names(s)
    #' plot(s)
    #'
   UseMethod("order_facies_names")
}

order_facies_names.stratcol = function(s){
  #' @export
  old_names = stratcols::unique_facies_names(s)
  no_facies = stratcols::no_facies(s)
  new_names = seq_len(no_facies)

  new_s = stratcols::rename_facies(s, new_names = new_names, old_names = old_names)

  return(new_s)
}
