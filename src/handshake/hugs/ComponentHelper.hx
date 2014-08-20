package handshake.hugs;
import unityengine.GameObject;
import hugs.HUGSWrapper;
import unityengine.Component;
class ComponentHelper {
  inline public static function getTypedComponent<T>(c:Component, type:Class<T>):T {
  return ComponentMethods.getTypedComponent(c, type);
  }

  inline public static function getComponentInChildrenOfType<T>(c:Component, type:Class<T>) : T {
  return ComponentMethods.getComponentInChildrenOfType(c, type);
  }

  public static function getComponentsInChildrenOfType<T>(c:Component, type:Class<T>, includeInactive:Bool=false) : NativeArrayIterator<T> {
  return ComponentMethods.getComponentsInChildrenOfType(c, type, includeInactive);
  }

  inline public static function getOrAddTypedComponent<T>(c:Component, type:Class<T>):T{
    return ComponentMethods.getOrAddTypedComponent(c, type);
  }

  inline public static function getChildGameObject(c:Component, name:String):GameObject{
    return ComponentMethods.getChildGameObject(c, name);
  }

  inline public static function getParentTypedComponent<T>(c:Component, type:Class<T>):T{
    return ComponentMethods.getParentTypedComponent(c, type);
  }

  public static function getParentTypedComponentIncludingSelf<T>(c:Component, type:Class<T>):T{
    var result = getTypedComponent(c, type);
    if(result != null)
      return result;
    else
      return getParentTypedComponent(c, type);
  }
}
