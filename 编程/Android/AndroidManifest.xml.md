```xml
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="test.com.am.and_test">

    <application
        android:allowBackup="true"
        android:icon="@mipmap/ic_launcher"
        android:label="@string/app_name"
        android:supportsRtl="true"
        android:theme="@style/AppTheme">
        
        <activity android:name=".MainActivity">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
        
        <activity android:name=".JumpActivity" />
        <activity android:name=".PassDataActivity" />
        <activity android:name=".EmailActivity"></activity>
		<!--添加/注册Activity-->
        
        <uses-permission android:name="android.permission.CALL_PHONE" />
        <!--获取短信电话权限-->        
        
        <uses-permission android:name="android.permission.INTERNET" />
         <!--获取网络访问权限-->
         
    </application>

</manifest>
```