import scala.math._

object Kata {

  def groupByCommas(n: Int): String = {
    var numberString: String = n.toString
    val stringSize = numberString.length
    val repeat: Int = stringSize/3

    for(idx <- 1 to repeat) {
        numberString = numberString.patch(stringSize - (3 * idx), ",", 0)
    }

    if(numberString.charAt(0)== ',') {
      numberString = numberString.substring(1)
    }
    
    numberString
  }
}
