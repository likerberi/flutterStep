package com.example.viewer

public class MyFlutterFragment extends FlutterFragment {

    @Override
    protected SplashScreen provideSplashScreen() {
        Drawable splash = getResources().getDrawable(R.drawable.my_splash);
        return new DrawableSplashScreen(splash);
    }
}