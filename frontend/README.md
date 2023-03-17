# Gradio Frontend
Upload in your images to see the predictions made by the model in a web interface.

### Local development
To use this code for local development, install the requirements using (make sure Python version is 3.8):
```bash
cd frontend
pip install -r requirements.txt
```
Now, you're setup!

#### Usage
To run the web interface, run: 
```
# run backend first
docker run -p 8000:80 --name cls-serve classification_model_serving
# run frontend locally
python main.py
```

Upload your own images or simply use the examples.

### Dockerized frontend
To containerize the frontend, we create a docker image and run 
and the container, using:
```
# build
docker build -t client .
# run container
docker run -p 7860:7860 --add-host host.docker.internal:host-gateway --name client client
```
Now, the app is live in `http://0.0.0.0:7860`. Drop your images to make a prediction, or simply use the examples!

#### Push to and test image from Docker Hub
```
# tag
docker tag server mahimanzum/classification_client:v1
# push
docker push mahimanzum/classification_client:v1
# run frontend from hub
docker run -p 7860:7860 --add-host host.docker.internal:host-gateway --name server mahimanzum/classification_client:v1
```

Again, the app should be live at `http://0.0.0.0:7860` for you to play with!