# поднимает окружение из compose.yaml
dev_local_env: 
	docker compose -f compose.yaml up -d

# передаем строку подключения к постгресс
dev_db:
	psql "postgres://admin:admin@localhost:6432/postgres?sslmode=disable"

migrate_up:
	goose -dir migrations postgres "postgres://admin:admin@localhost:6432/postgres?sslmode=disable" up

migrate_down:
	goose -dir migrations postgres "postgres://admin:admin@localhost:6432/postgres?sslmode=disable" reset

generate_avito_client:
	openapi-generator  generate -g go-server -i specs/avito.json  --additional-properties=sourceFolder=generated