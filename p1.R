callSplash1 <- function( ) {
  coins <- list( c( 5,-5 ), c( 10,-10 ), c( 25,-25 ) )
  result <- Reduce( "+", lapply( coins, sample, 1000, TRUE ) )
  return( length( result[ result >= 20 ] ) )
}

callSplash1()
