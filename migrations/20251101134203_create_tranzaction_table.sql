-- +goose Up
-- +goose StatementBegin
create table if not exists transactions (
	id varchar not null primary key,
	from_wallet_id varchar not null,
	to_wallet_id varchar not null,
	amount int not null check (amount > 0),

	foreign key (from_wallet_id) references wallets (id),
	foreign key (to_wallet_id) references wallets (id)
);

create index if not exists idx_transactions_from_wallet_id on transactions (from_wallet_id);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop index if exists idx_transactions_from_wallet_id;
drop table if exists transactions;
-- +goose StatementEnd