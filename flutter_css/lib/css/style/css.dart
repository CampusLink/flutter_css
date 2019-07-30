/**
 * @author william.liu
 * 此类主要通过用css的方式，来解决绝flutter在UI层嵌套过于冗余的问题
 *
*/
import 'package:flutter_css/css/style/box.dart';
import 'package:flutter_css/css/style/font.dart';

class CSS{
	List<Style> styles;


	CSS.create(List<Style> styles){
		this.styles = styles;
	}

	void add(Style style){
		styles.add(style);
	}
}

class StyleType{
	static int color = 1;
	static int background = 2;
	static int border = 3;
	static int margin = 4;
	static int padding = 5;
	static int textIndent = 6;
	static int textAlgin = 7;
	static int wordSpacing = 8;
	static int letterSpacing = 9;
	static int textTransform = 10;
	static int textDecoration = 11;
	static int whiteSpace = 12;
	static int direction = 13;
	static int lineHeight = 14;
	static int fontFamily = 15;
	static int fontSize = 16;
	static int fontWeight = 17;
	static int display = 18;
}

abstract class Style{
	int type;

}

main(){
	CSS css = CSS.create([
		Color.red(),
		Background.url("http://XXX", scaleType: ScaleType.fitXY()),
		Background.color(Color.red()),
		Border(5, Color.red(), BorderStyle.all(BorderStyle.SOLID)),
		Margin(10, 5, 5, 10),
		Padding(10, 5, 10, 5),
	]);
}