package handshake.unity;

import unityengine.Collider2D;
@:nativeGen
interface Collider2DTriggerMessage {
  private function OnTriggerEnter2D(other:Collider2D):Void;
  private function OnTriggerExit2D(other:Collider2D):Void;
}
