package com.example.careviger

import android.app.Activity
import android.content.Intent
import android.os.Bundle
import android.speech.RecognizerIntent
import android.speech.SpeechRecognizer
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.util.*
import android.provider.AlarmClock
import android.content.pm.PackageManager
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import android.provider.MediaStore



class MainActivity : FlutterActivity() {
    private val CHANNEL = "com.isadmin.voz"
    private val REQ_CODE = 1001
    private var resultado: MethodChannel.Result? = null

    private val ALARM_CHANNEL = "alarm_channel" 
    private val VIDEO_CAMERA_CHANNEL = "video_camera_channel"
    private val CAMERA_CHANNEL = "camera_channel"
     

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
            call, result ->
            if (call.method == "iniciarDictado") {
                this.resultado = result
                iniciarReconocimientoVoz()
            } else {
                result.notImplemented()
            }
        }

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, ALARM_CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "setNativeAlarm" -> {
                    val hour = call.argument<Int>("hour")!!
                    val minute = call.argument<Int>("minute")!!
                    val message = call.argument<String>("message")!!
                    setNativeAlarm(hour, minute, message)
                    result.success(null)
                }
                else -> result.notImplemented()
            }
        }

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, VIDEO_CAMERA_CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "openCameraVideo" -> {
                    openCameraVideo()
                    result.success(null)
                }
                else -> result.notImplemented()
            }
        }

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CAMERA_CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "openCameraPhoto" -> {
                    openCameraPhoto()
                    result.success(null)
                }
                else -> result.notImplemented()
            }
        }


    }

    private fun iniciarReconocimientoVoz() {
        val intent = Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH)
        intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM)
        intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE, "es-ES")
        intent.putExtra(RecognizerIntent.EXTRA_PROMPT, "Habla ahora...")
        startActivityForResult(intent, REQ_CODE)
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)

        if(requestCode == REQ_CODE && resultCode == Activity.RESULT_OK){
            val results = data?.getStringArrayListExtra(RecognizerIntent.EXTRA_RESULTS)
            resultado?.success(results?.get(0) ?: "")
        }
    }        

    private fun checkAlarmPermission() {
        if (ContextCompat.checkSelfPermission(this, "com.android.alarm.permission.SET_ALARM") != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(this, arrayOf("com.android.alarm.permission.SET_ALARM"), 1)
        }
    }


    fun setNativeAlarm(hour: Int, minute: Int, message: String) {
        checkAlarmPermission()
        val intent = Intent(AlarmClock.ACTION_SET_ALARM).apply {
            putExtra(AlarmClock.EXTRA_HOUR, hour)
            putExtra(AlarmClock.EXTRA_MINUTES, minute)
            putExtra(AlarmClock.EXTRA_MESSAGE, message)
        }
        startActivity(intent)
    }

    private fun openCameraVideo() {
        val intent = Intent(MediaStore.ACTION_VIDEO_CAPTURE)
        startActivity(intent)
    }

    private fun openCameraPhoto() {
        val intent = Intent(MediaStore.ACTION_IMAGE_CAPTURE)
        startActivity(intent)
    }

}