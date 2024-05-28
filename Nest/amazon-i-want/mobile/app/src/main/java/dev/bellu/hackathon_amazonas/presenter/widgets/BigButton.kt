package dev.bellu.hackathon_amazonas.presenter.widgets

import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import dev.bellu.hackathon_amazonas.R

@Composable
fun BigButton(title: String, color: Color, navController: NavController, destiny: String){
    Box(
        modifier = Modifier
            .fillMaxWidth()
            .height(110.dp)
            .background(color = color)
            .clickable(onClick = {
                navController.navigate(destiny)
            })
    ){
        Row (
            horizontalArrangement = Arrangement.SpaceAround,
            verticalAlignment = Alignment.CenterVertically
        ){
            Image(
                painter = painterResource(R.drawable.mapicon),
                contentDescription = null
            )
            Spacer(modifier = Modifier.width(10.dp))
            Text(title)
        }
    }
}