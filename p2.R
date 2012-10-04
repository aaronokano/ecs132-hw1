busSuccess <- function( nreps ) {
  # Create vectors of delays and their respective probabilities
  delays <- c( 0, 1, 2, 3 )
  probabilities <- c( 0.5, 0.25, 0.15, 0.1 )
  # Simulate arrival times and find the difference
  result <- Reduce( "-", list( sample( delays, nreps, TRUE, probabilities ),
                              sample( delays, nreps, TRUE, probabilities ) ) )
  # Return the probability of a successful transfer (i.e. A - B <= 1.25)
  return( length( result[ result <= 1.25 ] ) / nreps )
}

busSuccess( 10000 )

busSuccess2 <- function( nreps ) {
  # Create vectors of delays and their respective probabilities
  delays <- c( 0, 1, 2, 3 )
  probabilities <- c( 0.5, 0.25, 0.15, 0.1 )
  # Simulate arrival times and find the difference
  result <- Reduce( "-", list( sample( delays, nreps, TRUE, probabilities ),
                              sample( delays, nreps, TRUE, probabilities ) ) )
  # Return the probability of a successful transfer (i.e. A - B <= 1.25)
  return( length( result[ result >= 0.0 ] ) / nreps )
}
busSuccess2( 10000 )