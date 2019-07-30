import 'css.dart';
import 'package:flutter_css/css/style/font.dart';

class Background extends Style{
	ScaleType scaleType = ScaleType.fitXY();
	Color color;
	Background.url(String url, {this.scaleType});

	Background.color(this.color);
}

class Border extends Style{
	int width;
	Radius radius;
	Color color;
	bool visible;
	BorderStyle borderStyle;

	Border.none(){
		visible = false;
	}

	Border(this.width, this.color, this.borderStyle, {this.radius}){
		visible = true;
	}
}

class Margin extends Style{
	int left;
	int top;
	int right;
	int bottom;

	Margin.all(int margin){
		this.left = this.top = this.right = this.bottom = margin;
	}

	Margin(this.left, this.top, this.right, this.bottom);
}

class Padding extends Style{
	int left;
	int top;
	int right;
	int bottom;

	Padding.all(int padding){
		this.left = this.top = this.right = this.bottom = padding;
	}

	Padding(this.left, this.top, this.right, this.bottom);
}

class BorderStyle{
	int left;
	int top;
	int right;
	int bottom;

	static const int NONE = 0;
	static const int DOTTED = 1;
	static const int SOLID = 0;

	BorderStyle.all(int style){
		this.left = this.top = this.right = this.bottom = style;
	}

	BorderStyle(this.left, this.top, this.right, this.bottom);
}

class Radius{
	int left;
	int top;
	int right;
	int bottom;

	Radius({this.left, this.top, this.right, this.bottom});
	Radius.all(int radius){
		this.left = radius;
		this.top = radius;
		this.right = radius;
		this.bottom = radius;
	}
}

class ScaleType{
	int scaleType;
	static const int MATRIX = 0;
	static const int FIT_XY = 1;
	static const int FIT_START = 2;
	static const int FIT_CENTER = 3;
	static const int FIT_END = 4;
	static const int CENTER = 5;
	static const int CENTER_CROP = 6;
	static const int CENTER_INSIDE = 7;

	ScaleType.matrix(){
		this.scaleType = MATRIX;
	}

	ScaleType.fitXY(){
		this.scaleType = FIT_XY;
	}

	ScaleType.fitStart(){
		this.scaleType = FIT_START;
	}

	ScaleType.fitCenter(){
		this.scaleType = FIT_CENTER;
	}

	ScaleType.fitEnd(){
		this.scaleType = FIT_END;
	}

	ScaleType.center(){
		this.scaleType = CENTER;
	}

	ScaleType.centerCrop(){
		this.scaleType = CENTER_CROP;
	}

	ScaleType.centerInside(){
		this.scaleType = CENTER_INSIDE;
	}
}
