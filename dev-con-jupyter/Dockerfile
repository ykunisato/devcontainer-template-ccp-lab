FROM quay.io/jupyter/datascience-notebook
# rootユーザーに切り替え
USER root
COPY --chown=${NB_UID}:${NB_GID} requirements.txt /home/${NB_USER}/
# デフォルトのjovyanに切り替え
USER ${NB_USER}
# jovyanユーザーとしてPythonパッケージをインストール
RUN pip install --no-cache-dir -r requirements.txt
RUN conda clean --all -y