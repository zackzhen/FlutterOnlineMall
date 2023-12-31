package com.example.untitled

import android.util.Log
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        val messenger = flutterEngine.dartExecutor.binaryMessenger

        // 新建一个 Channel 对象
        val channel = MethodChannel(messenger, "your_channel_name")

        // 为 channel 设置回调
        channel.setMethodCallHandler { call, res ->
            // 根据方法名，分发不同的处理
            when (call.method) {
                "your_method_name" -> {
                    // 获取传入的参数
                    val msg = call.argument<String>("msg")
                    Log.i("ZHP", "正在执行原生方法，传入的参数是：「$msg」")
                    // 通知执行成功
                    res.success("这是执行的结果")

                    val intents = intent
                    intents.setClass(context, NativeActivity::class.java)
                    startActivity(intents)
                }

                else -> {
                    // 如果有未识别的方法名，通知执行失败
                    res.error("error_code", "error_message", null)
                }
            }
        }
    }
}
