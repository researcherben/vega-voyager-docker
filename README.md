# vega-voyager-docker
Dockerfiles for [vega/voyager](https://github.com/vega/voyager)


# use

## compiles image but no page is served

    git clone https://github.com/vega/voyager.git
    docker build -f Dockerfile.node_old -t voyager_node .


## fails build process

    docker build -f Dockerfile.debian -t voyager_deb .

    git clone https://github.com/vega/voyager.git
    docker build -f Dockerfile.node_newest -t voyager_node .

    docker build -f Dockerfile.alpine -t voyager_alp .
