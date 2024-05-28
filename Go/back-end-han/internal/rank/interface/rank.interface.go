package inter

type Point struct {
	UserID uint `json:"user_id"`
	Points int  `json:"points"`
}

type Award struct {
	RewardName     string `json:"reward_name"`
	PointsRequired int    `json:"points_required"`
}

type User struct {
	Name     string `json:"name"`
	RG       string `json:"rg"`
	Email    string `json:"email" `
	Password string `json:"password"`
}
