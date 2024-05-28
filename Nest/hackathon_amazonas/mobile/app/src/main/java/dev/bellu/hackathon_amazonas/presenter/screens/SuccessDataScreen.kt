package dev.bellu.hackathon_amazonas.presenter.screens

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Text
import androidx.compose.material3.Typography
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import dev.bellu.hackathon_amazonas.presenter.ui.theme.Typography
import dev.bellu.hackathon_amazonas.presenter.ui.theme.primary

@Composable
fun SuccessDataScreen(navController: NavController){
    Column(
        modifier = Modifier.fillMaxSize()) {
        Box(modifier = Modifier.fillMaxWidth()
            .height(80.dp)
            .background(color = primary)
        ){
            Row(
                modifier = Modifier
                    .padding(12.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.Center) {
                IconButton(
                    onClick = {
                        navController.navigate("initial")
                    }
                ){
                    Icon(Icons.Default.ArrowBack, contentDescription = null)
                }
                Spacer(modifier = Modifier.width(20.dp))
                Text("Mapeamento Status", style = Typography.titleMedium)
            }
        }
        Spacer(modifier = Modifier.height(20.dp))
        Box(modifier = Modifier.padding(24.dp)){

        }
    }
}