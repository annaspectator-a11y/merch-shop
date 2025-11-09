-- +goose Up
-- +goose StatementBegin
create table if not exists wallets (
	id varchar not null primary key,
	user_id varchar not null,
	balance int not null check (balance >= 0),

	foreign key (user_id) references users (id)
);

create index if not exists idx_wallets_user_id on wallets (user_id);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop index if exists idx_wallets_user_id;
drop table if exists wallets;
-- +goose StatementEnd