package handshake.hugs;
import unityengine.Vector2;
import unityengine.Vector3;

@:nativeGen
class Vector2Helper {
  public static function vector2(v:Vector3):Vector2 {
    return untyped v;
  }

  public static function vector3(v:Vector2):Vector3 {
    return untyped v;
  }

  public static function add(a:Vector2, b:Vector2) : Vector2 {
    return untyped __cs__("a+b");
  }

  public static function sub(a:Vector2, b:Vector2) : Vector2 {
    return untyped __cs__("a-b");
  }

  public static function mul(a:Vector2, b:Single) : Vector2 {
    return untyped __cs__("b*a");
  }

  public static function div(a:Vector2, b:Single) : Vector2 {
    return untyped __cs__("a/b");
  }

  public static function eq(a:Vector2, b:Vector2) : Bool {
    return untyped __cs__("a==b");
  }

  public static function negative(a:Vector2) : Vector2 {
    return untyped __cs__("-a");
  }
}
