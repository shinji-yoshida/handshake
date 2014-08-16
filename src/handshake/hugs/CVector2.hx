package handshake.hugs;
import unityengine.Vector3;
import unityengine.Vector2;
abstract CVector2(Vector2) from Vector2 to Vector2 {
  inline public function new(v:Vector2) {
    this = v;
  }

  @:from
  inline public static function fromVector3(v:Vector3):CVector2 {
    return new CVector2(untyped v);
  }
}
