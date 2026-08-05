## `influxdb:latest`

```console
$ docker pull influxdb@sha256:270145207873eb426e15a211063532fc6f966f4ffb6edf4114ffac83ac4696eb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:c160da0e68f0b71e09062960b581b04c27fafadea2f34c591900d81ac6277810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110798728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c527fb7ae1cf7f4903f8db80295cbd0412841a71695c9f3983096c7d8b1e4dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:11 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:46:12 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 05 Aug 2026 00:46:12 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 05 Aug 2026 00:46:15 GMT
ENV INFLUXDB_VERSION=2.9.1
# Wed, 05 Aug 2026 00:46:15 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 05 Aug 2026 00:46:15 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Wed, 05 Aug 2026 00:46:17 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 05 Aug 2026 00:46:17 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:46:17 GMT
CMD ["influxd"]
# Wed, 05 Aug 2026 00:46:17 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 00:46:17 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 05 Aug 2026 00:46:17 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 05 Aug 2026 00:46:17 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 05 Aug 2026 00:46:17 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:306162022267f991ddb47b1556edcb107bfeb728b90c90a969b855417ec30ea3`  
		Last Modified: Wed, 05 Aug 2026 00:46:30 GMT  
		Size: 9.8 MB (9800760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345be78b99ab67caf7dc3072658eb7532b9d7968a2d24d849872e5d4c0e4d5df`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 3.8 MB (3822787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c1053fc78d03fc05c8ca18fee113f8a8def9e5431eaa45a401e3b586d3b3db`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb8e1cf607f226abea74d6182ef04b4a2b84b84f9a1c183eeaf48f99ed3eb5f`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 56.5 MB (56510585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd06a8bef39676fe9d8f93deea4843107dcb2bb562f25f780da7d5b9d26453d`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 12.4 MB (12421833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3139e79a3d86ba9a42a4d94c3c17a055484be959464636030fe91b3febc1814`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e786ae76bbc8acdd3b7bb906b52b8edf527c0d3cb905220e5a5eecf89200053`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0b4c78ae6e3d8a070ed35d1dc6f2637a9bfa697cde0b21e473732a7ee1e2f1`  
		Last Modified: Wed, 05 Aug 2026 00:46:32 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:latest` - unknown; unknown

```console
$ docker pull influxdb@sha256:1990ed9ab92551e190ce94fe0ca70e5b4d91efbe1ad1741be45c3c1059b9bcf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2988096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec597e078c219bbee13503a268d674291f0a8784eeacb501d0021ed65e02777`

```dockerfile
```

-	Layers:
	-	`sha256:fd5fd42aa4efa1ed706aa5d7c7f4651846a976bdd643dc5db30b252c0fd64bad`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 3.0 MB (2959483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:055d1cef13c1da8d72d968accb34158fb082676017c33d683c48b5b0a91a6397`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 28.6 KB (28613 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:cecd0b86fead1a635d4fccbb8517a1ad8f00d3b62724da52270e59d6bd6c85ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106332791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a09c9d1777080e807ef479f5769a13f85296ef8ad6916883c7cdf60b2b88f51e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:48:43 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:44 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 05 Aug 2026 00:48:44 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 05 Aug 2026 00:48:47 GMT
ENV INFLUXDB_VERSION=2.9.1
# Wed, 05 Aug 2026 00:48:47 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 05 Aug 2026 00:48:47 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Wed, 05 Aug 2026 00:48:49 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 05 Aug 2026 00:48:49 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:48:49 GMT
CMD ["influxd"]
# Wed, 05 Aug 2026 00:48:49 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 00:48:49 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 05 Aug 2026 00:48:49 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 05 Aug 2026 00:48:49 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 05 Aug 2026 00:48:49 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c221d2eae139c19c75509b8efdd669a2f3d5b9bc581ab09facf08d8ce3ce529`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 9.6 MB (9629144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7d4b1b3b5811e3624b99d5b5d4b3bf1c27dfbd5572b79e2ed33e086b97421a`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 3.5 MB (3459176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dc954ff1a3efc21a488deaaa8c28b2cb215430801968b8d749141452f1aa0d0`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 3.2 KB (3232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f86acf488c45989ab5cbdf02d0af0d4b3114bec7048808a3b3b234bc4524849`  
		Last Modified: Wed, 05 Aug 2026 00:49:02 GMT  
		Size: 53.6 MB (53636819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c29e3cbe57b3443eae7016539dbe15f8dbc14bcaa43b57e727cfdc8a671f605`  
		Last Modified: Wed, 05 Aug 2026 00:49:02 GMT  
		Size: 11.5 MB (11480277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b973998140706e9878b13162255872c7f9fc20276bf158b45e36cde2ff6bbd`  
		Last Modified: Wed, 05 Aug 2026 00:49:02 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d73be13e9ee5e93f88c5dec6408c2416d944881cb90fbcbe437f69a1f478062`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70573cff4e882f1a69bd52b30737ec3144b842e8a5ed7918f371cd48b4ea3234`  
		Last Modified: Wed, 05 Aug 2026 00:49:04 GMT  
		Size: 6.5 KB (6499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:latest` - unknown; unknown

```console
$ docker pull influxdb@sha256:da6388653411bdcca3781956dba43024c31b1071a156afa5747df3a66c27e65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2987753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813975feafb4614eeb2d28aac0e0b3318729bf48dccaaaec53262f582f55d00c`

```dockerfile
```

-	Layers:
	-	`sha256:6f937034c0c918de17ae01ad4980e03db91d7e8f84d2df35797d671c6798b8a7`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 3.0 MB (2958961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:797a07368a2c070b745acdd75baaa75dccec89cf87a2efaa1200876a15aae573`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 28.8 KB (28792 bytes)  
		MIME: application/vnd.in-toto+json
