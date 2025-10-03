FROM mjsel/ngc_nemo:24.05.01

WORKDIR /lab/DeSTA2.5-Audio

COPY . .

RUN pip install -e .

RUN wget https://huggingface.co/datasets/kehanlu/example/resolve/main/LibriTTS_R.tar

RUN tar -xvf LibriTTS_R.tar


