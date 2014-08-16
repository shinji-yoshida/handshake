package handshake.cross;

abstract SFloat(Single) from Single to Single to Float {
  inline public function new(s:Single) {
    this = s;
  }

  @:from
  inline public static function fromInt(i:Int):SFloat {
    return new SFloat(i);
  }

  @:op(A + B)
  inline public function plus(rhs:Single):SFloat {
    return new SFloat(this + rhs);
  }

  @:op(A - B)
  inline public function minus(rhs:Single):SFloat {
    return new SFloat(this - rhs);
  }

  @:op(A * B)
  inline public function mul(rhs:Single):SFloat {
    return new SFloat(this * rhs);
  }

  @:op(A / B)
  inline public function divide(rhs:Single):SFloat {
    return new SFloat(this / rhs);
  }
}
