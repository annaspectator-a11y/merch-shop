-- +goose Up
-- +goose StatementBegin
insert into merch (id, name, price) values
    ('1', 't-shirt', 80),
    ('2', 'cup',	20),
    ('3', 'book',	50),
    ('4', 'pen',	10),
    ('5', 'powerbank',	200),
    ('6', 'hoody',	300),
    ('7', 'umbrella',	200),
    ('8', 'socks',	10),
    ('9', 'wallet',	50),
    ('10', 'pink-hoody',	500);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
delete from merch;
-- +goose StatementEnd
