package util

import (
	"golang.org/x/crypto/bcrypt"
)

func HashPassword(password string) ([]byte, error) {
	hashedPassword, err := bcrypt.GenerateFromPassword([]byte(password), bcrypt.DefaultCost)
	if err != nil {
		return nil, err
	}
	return hashedPassword, nil
}
func CheckPassword(password string, hashedPassword string) error {
	hashedBytes := []byte(hashedPassword)
	return bcrypt.CompareHashAndPassword(hashedBytes, []byte(password))
}
