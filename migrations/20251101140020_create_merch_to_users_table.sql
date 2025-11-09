-- +goose Up
-- +goose StatementBegin
create table if not exists merch_to_users (
	user_id varchar not null,
	merch_id varchar not null,

	foreign key (user_id) references users (id),
	foreign key (merch_id) references merch (id)
);

create index if not exists idx_merch_to_users_user_id on merch_to_users (user_id);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop index if exists idx_merch_to_users_user_id;
drop table if exists merch_to_users;
-- +goose StatementEnd