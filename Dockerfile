# FROM mjsel/ngc_nemo:24.05.01-cuda12.5
FROM mjsel/ngc_nemo:24.05.01

WORKDIR /lab/DeSTA2.5-Audio

COPY . .

RUN pip install -e .

RUN wget -q https://huggingface.co/datasets/kehanlu/example/resolve/main/LibriTTS_R.tar \
    && tar -xvf LibriTTS_R.tar \
    && rm LibriTTS_R.tar

CMD ["bash", "examples/train/train_example.sh"]
