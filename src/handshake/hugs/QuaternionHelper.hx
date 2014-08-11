package handshake.hugs;
import unityengine.Vector3;
import unityengine.Quaternion;
import hugs.HUGSWrapper;

class QuaternionHelper {
  public static inline function mulVector3(a:Quaternion, b:Vector3) : Vector3 {
    return QuaternionMethods.mulVector3(a,b);
  }

  public static inline function mul(a:Quaternion, b:Quaternion) : Quaternion {
    return QuaternionMethods.mul(a,b);
  }

  public static inline function rotatePoint(a:Quaternion, b:Vector3) : Vector3 {
    return QuaternionMethods.rotatePoint(a,b);
  }

  public static inline function eq(a:Quaternion, b:Quaternion) : Bool {
    return QuaternionMethods.eq(a,b);
  }
}
