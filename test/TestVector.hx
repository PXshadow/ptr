import haxe.ds.Vector;
import haxe.unit.*;
import ptr.Ptr;
using ptr.Tools;

class TestVector extends TestBase<Int> {
	var a:Vector<Int>;
	override function get(i:Int)
		return a[i];
	override function len()
		return a.length;

	override function setup():Void {
		super.setup();

		a = new Vector(3);
		a[0] = 2;
		a[1] = 4;
		a[2] = 6;

		aPtr = a.ptr();
	}
}