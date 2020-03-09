package napi.types;

#if macro
private typedef Impl<T> = {};
#elseif js
private typedef Impl<T> = {};
#elseif php7
private typedef Impl<T> = php.StdClass;
#end

@:dce abstract Object<T: {}>(Impl<T>) from Impl<T> {

	@:from public static inline function copyFromObject<T: {}>(obj: T): Object<T> {
		#if php
		return cast obj;
		#else
		return cast obj;
		#end
	}
	
	@:to public inline function toObject<T>(): T {
		return cast php.Boot.createAnon(cast this);
	}

}