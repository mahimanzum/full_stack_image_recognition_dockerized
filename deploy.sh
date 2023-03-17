# run backend
cd backend/
docker build -t server .
docker run -d -p 8000:80 server 
sleep 10
cd ../frontend/
docker build -t client .
docker run -p 7860:7860 client

# wait 10 seconds for the model to download


# run frontend
#docker run -p 7860:7860 --add-host host.docker.internal:host-gateway --name frnt-serve hasibzunair/frontend_serving