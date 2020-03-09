package napi.types;

#if macro
private typedef Impl<T> = {};
#elseif js
private typedef Impl<T> = {};
#elseif php7
private typedef Impl<T> = php.StdClass;
#end

@:dce abstract Object<T>(Impl<T>) from Impl<T> {

	public static function copyFromObject<T>(obj: T, fields: Array<String>): Impl<T> {
		
	}
	
	public static function copyAsObject<T>(native: Impl<T>, fields: Array<String>): T {
		return cast this;
	}

}