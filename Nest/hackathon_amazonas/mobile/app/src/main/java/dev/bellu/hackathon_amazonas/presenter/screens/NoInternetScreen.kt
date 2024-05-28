package dev.bellu.hackathon_amazonas.presenter.screens

import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.Search
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import dev.bellu.hackathon_amazonas.presenter.ui.theme.primary
import dev.bellu.hackathon_amazonas.R
import dev.bellu.hackathon_amazonas.presenter.ui.theme.Typography


@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun NoInternetScreen(navController: NavController){

    val scrollState = rememberScrollState()
    var text by remember { mutableStateOf("") }

    Column(modifier = Modifier.verticalScroll(scrollState)) {
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
                Text("Mapeamento sem Internet", style = Typography.titleMedium)
            }
        }
        Box(
            modifier = Modifier.fillMaxSize()
        ) {
            Image(painter = painterResource(R.drawable.mapscreen), contentDescription = null)
            OutlinedTextField(
                value = text,
                onValueChange = { text = it },
                label = { Text("Cidades") },
                placeholder = { Text("Procure pela cidade desejada") },
                modifier = Modifier
                    .padding(16.dp)
                    .fillMaxWidth(),
                shape = RoundedCornerShape(100),
                leadingIcon = {
                    Icon(Icons.Default.Search, contentDescription = "Icon for Search",)
                }
            )
        }
        Box(modifier = Modifier.fillMaxWidth()
            .height(200.dp)
        ){
            Column(modifier = Modifier.padding(24.dp)) {
                Text("Manaus, SP", style = Typography.bodyMedium)
                Spacer(modifier = Modifier.height(20.dp))
                Text("Longitude and latitude", style = Typography.displaySmall)
                Text(" 52.498611, 13.406889 ", style = Typography.bodySmall)
                Spacer(modifier = Modifier.height(20.dp))
                Text("Media que não utiliza  uso da Internet pela cidade", style = Typography.displaySmall)
                Text("35%", style = Typography.bodySmall)
                Spacer(modifier = Modifier.height(20.dp))
            }
        }
    }

}