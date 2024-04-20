FROM jupyter/datascience-notebook

COPY books.csv /home/jovyan/

COPY cloud.ipynb /home/jovyan/

WORKDIR /home/jovyan/



EXPOSE 8888

CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]