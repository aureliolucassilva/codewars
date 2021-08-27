import math._

object Main extends App {
  def isSquare(x: Int): Boolean = {
    val square = sqrt(x)
    val squareInt = square.toInt

    squareInt * squareInt == x
  }
}
