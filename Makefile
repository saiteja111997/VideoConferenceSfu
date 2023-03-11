# DEV WITH LOCAL TURN SETUP
build-dev:
	docker build -t videopion -f containers/images/Dockerfile . && docker build -t turn -f containers/images/Dockerfile.turn .

#DEV WITH THRID PARTY STUN/TURN SETUP
build-dev-ex:
	docker build -t videopion -f containers/images/Dockerfile .

# PROD
build-prod:
	docker build --platform linux/amd64 -t videopion -f containers/images/Dockerfile .

clean-dev:
	docker-compose -f containers/composes/dc.dev.yml down

run-dev:
	docker-compose -f containers/composes/dc.dev.yml up

logs-dev:
	docker-compose -f containers/composes/dc.dev.yml logs -f --tail 100

# PROD

stop-prod:
	docker-compose -f containers/composes/dc.prod.yml stop --timeout 120

clean-prod:
	docker-compose -f containers/composes/dc.prod.yml down --timeout 120

run-prod:
	docker-compose -f containers/composes/dc.prod.yml up -d --timeout 120

logs-prod:
	docker-compose -f containers/composes/dc.prod.yml logs -f --tail 100
