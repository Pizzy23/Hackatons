package dev.bellu.hackathon_amazonas

import HomeScreen
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import dev.bellu.hackathon_amazonas.presenter.screens.NoInternetScreen
import dev.bellu.hackathon_amazonas.presenter.screens.SuccessDataScreen
import dev.bellu.hackathon_amazonas.presenter.screens.WithInternetScreen

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            val navController = rememberNavController()

            NavHost(navController = navController, startDestination = "withinternet"){
                composable("initial") { HomeScreen(navController) }
                composable("withinternet") { WithInternetScreen(navController) }
                composable("nointernet") { NoInternetScreen(navController) }
                composable("success") { SuccessDataScreen(navController) }
            }
        }
    }
}

