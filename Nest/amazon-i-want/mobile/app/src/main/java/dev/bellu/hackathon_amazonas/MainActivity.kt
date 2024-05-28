package dev.bellu.hackathon_amazonas

import HomeScreen
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import dev.bellu.hackathon_amazonas.presenter.screens.NoInternetScreen
import dev.bellu.hackathon_amazonas.presenter.screens.WithInternetScreen
import dev.bellu.hackathon_amazonas.presenter.ui.theme.HackathonamazonasTheme
import dev.bellu.hackathon_amazonas.presenter.ui.theme.onSecondary
import dev.bellu.hackathon_amazonas.presenter.ui.theme.secondary

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            val navController = rememberNavController()

            NavHost(navController = navController, startDestination = "withinternet"){
                composable("initial") { HomeScreen(navController) }
                composable("withinternet") { WithInternetScreen(navController) }
                composable("nointernet") { NoInternetScreen(navController) }
            }
        }
    }
}

