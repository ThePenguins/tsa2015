#include <hxcpp.h>

#ifndef INCLUDED_OptnState
#include <OptnState.h>
#endif
#ifndef INCLUDED_flixel_FlxBasic
#include <flixel/FlxBasic.h>
#endif
#ifndef INCLUDED_flixel_FlxObject
#include <flixel/FlxObject.h>
#endif
#ifndef INCLUDED_flixel_FlxSprite
#include <flixel/FlxSprite.h>
#endif
#ifndef INCLUDED_flixel_FlxState
#include <flixel/FlxState.h>
#endif
#ifndef INCLUDED_flixel_group_FlxGroup
#include <flixel/group/FlxGroup.h>
#endif
#ifndef INCLUDED_flixel_group_FlxTypedGroup
#include <flixel/group/FlxTypedGroup.h>
#endif
#ifndef INCLUDED_flixel_interfaces_IFlxDestroyable
#include <flixel/interfaces/IFlxDestroyable.h>
#endif
#ifndef INCLUDED_flixel_text_FlxText
#include <flixel/text/FlxText.h>
#endif
#ifndef INCLUDED_flixel_util_FlxSpriteUtil
#include <flixel/util/FlxSpriteUtil.h>
#endif

Void OptnState_obj::__construct(Dynamic MaxSize)
{
HX_STACK_FRAME("OptnState","new",0x074b9f08,"OptnState.new","OptnState.hx",15,0xa9ef1968)
HX_STACK_THIS(this)
HX_STACK_ARG(MaxSize,"MaxSize")
{
	HX_STACK_LINE(15)
	super::__construct(MaxSize);
}
;
	return null();
}

//OptnState_obj::~OptnState_obj() { }

Dynamic OptnState_obj::__CreateEmpty() { return  new OptnState_obj; }
hx::ObjectPtr< OptnState_obj > OptnState_obj::__new(Dynamic MaxSize)
{  hx::ObjectPtr< OptnState_obj > result = new OptnState_obj();
	result->__construct(MaxSize);
	return result;}

Dynamic OptnState_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< OptnState_obj > result = new OptnState_obj();
	result->__construct(inArgs[0]);
	return result;}

Void OptnState_obj::create( ){
{
		HX_STACK_FRAME("OptnState","create",0x82783154,"OptnState.create","OptnState.hx",21,0xa9ef1968)
		HX_STACK_THIS(this)
		HX_STACK_LINE(22)
		::flixel::text::FlxText welcomeText;		HX_STACK_VAR(welcomeText,"welcomeText");
		HX_STACK_LINE(23)
		::flixel::text::FlxText _g = ::flixel::text::FlxText_obj::__new((int)0,(int)0,(int)0,HX_CSTRING("This is the options menu"),null(),null());		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(23)
		welcomeText = _g;
		HX_STACK_LINE(24)
		::flixel::util::FlxSpriteUtil_obj::screenCenter(welcomeText,null(),null());
		HX_STACK_LINE(25)
		this->add(welcomeText);
		HX_STACK_LINE(26)
		this->super::create();
	}
return null();
}


Void OptnState_obj::destroy( ){
{
		HX_STACK_FRAME("OptnState","destroy",0xb9ce6fa2,"OptnState.destroy","OptnState.hx",35,0xa9ef1968)
		HX_STACK_THIS(this)
		HX_STACK_LINE(35)
		this->super::destroy();
	}
return null();
}


Void OptnState_obj::update( ){
{
		HX_STACK_FRAME("OptnState","update",0x8d6e5061,"OptnState.update","OptnState.hx",43,0xa9ef1968)
		HX_STACK_THIS(this)
		HX_STACK_LINE(43)
		this->super::update();
	}
return null();
}



OptnState_obj::OptnState_obj()
{
}

Dynamic OptnState_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 6:
		if (HX_FIELD_EQ(inName,"create") ) { return create_dyn(); }
		if (HX_FIELD_EQ(inName,"update") ) { return update_dyn(); }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"destroy") ) { return destroy_dyn(); }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic OptnState_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	return super::__SetField(inName,inValue,inCallProp);
}

void OptnState_obj::__GetFields(Array< ::String> &outFields)
{
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	String(null()) };

#if HXCPP_SCRIPTABLE
static hx::StorageInfo *sMemberStorageInfo = 0;
#endif

static ::String sMemberFields[] = {
	HX_CSTRING("create"),
	HX_CSTRING("destroy"),
	HX_CSTRING("update"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(OptnState_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(OptnState_obj::__mClass,"__mClass");
};

#endif

Class OptnState_obj::__mClass;

void OptnState_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("OptnState"), hx::TCanCast< OptnState_obj> ,sStaticFields,sMemberFields,
	&__CreateEmpty, &__Create,
	&super::__SGetClass(), 0, sMarkStatics
#ifdef HXCPP_VISIT_ALLOCS
    , sVisitStatics
#endif
#ifdef HXCPP_SCRIPTABLE
    , sMemberStorageInfo
#endif
);
}

void OptnState_obj::__boot()
{
}

