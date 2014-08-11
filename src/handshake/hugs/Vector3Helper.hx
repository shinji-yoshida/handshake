package handshake.hugs;
import unityengine.Vector3;
class Vector3Helper {
  public static function add(a:Vector3, b:Vector3) : Vector3 {
    return untyped __cs__("a+b");
  }

  public static function sub(a:Vector3, b:Vector3) : Vector3 {
    return untyped __cs__("a-b");
  }

  public static function mul(a:Vector3, b:Single) : Vector3 {
    return untyped __cs__("b*a");
  }

  public static function div(a:Vector3, b:Single) : Vector3 {
    return untyped __cs__("a/b");
  }

  public static function eq(a:Vector3, b:Vector3) : Bool {
    return untyped __cs__("a==b");
  }
}
