agent:
    image: gliderlabs/registrator:v7
    container_name: registrator-__NODE_NAME__
    environment:
        - DOCKER_HOST=tcp://__NODE_IP__:2375
    command: -ip __NODE_IP__ consul://__NODE_IP__:__CONSUL_API_PORT__
