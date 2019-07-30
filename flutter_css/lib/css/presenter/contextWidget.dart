import 'package:flutter_css/css/tag/tagCss.dart';

abstract class ActivityLifeCycle{
	void onCreate();
	void onStart();
	void onResume();
	void onPause();
	void onStop();
	void onDestory();
}

class ActivityView{
	Body body;

	void setContentView(Body body){
		this.body = body;
	}

	Tag findTagById(){

	}
}

class Activity extends ActivityLifeCycle with ActivityView{

	@override
	void onCreate() {

	}

	@override
	void onDestory() {

	}

	@override
	void onStop() {

	}

	@override
	void onPause() {

	}

	@override
	void onResume() {

	}

	@override
	void onStart() {

	}
}

