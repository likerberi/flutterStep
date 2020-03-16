package com.example.viewer

public class SimpleSplashScreen implements SplashScreen {
    @Override
    @Nullable
    public View createSplashView(
        @NonNull Context context,
        @Nullable Bundle savedInstanceState
    ){
        // it has no state that needs to be tracked or controlled.
        return new MySplashView(context);
    }

    @Override
    public void transitionToFlutter(@NonNull Runnable onTransitionComplete) {
        onTransitionComplete.run();
    }
}