import haxe.io.*;
import haxe.unit.*;
import ptr.Ptr;
using ptr.Tools;

class TestFloat32Array extends TestBase<Float> {
	var a:Float32Array;
	override function get(i:Int)
		return a[i];
	override function len()
		return a.length;

	override function setup():Void {
		super.setup();

		a = new Float32Array(3);
		a[0] = 2;
		a[1] = 4;
		a[2] = 6;
		aPtr = a.ptr();
	}
}