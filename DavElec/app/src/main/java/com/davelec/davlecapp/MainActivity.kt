package com.davelec.davlecapp
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Surface
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent { MainScreen() }
    }
}
@Composable
fun MainScreen() {
    Surface(color = MaterialTheme.colors.background) {
        Text("DavElec Final - placeholder completo com cálculos, tabelas e gráficos.
Modos: Normal / Técnico")
    }
}
