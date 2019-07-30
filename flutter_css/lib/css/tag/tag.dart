import 'package:flutter_css/css/style/css.dart';
import 'package:flutter_css/css/tag/tagCss.dart';

abstract class Tag {
	CSS style; //等价于html标签中的style
	List<CSS> css; //等价于标签中的class
	int deep = 0; //当前所处的深度

	Tag({this.style, this.css});

	void build() {
		String prefix = "";
		for (int i = 0; i < deep; i++) {
			prefix += " ";
		}
		print(prefix + "<" + name() + "/>");
	}

	String name();
}

abstract class SingleTag extends Tag {
	Tag child; //当前的子孩子

	SingleTag operator [](Tag tag) {
		child = tag;
		child.deep ++;
		return this;
	}

	@override
	void build() {
		String prefix = "";
		for (int i = 0; i < deep; i++) {
			prefix += " ";
		}
		print(prefix + "<" + name() + ">");
		if (child != null) {
			child.build();
		}
		print(prefix + "</" + name() + ">");
	}
}

abstract class ChildsTag extends Tag {
	List<Tag> childs;

	ChildsTag operator [](List<Tag> tags) {
		if (childs == null) {
			childs = List();
		}
		if (tags != null) {
			for (Tag tag in tags) {
				tag.deep++;
			}

			childs.addAll(tags);
		}
		return this;
	}

	void build() {
		String prefix = "";
		for (int i = 0; i < deep; i++) {
			prefix += " ";
		}
		print(prefix + "<" + name() + ">");
		if(childs != null && childs.length != 0){
			for (Tag tag in childs) {
				tag.build();
			}
		}
		print(prefix + "</" + name() + ">");
	}
}


class Body extends ChildsTag {

	Body.style(CSS style){
		this.style = style;
		deep = 0;
	}

	@override
	String name() => "Body";
}

class Div extends ChildsTag {
	Div();

	Div.style(CSS style){
		this.style = style;
	}

	@override
	String name() => "Div";
}

class P extends ChildsTag{
	String value;

	P.value(this.value);
	@override
	String name() => "P";

	@override
  void build() {
		String prefix = "";
		for (int i = 0; i < deep; i++) {
			prefix += " ";
		}
		print(prefix + "<" + name() + ">");
		print(prefix + " " + value);
		print(prefix + "</" + name() + ">");
  }
}

main() {
	var body = CSS.create([]);
	Body.style(body)[[
		Div()[[
			P.value("HelloWorld")
		]]
	]].build();
}
