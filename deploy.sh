#!/bin/bash
#deploying a django applications and handle the code for the errors
code_clone(){
    echo "cloning the django app"
    git clone https://github.com/LondheShubham153/django-notes-app.git
}
install_requirements() {
    echo " installing dependencies"
    sudo apt-get install docker.io nginx -y docker-compose


}
required_restarts(){
    sudo systemctl enable docker
    sudo systemctl enable nginx
    sudo chown $USER /var/run/docker.sock
    sudo systemctl restart docker
}
deploy(){
    docker build -t notes-app .
    docker run -d -p 8000:8000 notes-app:latest
    docker-compose up -d
}
if ! code_clone; then
echo "the code directory already exists"
cd django-notes-app
fi

if ! install_requirements; then
echo "installation failed"
exit 1
fi

if ! required_restarts; then
echo "system fault identified"
exit 1
fi

if ! deploy; then
echo "deloyment has failed , mailing the admin"
#sendmail 
exit 1
fi

echo "********** deployment done"


code_clone
install_requirements
required_restarts
deploy

