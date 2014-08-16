package handshake.hugs;
import unityengine.Vector3;
import unityengine.Vector2;
abstract CVector2(Vector2) from Vector2 to Vector2 {
  inline public function new(v:Vector2) {
    this = v;
  }

  @:from
  inline public static function fromVector3(v:Vector3):CVector2 {
    return Vector2Helper.vector2(v);
  }

  @:to
  inline public function toCVector3():CVector3 {
    return Vector2Helper.vector3(this);
  }

  @:op(A + B)
  inline public function plus(rhs:CVector2):CVector2 {
    return Vector2Helper.add(this, rhs);
  }
}
