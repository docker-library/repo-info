## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:2abf1343ee3161b4fcd9c5fa624132b2510a1636cf693d9558d6f28d05eb536f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:6d4a0636ffefc127488f7e3456ed0d3ff09583bd445b077316a105f0a6fe7217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198549168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9572379ccd9879f26eb6cb7d8a49eb7511d3fe53e2b1afae23c5e16fee9854c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:24:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 12 Nov 2026 00:25:00 GMT
ENV KAPACITOR_VERSION=1.8.9
# Thu, 12 Nov 2026 00:25:00 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 12 Nov 2026 00:25:00 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 12 Nov 2026 00:25:00 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 12 Nov 2026 00:25:00 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 12 Nov 2026 00:25:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 12 Nov 2026 00:25:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 00:25:00 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a9edce514dd70a2d9de1ccd1bac80bb9ed3ffa0ae7360e7651e45586e3009bb`  
		Last Modified: Wed, 11 Nov 2026 23:08:20 GMT  
		Size: 7.1 MB (7066843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bcec94fee7afd9c6d71d31d2214818c36c011cb27d67910e1bb1a4e25a96fd2`  
		Last Modified: Thu, 12 Nov 2026 00:25:23 GMT  
		Size: 55.6 MB (55602554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e6380724561aa7df878f6629b942487cdb45507d030ed9ff4245aba4c56a768`  
		Last Modified: Thu, 12 Nov 2026 00:25:24 GMT  
		Size: 105.8 MB (105809718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c0f6aedfab1c31ea2caf9fd5a7a87a92734770ea3763ab8b0d75f992819dca9`  
		Last Modified: Thu, 12 Nov 2026 00:25:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c0f6c24772d98a2859b78eac0e9a350802eedd188e01a3982164f9b16c728e5`  
		Last Modified: Thu, 12 Nov 2026 00:25:20 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:7a358ef2f632db9c8a23e9855a3d573d3db979d835d18562f10c54f4af4aab34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da58b5fc731444124062910337e69624437a6d1f2950e5b699d62bccf2ed9a9d`

```dockerfile
```

-	Layers:
	-	`sha256:8059262364460fa3cb30cd5bc1ee9c3794b1b481ce64c3db92d76dd05c232152`  
		Last Modified: Thu, 12 Nov 2026 00:25:21 GMT  
		Size: 3.7 MB (3738873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27584d2c73166a940abfcb1677f667c96ffd9e73f06825fd792ecab85f9251bb`  
		Last Modified: Thu, 12 Nov 2026 00:25:20 GMT  
		Size: 15.0 KB (15023 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:f9042cfba255331e9b698ff11d356e038af096853bdf02259d8823791247965b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.5 MB (188464753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b59506b7a8c0547cd86fe7e213770dfcbc8a78414e3021d1565b8de9574e0142`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:13:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:39:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 12 Nov 2026 00:39:59 GMT
ENV KAPACITOR_VERSION=1.8.9
# Thu, 12 Nov 2026 00:39:59 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 12 Nov 2026 00:39:59 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 12 Nov 2026 00:39:59 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 12 Nov 2026 00:39:59 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 12 Nov 2026 00:39:59 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 12 Nov 2026 00:39:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 00:39:59 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c042b2a99c1c6c9547f81996147224b49c69bc7da0cbb6948db3cab514e19a`  
		Last Modified: Wed, 11 Nov 2026 23:13:27 GMT  
		Size: 7.0 MB (7021923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9171aa587a2220c6046137f172a04ab3d4160c1387f266eb9e0a6bfbfbe572`  
		Last Modified: Thu, 12 Nov 2026 00:40:21 GMT  
		Size: 55.1 MB (55050655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59276c2e2dc9d18b199cf799ee69116d6cdf3ff4ad57d5e1e10541efba4b4d80`  
		Last Modified: Thu, 12 Nov 2026 00:40:22 GMT  
		Size: 98.4 MB (98390242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d2e1f950ad641aff6e39e8ca794406036ce3da5f7f1a19b79c2eda63daf142`  
		Last Modified: Thu, 12 Nov 2026 00:40:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd2bf271585ddc86456831dbb631857e36e6806da4b53ad3c97d4d5c95f2826`  
		Last Modified: Thu, 12 Nov 2026 00:40:18 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:f296dc534cda956fc9f20cbdb97881a35fdf676e6bd8c8679d0640d02a74d171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3fb1c30a6f6f4fbb26ee2f44f544ba25e4df46c42470856267e3b7fca265d0`

```dockerfile
```

-	Layers:
	-	`sha256:7d96ce8277c4601239c4597a86e8ec3ed78a0eb3acccd550768e30d5b6d292fc`  
		Last Modified: Thu, 12 Nov 2026 00:40:19 GMT  
		Size: 3.7 MB (3738093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64f5dae6974419d5809907fd4adaf1bf955189e17792da8f6c3babef3fd2e628`  
		Last Modified: Thu, 12 Nov 2026 00:40:19 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json
