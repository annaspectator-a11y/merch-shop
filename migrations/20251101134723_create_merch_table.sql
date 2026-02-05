-- +goose Up
-- +goose StatementBegin
create table if not exists merch (
	id varchar not null primary key,
	name varchar not null,
	price int not null check (price >= 0)
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists merch;
-- +goose StatementEnd