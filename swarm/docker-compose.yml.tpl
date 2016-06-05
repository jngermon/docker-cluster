manager:
    image: swarm:1.2.3
    container_name: swarm-__NODE_NAME__
    ports:
        - "__SWARM_PORT__:2375"
    command: manage consul://__CONSUL_MASTER_IP__:__CONSUL_API_PORT__/swarm

agent:
    image: swarm:1.2.3
    container_name: swarm-agent-__NODE_NAME__
    ports:
        - "__SWARM_PORT__:2375"
    command: join --addr=__NODE_IP__:__SWARM_PORT__ consul://__CONSUL_MASTER_IP__:__CONSUL_API_PORT__/swarm
