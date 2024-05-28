import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import dev.bellu.hackathon_amazonas.R
import dev.bellu.hackathon_amazonas.presenter.ui.theme.*
import dev.bellu.hackathon_amazonas.presenter.widgets.BigButton

@Composable
fun HomeScreen(navController: NavController){
    HackathonamazonasTheme {
        Column {
            Box(modifier = Modifier.fillMaxWidth()
                .height(80.dp)
                .background(color = primary)
            ){
                Row(
                    modifier = Modifier
                        .padding(12.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.Center) {
                    Image(painter = painterResource(R.drawable.profile), contentDescription = null)
                    Spacer(modifier = Modifier.width(20.dp))
                    Text("Hello, Laura", style = Typography.titleMedium)
                }
            }
            BigButton(
                title = "Mapeamento com Internet",
                color = secondary,
                navController = navController,
                destiny = "withinternet"
            )
            BigButton(
                title = "Mapeamento sem Internet",
                color = onSecondary,
                navController = navController,
                destiny = "nointernet"
            )
        }
    }
}