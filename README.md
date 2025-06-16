# devcontainer template for CCP Lab

こちらは、計算論的臨床心理学研究室（専修大学　国里愛彦研究室）で用いるVSCodeのDev Containerテンプレートになります。R用とJupyter notebook用を用意しています。



## R用devcontainerの使い方

1. DockerとVSCodeをインストールしてください。
   - Dockerは、[こちら](https://docs.docker.com/get-docker/)からインストールできます。
   - VSCodeは、[こちら](https://code.visualstudio.com/)からインストールできます。
2. このリポジトリをZipでダウンロードください。
3. ダウンロードしたZip内の「R」フォルダの中にある"_devcontainer"フォルダをご自身のVSCodeプロジェクト（フォルダ）の直下にコピーしてください。
4. VSCodeを開き、プロジェクトのフォルダを開いて「_devcontainer」を「.devcontainer」リネームください。
5. VSCodeの左下の「><」という感じのアイコンをクリックすると上のプルダウンメニューが出てきますので、「Reopen in Container」をクリックします。
6. しばらくコンテナイメージのダウンロード＆ビルドとcmdstanやtynytextのインストールが行われます。これには時間がかかる場合がありますので、しばらくお待ちください。終わると、"Done. Press any key to close the terminal"と出てきますので、Enterキーを押してください。
7. これでRの開発環境が整いましたが、一度VSCodeを再起動して、右下に「Reopen in Container」が出てくるのでそれをクリックします（出てこない場合は左下の「><」をクリック）。
8. これ以降は、同じPCであれば、すぐに使えます。

## Jupyter用devcontainerの使い方
1. DockerとVSCodeをインストールしてください。
   - Dockerは、[こちら](https://docs.docker.com/get-docker/)からインストールできます。
   - VSCodeは、[こちら](https://code.visualstudio.com/)からインストールできます。
2. このリポジトリをZipでダウンロードください。
3. ダウンロードしたZip内の「jupyter」フォルダの中にある"_devcontainer"フォルダをご自身のVSCodeプロジェクト（フォルダ）の直下にコピーしてください。
4. VSCodeを開き、プロジェクトのフォルダを開いて「_devcontainer」を「.devcontainer」リネームください。
5. VSCodeの左下の「><」という感じのアイコンをクリックすると上のプルダウンメニューが出てきますので、「Reopen in Container」をクリックします。
6. しばらくコンテナイメージのダウンロード＆ビルドが行われます。これには時間がかかる場合がありますので、しばらくお待ちください
7. これでJupyterの開発環境が整いました。これ以降は、同じPCであれば、すぐに使えます。