FROM rapidsai/notebooks:24.06-cuda12.2-py3.11

RUN sudo apt-get update

RUN sudo apt-get install build-essential python3-dev libxml2 libxml2-dev zlib1g-dev cmake

COPY ./requirements.txt ./requirements.txt

ENV SKLEARN_ALLOW_DEPRECATED_SKLEARN_PACKAGE_INSTALL=True

RUN conda update -n base -c conda-forge conda
RUN pip install -r ./requirements.txt