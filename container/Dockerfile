FROM iodide/pyodide-env:0.16.1
USER root
WORKDIR /src

# checkout current Pyodide
RUN git clone https://github.com/iodide-project/pyodide .

# run entire make process once
ENV PYODIDE_PACKAGES=Pygments
RUN make

# copy new meta with path instead of pypi url
COPY meta.yaml packages/Pygments/meta.yaml

# add the entrypoint that updates from the github checkout
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh
