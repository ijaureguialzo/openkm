#!make

help: _header
	${info }
	@echo Opciones:
	@echo ------------------------------
	@echo start
	@echo stop
	@echo clean
	@echo ------------------------------

_urls: _header
	${info }
	@echo Sitios disponibles:
	@echo ----------------------------------
	@echo [OpenKM] http://localhost:8080
	@echo [phpMyAdmin] http://localhost:8090
	@echo ----------------------------------

_header:
	@echo ------
	@echo OpenKM
	@echo ------

_start_command:
	@docker compose up -d

start: _start_command _urls

stop:
	@docker compose stop

logs:
	@docker compose logs openkm

clean:
	@docker compose down -v --remove-orphans
