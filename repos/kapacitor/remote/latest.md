## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:931c76d9c20090275b7995dcc7ce179a323725c0144802f118c6e94f7ea161ee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:bad9ece70555204cc45135be54f9e4dd529ef3aacf1405438eb357f407eb8c20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.7 MB (183711029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68bb5677a8053af520139d34e8f857c24949f97407543cba8118b27f01692230`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:16:03 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 18 Aug 2026 02:16:09 GMT
ENV KAPACITOR_VERSION=1.8.6
# Tue, 18 Aug 2026 02:16:09 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 18 Aug 2026 02:16:09 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 18 Aug 2026 02:16:09 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 18 Aug 2026 02:16:09 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 18 Aug 2026 02:16:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 02:16:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 02:16:09 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520d0981715a94b55c77c7aaf996d2db0f581789b70f30a4c66ad84c7f159cd1`  
		Last Modified: Tue, 18 Aug 2026 01:10:25 GMT  
		Size: 7.1 MB (7063751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae61300e4de7af0f51353026a610837b2da1e11c5cdd8fde644e3f6627f4e42d`  
		Last Modified: Tue, 18 Aug 2026 02:16:30 GMT  
		Size: 53.7 MB (53738824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e9e492d5c261965227b86ccac580bf881f51e4289d7e5f6b81adde5cc86818`  
		Last Modified: Tue, 18 Aug 2026 02:16:31 GMT  
		Size: 93.2 MB (93170988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc841462be76dfeed72b2a39f9bcaddcfa2a1ed6865ab24109f31266ec5d5ab1`  
		Last Modified: Tue, 18 Aug 2026 02:16:28 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8694365a854e64b1deb911a145d04741d14563062b91668a374b6f6965feea9e`  
		Last Modified: Tue, 18 Aug 2026 02:16:21 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:a78115e47fe22ba78320ad0691d2274fb88ef78f018adb488a1f40cc5e058772
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:999f26672ae11f03e3cad9b47a120e190f5107581238d44a437093cd64625107`

```dockerfile
```

-	Layers:
	-	`sha256:89c19f28dfd061305560e812c992ca7bb5b407111a01ce6d62e3a4fa3abd322e`  
		Last Modified: Tue, 18 Aug 2026 02:16:28 GMT  
		Size: 3.7 MB (3730001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c376bce4a435a210e0fe2a168e8b63eb15c52f9dcacaf7d4fd2efc9f02ed16e2`  
		Last Modified: Tue, 18 Aug 2026 02:16:28 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:93baa231d02ded7777962d1c94d70a01b16d4024657d83d034b25a039ab4c06a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.8 MB (174809797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2577ceea893e59466a2d4797c1b3b5c1b96f5e5c4f908c60dd957ef40b2e4329`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:16:06 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 18 Aug 2026 02:16:15 GMT
ENV KAPACITOR_VERSION=1.8.6
# Tue, 18 Aug 2026 02:16:15 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 18 Aug 2026 02:16:15 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 18 Aug 2026 02:16:15 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 18 Aug 2026 02:16:15 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 18 Aug 2026 02:16:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 02:16:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 02:16:15 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f8d50e8039b39564911842f938e784b3771e43ea8ec3c800e28e3a1a50113da`  
		Last Modified: Tue, 18 Aug 2026 01:10:24 GMT  
		Size: 7.0 MB (7017944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d628a3858ed43452a785ae7fc749d19fe3aff3054be5f6ea7edde2bc1b1b3879`  
		Last Modified: Tue, 18 Aug 2026 02:16:35 GMT  
		Size: 53.0 MB (53018636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b3af5d3ebff62425c122c014210850b13ca029ede6eea55c15d373084df4c0b`  
		Last Modified: Tue, 18 Aug 2026 02:16:36 GMT  
		Size: 87.2 MB (87152244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff35ac5ddb90082789b5859b7f5e61336882354f27029c0a1b286255006f77e3`  
		Last Modified: Tue, 18 Aug 2026 02:16:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:334ed2acc70891fef4a3ded2c052527137395b3b1aabe8eed0e678e5341720a3`  
		Last Modified: Tue, 18 Aug 2026 02:16:26 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:e0258c4c8937b5906f0875ba3ec9803c7416cfe7a0460122228cada1d30e25b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75ca42453f8f26cefff8bc7e8b085cd0d3cab4f5b768bc7dbe7d48883bb6895f`

```dockerfile
```

-	Layers:
	-	`sha256:1c393f0a899d07933e8086a8467de7339a2b82ceabcaf55666f27fa10920e8ee`  
		Last Modified: Tue, 18 Aug 2026 02:16:33 GMT  
		Size: 3.7 MB (3729475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc7884cb9c5da663122380f10a39c106a987d5825f04d306ffa9040febd29340`  
		Last Modified: Tue, 18 Aug 2026 02:16:33 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json
