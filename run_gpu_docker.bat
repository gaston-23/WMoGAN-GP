
docker run --gpus all --pull always --rm -it --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 --volume="${PWD}:/home/rapids/notebooks/project" -p 8888:8888 -p 8787:8787 -p 8786:8786 rapidsai/notebooks:24.06-cuda12.2-py3.11


docker run --gpus all --rm -it   --shm-size=1g   --ulimit memlock=-1   --ulimit stack=67108864   --volume="${PWD}:/home/rapids/notebooks/project"   -p 8888:8888   -p 8787:8787   -p 8786:8786   --name=gpu_nb  sha256:5cb87da3b04ed81b6991cdaf52ad9be7ed6f71d84469ad026b8f35e3d0469eb6

