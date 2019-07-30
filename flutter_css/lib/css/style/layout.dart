import 'css.dart';

class Display extends Style{
	int display;

	static const int BLOCK = 0;
	static const int INLINE = 1;
	static const int INLINE_BLOCK = 2;
	static const int NONE = 3;

	void _init(){
		type = StyleType.display;
	}

	Display.block(){
		_init();
		display = BLOCK;
	}

	Display.inline(){
		_init();
		display = INLINE;
	}

	Display.inlineBlock(){
		_init();
		display = INLINE_BLOCK;
	}

	Display.none(){
		_init();
		display = NONE;
	}
}

class Width extends Style{
	int width;

	Width(this.width);
}

class Height extends Style{
	int height;

	Height(this.height);
}