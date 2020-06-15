# vega-voyager-docker
Dockerfiles for [vega/voyager](https://github.com/vega/voyager)


# use
    
    docker build -f Dockerfile.debian -t voyager_deb .

    git clone https://github.com/vega/voyager.git
    docker build -f Dockerfile.node -t voyager_node .

    docker build -f Dockerfile.alpine -t voyager_alp .
