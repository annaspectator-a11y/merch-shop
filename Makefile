dev_local_env:
	docker compose -f compose.yaml up -d

dev_db:
	psql "postgres://admin:admin@localhost:6432/postgres?sslmode=disable"

migrate_up:
	goose -dir migrations postgres "postgres://admin:admin@localhost:6432/postgres?sslmode=disable" up

migrate_down:
	goose -dir migrations postgres "postgres://admin:admin@localhost:6432/postgres?sslmode=disable" reset