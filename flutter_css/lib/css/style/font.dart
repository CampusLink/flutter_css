import 'css.dart';

class Color extends Style{
	String color;

	Color(this.color);

	Color.red(){
		this.type = StyleType.color;
		//TODO 红色
		color = "#";
	}

	Color.white(){
		this.type = StyleType.color;
		//TODO 白色
		color = "#";
	}

	Color.blue(){
		this.type = StyleType.color;
		//TODO 蓝色
		color = "#";
	}

	//TODO color的其他颜色

	Color.argb(int alpha, int r, int g, int b){
		this.type = StyleType.color;
		color = "";
	}
}

class TextIntent extends Style{

}

class TextAlgin extends Style{

}

class WordSpace extends Style{

}

class LetterSpace extends Style{

}

class TextTransform extends Style{

}

class TextDecoration extends Style{

}

class WhiteSpace extends Style{

}

class Direction extends Style{
	int direction = LTR;

	static const int LTR = 0;
	static const int RTL = 1;
	Direction.rtl(){
		direction = RTL;
	}

	Direction.ltr(){
		direction = LTR;
	}
}

class LineHeight extends Style{
	int lineHeight;
	LineHeight(this.lineHeight);
}

class FontFamily extends Style{
	String family;
	FontFamily(this.family);
}

class FontSize extends Style{
	int size;
	FontSize(this.size);
}

class FontWeight extends Style{
	int weight;
	static const int NORMAL = 0;
	static const int BLOD = 1;

	FontWeight.normal(){
		weight = NORMAL;
	}

	FontWeight.blod(){
		weight = BLOD;
	}
}

