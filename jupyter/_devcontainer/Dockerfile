FROM ykunisato/dev-con-jupyter

ENV TZ=Asia/Tokyo
# rootユーザーに切り替え
USER root
COPY --chown=${NB_UID}:${NB_GID} requirements.txt /home/${NB_USER}/
COPY --chown=${NB_UID}:${NB_GID} pkgs.jl /home/${NB_USER}/

# デフォルトのjovyanに切り替えて、パッケージインストール
USER ${NB_USER}
RUN CI=true julia pkgs.jl
RUN pip install --no-cache-dir -r requirements.txt
RUN conda clean --all -y