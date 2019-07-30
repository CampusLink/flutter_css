import 'package:flutter_css/css/style/css.dart';
import 'package:flutter_css/css/style/font.dart';
import 'package:flutter_css/css/style/box.dart';
import 'package:flutter_css/css/style/layout.dart';

///@author William.liu
///负责DomTree中每个Dom的Css合并
class TagCss {
	CSS style;//等价于html标签中的style
	List<CSS> css;//等价于标签中的class
	TagCss father;
	List<TagCss> childs;

	TagCss({this.style, this.css});

	void tag(TagCss tag){
		childs.add(tag);
	}

	TagCss operator [] (List<TagCss> tag){
		if(tag != null){
			childs.addAll(tag);
		}
		return this;
	}

	void build(){}
}

class BodyCss extends TagCss{
	CSS style;//等价于html标签中的style
	List<CSS> css;//等价于标签中的class
}

class DivCss extends TagCss{
	CSS style;//等价于html标签中的style
	List<CSS> css;//等价于标签中的class

	DivCss({this.style, this.css});
}

class SpanCss extends TagCss{
	CSS style;//等价于html标签中的style
	List<CSS> css;//等价于标签中的class
	BindValue value;
	String click;

	SpanCss({this.style, this.css, this.value, this.click}){
		if(this.value != null){
			this.value.tag = this;
		}
	}
}

abstract class EventListener{
	EventListener();
	onEvent(event);
}

class BindValue{
	Object value;
	BindValue(this.value);
	TagCss tag;

	set widget(TagCss tag)=>this.tag = tag;
}


/*
main(){
	var css = {
		"body" : CSS.create([
			Background.color(Color.white()),
			Padding(10, 10, 10, 10),
			Display.block()
		]),
		"nav" : CSS.create([
			Width(320),
			Height(46),
			Background.color(Color.blue())
		]),
		"container" : CSS.create([
			Background.color(Color.white())
		])
	};

	var data = {
		"msg" : BindValue("Hello World")
	};

	var methods = {
		"click" : (BindValue value){}
	};


	BodyCss(style: css["body"])[[
		DivCss(style: css["nav"])[[
			//NAV 部分的标签写在这里
			
		]],
		DivCss(style: css["container"])[[
			SpanCss(value: data["msg"], click: methods["click"](data["msg"]))
		]]
	]].build();

}*/
