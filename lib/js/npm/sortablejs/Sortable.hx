package js.npm.sortablejs;

import js.npm.sortablejs.Options;

#if hxnodejs
@:require("sortable")
#else
@:native("Sortable")
#end
extern class Sortable {
	// FIXME doc
	static var version:String;

	// FIXME doc
	static function create(el:js.html.Element, options:Options):Void;

	// FIXME doc
	static var utils : {
		// FIXME doc
		on : Dynamic,  // FIXME type
		// FIXME doc
		off : Dynamic,  // FIXME type
		// FIXME doc
		css : Dynamic,  // FIXME type
		// FIXME doc
		find : Dynamic,  // FIXME type
		// FIXME doc
		is : js.html.Element -> Selector -> Bool,
		// FIXME doc
		extend : Dynamic,  // FIXME type
		// FIXME doc
		throttle : Dynamic,  // FIXME type
		// FIXME doc
		closest : Dynamic,  // FIXME type
		// FIXME doc
		toggleClass : Dynamic,  // FIXME type
		// FIXME doc
		clone : Dynamic,  // FIXME type
		// FIXME doc
		index : Dynamic  // FIXME type
	};
}

