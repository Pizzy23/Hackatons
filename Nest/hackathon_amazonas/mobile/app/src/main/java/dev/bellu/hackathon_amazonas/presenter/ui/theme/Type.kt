package dev.bellu.hackathon_amazonas.presenter.ui.theme

import androidx.compose.material3.Typography
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.sp

// Set of Material typography styles to start with
val Typography = Typography(

    //Black
    titleMedium = TextStyle(
        fontSize = 16.sp,
        fontWeight = FontWeight(600),
        color = onTertiary,
    ),
    bodySmall = TextStyle(
        fontSize = 14.sp,
        fontWeight = FontWeight(400),
        color = onPrimary,
        letterSpacing = 0.3.sp,
    ),
    bodyMedium = TextStyle(
        fontSize = 22.sp,
        lineHeight = 32.sp,
        fontWeight = FontWeight(700),
        color = onPrimary,
    ),

    // Gray
    displaySmall = TextStyle(
        fontSize = 12.sp,
        fontWeight = FontWeight(400),
        color = tertiary,
        letterSpacing = 0.3.sp,
    )
)