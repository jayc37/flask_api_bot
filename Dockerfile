FROM python:3.5.3
WORKDIR /code
COPY . .
ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 172.0.0.1
RUN apk add --upgrade --no-cache bash openssh curl ca-certificates openssl less htop g++ make wget rsync build-base libpng-dev freetype-dev libexecinfo-dev openblas-dev libgomp lapack-dev libgcc libquadmath musl  libgfortran lapack-dev &  pip install --no-cache-dir --upgrade pip
ENV PATH="swipl/swipl/bin:${PATH}"
RUN export PATH
# RUN python -m venv env
# RUN pip install --upgrade pip
# fail do thư viện scipy 
RUN pip install -r requirements.txt
CMD ["flask", "run"]
RUN echo "export PATH=$PATH"

