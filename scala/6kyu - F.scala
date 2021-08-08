// Link -> https://www.codewars.com/kata/5274e122fc75c0943d000148

import scala.math._

object VolTank {

  def tankVol(h: Int, d: Int, vt: Int): Int = {
    val r: Double = d/2.0
    val l: Double = 4.0 * vt/(Pi*pow(d,2))
    var m: Double = 0.0
    var angle: Double = 0.0
    var volume: Double = 0.0

    if(h < r){
      m = r - h
      angle = acos(m/r) * 2.0
      volume = 0.5 * pow(r,2) * (angle - sin(angle)) * l
    } else if(h == r){
      volume = vt/2
    } else if(h > r) {
      m = h - r
      angle = acos(m/r) * 2.0
      volume = vt - 0.5 * pow(r,2) * (angle - sin(angle)) * l
    }

    volume.toInt
  }
}
