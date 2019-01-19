# apt-mirror-one-shot-docker
apt-mirrorのdockerコンテナ

起動するとapt-mirrorを1回だけ起動する

## Description
Docker上でapt-mirrorを実行するコンテナ
コンテナを起動するとapt-mirrorを自動実行し、実行終了と共にコンテナを終了します。 

ディレクトリ構成
<pre>
.
├── Dockerfile.debian-slim  # debianベースのDockerfile
├── Dockerfile.ubuntu       # ubuntuベースのDockerfile
├── README.md
├── mirror.list.d           # apt-mirror設定ファイルのテンプレート群
│   ├── raspbian.list       # Raspberry piリポジトリミラー用
│   └── ubuntu_xenial_amd64.list  # ubuntu 16.04 amd64リポジトリミラー用
└── run_apt-mirror.sh       # コンテナ起動時に実行されるスクリプト
</pre>

## Requirement
<pre>
#依存ソフトウェア
docker  

#依存コンテナ
debian:9-slim # Dockerfile.debian-slim
ubuntu:18.04 # Dockerfile.ubuntu
</pre>

## Usage
<pre>
#コンテナのプル
$ docker pull mshrtsr/apt-mirror-one-shot:latest

#(ビルド)
$ docker build . yourcontainername:latest --file=./Dockerfile.debian-slim

#コンテナ起動
$ docker run -it mshrtsr/apt-mirror-one-shot:latest

#Raspberry Pi向けにミラーリポジトリを作成する場合
$ docker run -it -v /your_configfile_dir/raspbian.list:/etc/apt/mirror.list mshrtsr/apt-mirror-one-shot
</pre>
