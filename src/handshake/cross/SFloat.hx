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
  inline public function plus(rhs:SFloat):SFloat {
    return new SFloat(this + rhs.get());
  }

  @:op(A - B)
  inline public function minus(rhs:SFloat):SFloat {
    return new SFloat(this - rhs.get());
  }

  @:op(A * B)
  inline public function mul(rhs:SFloat):SFloat {
    return new SFloat(this * rhs.get());
  }

  @:op(A / B)
  inline public function divide(rhs:SFloat):SFloat {
    return new SFloat(this / rhs.get());
  }

  inline public function get():Single{
    return this;
  }
}
