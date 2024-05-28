package inter

import "rah/db"

type Document struct {
	UserID      uint    `json:"user_id"`
	Data        []byte  `json:"data"`
	Description string  `json:"description"`
	Actor       string  `json:"actor"`
	User        db.User `json:"user"`
}

type DocumentInsert struct {
	Email       string `json:"email"`
	Description string `json:"description"`
	Actor       string `json:"actor"`
}

type Feedback struct {
	DocumentID uint   `json:"document_id"`
	UserID     uint   `json:"user_id"`
	Points     int    `json:"points"`
	Adjustment string `json:"adjustment"`
}

type User struct {
	Name     string `json:"name"`
	RG       string `json:"rg"`
	Email    string `json:"email" `
	Password string `json:"password"`
}
