package handshake.hugs;
import dotnet.system.collections.IEnumerable;
import hugs.HUGSWrapper;
class EnumeratorHelper {
  public static inline function iterator(enumerable:IEnumerable) : Iterator<Dynamic> {
    return EnumeratorMethods.iterator(enumerable);
  }

  public static inline function iteratorT<T>(enumerable:IEnumerable, type:Class<T>) : Iterator<T> {
    return EnumeratorMethods.iteratorT(enumerable, type);
  }
}
