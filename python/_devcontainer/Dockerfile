FROM quay.io/jupyter/datascience-notebook

USER root
COPY --chown=${NB_UID}:${NB_GID} requirements.txt /home/${NB_USER}/

USER ${NB_USER}
RUN pip install --no-cache-dir -r requirements.txt
RUN conda clean --all -y