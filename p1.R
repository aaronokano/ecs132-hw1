callSplash1 <- function( ) {
  # Create list of values for heads & tails for each coin
  coins <- list( c( 5,-5 ), c( 10,-10 ), c( 25,-25 ) )
  # Simulate 1000 tosses of each coin and find the winnings
  result <- Reduce( "+", lapply( coins, sample, 1000, TRUE ) )
  return( length( result[ result >= 20 ] ) / 1000 )
}

callSplash1()
