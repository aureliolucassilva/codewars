import math._

object Movie {

  def movie(card: Int, ticket: Int, perc: Double): Int = {
    // n Times
    var n = 1
    // System A
    var systemA = ticket
    // System B
    var systemB = card + (ticket * perc)
    
    while(systemA <= ceil(systemB)){
      n += 1
      systemA = n * ticket
      systemB += pow(perc, n) * ticket
    }
    
    // Should Go
    n
  }   
}
