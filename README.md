# devcontainer template for CCP Lab

こちらは、計算論的臨床心理学研究室（専修大学　国里愛彦研究室）で用いるVSCodeのDev Containerテンプレートになります。R用、Python用、Julia用を用意しています（Python用とJulia用はもともとどちらもPythonとJuliaがインストールされているので、ちょっと改変すればどちらも使えます）。

## 使い方

まずDockerをインストールしたうえで、R、Python、Juliaフォルダ下の_devcontainerフォルダをご自身のVSCodeプロジェクト内にコピーして、「_devcontainer」を「.devcontainer」リネームください。あとは、VSCodeの左下の”><”という感じのボタンをクリックして、「Reopen in Container」をクリックすれば設定した環境が用意されます。R用とJulia用は初回はパッケージのインストールにかなり時間がかかりますが、コーヒーいれたりメールを返信したりしてお待ち下さい。二回目からはさっと環境が用意できます。
