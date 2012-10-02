coinSplash1 <- function( w, nreps ) {
  # Create list of values for heads & tails for each coin
  coins <- list( c( 5,-5 ), c( 10,-10 ), c( 25,-25 ) )
  # Simulate 1000 tosses of each coin and find the winnings
  result <- Reduce( "+", lapply( coins, sample, nreps, TRUE ) )
  return( length( result[ result >= w ] ) / nreps )
}

coinSplash2 <- function( nreps ) {
  # Create list of values for heads & tails for each coin
  coins <- list( c( 5,-5 ), c( 10,-10 ), c( 25,-25 ) )
  # Simulate 1000 tosses of each coin and find the winnings
  result <- Reduce( "+", lapply( coins, sample, nreps, TRUE ) )
  return( length(
                 result[ result == 20 | result == 40 ] ) / length( 
                 result[ result >= 20 ]) )
}

coinSplash1( 20, 10000)
coinSplash2( 10000 )
