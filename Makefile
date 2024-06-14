up:
	docker compose up -d && make logs
logs:
	docker compose logs -f