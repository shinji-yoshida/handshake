package handshake.hugs;
import unityengine.Vector2;
import unityengine.Vector3;
abstract CVector3(Vector3) from Vector3 to Vector3 {
  inline public function new(v:Vector3) {
    this = v;
  }

  @:to
  inline public function toCVector2():CVector2 {
    return Vector2Helper.vector2(this);
  }
}
