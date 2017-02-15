package js.npm.sortablejs;

import haxe.extern.EitherType;
import js.html.*;

typedef Selector = String;
typedef Miliseconds = Float;
typedef Keyword = String;
typedef ClassName = String;
typedef AttributeName = String;
typedef Pixels = Int;

typedef GroupPullFunction = Element -> ?Element -> GroupPullOptions;

abstract GroupPullOptions(Dynamic) from Bool to Bool from GroupPullFunction to GroupPullFunction to String {
	@:from @:extern static inline function fromClone(keyword:Keyword):GroupPullOptions
	{
		if (keyword != "clone") throw "Only 'clone' allowed";
		return cast keyword;
	}
}

typedef GroupPutFunction = Element -> ?Element -> GroupPutOptions;

abstract GroupPutOptions(Dynamic) from Bool to Bool from GroupPutFunction to GroupPutFunction from Array<String> {}

typedef CompleteGroupOptions = {
	// FIXME doc
	name : String,

	// FIXME doc
	pull : GroupPullOptions,

	// FIXME doc
	put : GroupPutOptions
}

@:forward
abstract GroupOptions(CompleteGroupOptions) from CompleteGroupOptions to CompleteGroupOptions {
	@:from @:extern static inline function fromName(name:String)
		return { name:name, pull:true, put:true };
}

typedef Options = {
	/*
	To drag elements from one list into another, both lists must have the
	same group value. You can also define whether lists can give away, give
	and keep a copy (clone), and receive elements.
	*/
	?group : GroupOptions,

	// Sorting inside list.
	?sort : Bool,

	// Time in milliseconds to define when the sorting should start.
	?delay : Miliseconds,

	// Disables the sortable if set to true.
	?disabled : Bool,

	// FIXME doc
	?store : Dynamic,  // FIXME type

	// Animation speed moving items when sorting (ms); `0` — without animation.
	?animation : Miliseconds,

	// Drag handle selector within list items.
	?handle : Selector,

	// Selectors that do not lead to dragging (String or Function).
	?filter : EitherType<Selector,Dynamic>,  // FIXME type

	// Call `event.preventDefault()` when triggered `filter`.
	?preventOnFilter : Bool,

	// Specifies which items inside the element should be draggable.
	?draggable : Selector,

	// Class name for the drop placeholder.
	?ghostClass : ClassName,

	// Class name for the chosen item.
	?chosenClass : ClassName,

	// Class name for the dragging item.
	?dragClass : ClassName,

	// FIXME doc
	?dataIdAttr : AttributeName,

	// Ignore the HTML5 DnD behaviour and force the fallback to kick in.
	?forceFallback : Bool,

	// FIXME doc
	?fallbackClass : ClassName,

	// FIXME doc
	?fallbackOnBody : Bool,

	// FIXME doc
	?fallbackTolerance : Pixels,

	// FIXME doc
	?scroll : EitherType<Bool,Element>,

	// FIXME doc
	?scrollFn : Pixels -> Pixels -> Event,

	// FIXME doc
	?scrollSensitivity : Pixels,

	// FIXME doc
	?scrollSpeed : Pixels,

	// FIXME doc
	?setData : DataTransfer -> Element -> Void,

	// FIXME doc
	?onChoose : Event -> Void,

	// FIXME doc
	?onStart : Event -> Void,

	// FIXME doc
	?onEnd : Event -> Void,

	// FIXME doc
	?onAdd : Event -> Void,

	// FIXME doc
	?onUpdate : Event -> Void,

	// FIXME doc
	?onSort : Event -> Void,

	// FIXME doc
	?onRemove : Event -> Void,

	// FIXME doc
	?onFilter : Event -> Void,

	// FIXME doc
	?onMove : Event -> Event -> Void,

	// FIXME doc
	?onClone : Event -> Void
}

