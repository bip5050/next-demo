.PHONY: install
install:
	-cp -n .env.sample .env
	npm install --legacy-peer-deps

.PHONY: start
start:
	npm run dev

.PHONY: test
test:
	make lint
	npm test

.PHONY: test/update
test/update:
	npm test -- -u

.PHONY: test/pretty
test/pretty:
	npm run pretty/test

.PHONY: test/ci
test/ci:
	make test/pretty
	make test

.PHONY: lint
lint:
	npm run lint

.PHONY: pretty
pretty:
	npm run pretty

.PHONY: deploy
deploy:
	serverless
