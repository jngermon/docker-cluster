server:
    image: gliderlabs/consul-server:0.6
    container_name: consul
    volumes:
        - ./config/agent.json:/config/agent.json
        - ./config/server.json:/config/server.json
        - ./config/local.json:/config/local.json
    environment:
        - DOCKER_HOST=tcp://__NODE_IP__:2375
    links:
        - health-check
    ports:
        - "8300:8300"
        - "8301:8301"
        - "8301:8301/udp"
        - "8302:8302"
        - "8302:8302/udp"
        - "8400:8400"
        - "__CONSUL_API_PORT__:8500"
        - "8600:8600/udp"
        
agent:
    image: gliderlabs/consul-agent:0.6
    container_name: consul-__NODE_NAME__
    volumes:
        - ./config/agent.json:/config/agent.json
        - ./config/local.json:/config/local.json
    environment:
        - DOCKER_HOST=tcp://__NODE_IP__:2375        
    links:
        - health-check
    ports:
        - "8300:8300"
        - "8301:8301"
        - "8301:8301/udp"
        - "8302:8302"
        - "8302:8302/udp"
        - "8400:8400"
        - "__CONSUL_API_PORT__:8500"
        - "8600:8600/udp"

health-check:
    image: meuhmeuhconcept/docker-health-checker:v1.1
    container_name: hc
