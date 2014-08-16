package handshake.hugs;
import unityengine.Object;
import unityengine.Transform;
import hugs.HUGSWrapper;
import unityengine.Component;
import unityengine.GameObject;

class GameObjectHelper
{
  public static function getTypedComponent<T>(g:GameObject, type:Class<T>):T {
    return cast g.GetComponent(cs.Lib.toNativeType(type));
  }

  public static function addTypedComponent<T>(g:GameObject, type:Class<T>):T {
    return cast g.AddComponent(cs.Lib.toNativeType(type));
  }

  public static function getComponentsOfType<T>(g:GameObject, type:Class<T>) : NativeArrayIterator<T> {
    return cast new NativeArrayIterator<Component>(g.GetComponents(cs.Lib.toNativeType(type)));
  }

  public static function getComponentsInChildrenOfType<T>(g:GameObject, type:Class<T>, includeInactive:Bool=false) : NativeArrayIterator<T> {
    return cast new NativeArrayIterator<Component>(g.GetComponentsInChildren(cs.Lib.toNativeType(type), includeInactive));
  }

  public static function getOrAddTypedComponent<T>(c:GameObject, type:Class<T>):T {
    var o:T = getTypedComponent(c, type);
    return o == null ? GameObjectMethods.addTypedComponent(c.gameObject, type) : o;
  }

  public static function getChildGameObject(gameObject:GameObject, name:String):GameObject {
    for (t in getComponentsInChildrenOfType(gameObject, Transform)) if (t.gameObject.name == name) return t.gameObject;
    return null;
  }

  public static function getParentTypedComponent<T>(gameObject:GameObject, type:Class<T>):T {
    var cur:GameObject = gameObject;
    var t:Transform = null;
    while ((t = cur.transform.parent) != null) {
      cur = t.gameObject;
      var c:T = getTypedComponent(cur, type);
      if (c != null) return c;
    }
    return null;
  }

  public static function instantiate(prefab:GameObject):GameObject{
    return cast Object.Instantiate(prefab);
  }
}
