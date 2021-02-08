develop-up:
	uvicorn app.main:app --reload

test:
	pytest app/ -v

docker-up:
	docker build -t fastapi:v1 .
	docker run --rm --name apiserver -p 8000:8000 -e PORT=8000 fastapi:v1
