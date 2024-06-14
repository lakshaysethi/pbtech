up:
	make down && docker compose up -d --build && make logs
logs:
	docker compose logs -f
down:
	docker compose down -t1
