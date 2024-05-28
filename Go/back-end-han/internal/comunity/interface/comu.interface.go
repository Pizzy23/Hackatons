package inter

type User struct {
	Name     string `json:"name"`
	RG       string `json:"rg"`
	Email    string `json:"email" `
	Password string `json:"password"`
}
