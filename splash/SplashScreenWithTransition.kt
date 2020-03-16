package com.example.viewer

public class SplashScreenWithTransition implements SplashScreen {
    private MySplashView mySplashView;

    @Override
    @Nullable
    public View createSplashView(
        @NonNull Context context,
        @Nullable Bundle savedInstanceState
    ) {
        mySplashView = New MySplashView(context);
        return mySplashView;
    }

    @Override 
    public void transitionToFlutter(@NonNull Runnable onTransitionComplete) {
        mySplashView.animateAway(onTransitionComplete);
    }
}