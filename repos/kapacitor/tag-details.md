<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.7`](#kapacitor17)
-	[`kapacitor:1.7-alpine`](#kapacitor17-alpine)
-	[`kapacitor:1.7.7`](#kapacitor177)
-	[`kapacitor:1.7.7-alpine`](#kapacitor177-alpine)
-	[`kapacitor:1.8`](#kapacitor18)
-	[`kapacitor:1.8-alpine`](#kapacitor18-alpine)
-	[`kapacitor:1.8.9`](#kapacitor189)
-	[`kapacitor:1.8.9-alpine`](#kapacitor189-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)
-	[`kapacitor:latest`](#kapacitorlatest)

## `kapacitor:1.7`

```console
$ docker pull kapacitor@sha256:0ecb188e51740555cf44295122d63df9b6bb9cc38878a595138722473cc65781
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:7a147188b8a7f77b1ba776ec6e2dd74bbb6e39406aa8a9237b70d2eedbd30dda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164969492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b85feec2d34beb32f1ef66e7f747f3726403b64409327acb06e65b09495d592d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:09:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:22:29 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 20 Nov 2026 04:22:35 GMT
ENV KAPACITOR_VERSION=1.7.7
# Fri, 20 Nov 2026 04:22:35 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 20 Nov 2026 04:22:35 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 20 Nov 2026 04:22:35 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 20 Nov 2026 04:22:35 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 20 Nov 2026 04:22:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 04:22:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 04:22:35 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba289bf7917cc3690a1d142485d35c2c92979a691772ec44a0a9ea481ea0619a`  
		Last Modified: Fri, 20 Nov 2026 03:10:02 GMT  
		Size: 7.1 MB (7067016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942239e2f4982c120d14bb7d018a608ce85d45ab32244a88041b0379b74a7438`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 55.8 MB (55780397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c480ad3e39c6f02e62c477c668ee11e4861a97f48a063acb92d82d76a4d3fd7`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 72.1 MB (72051743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6e382c0eb088af64e8080cbd7ff6c29ec0e328a70a0d5393c560e1e4e3b4791`  
		Last Modified: Fri, 20 Nov 2026 04:22:48 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb43ecf0dfd83b3eb92b991b79a3353d9c083557af875772e0c8df0039b0ad87`  
		Last Modified: Fri, 20 Nov 2026 04:22:48 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:2fa058f36cf294fcbc69bcc52cd37fa0f794bef7805cc88644857b370bd14c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3715176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec23b449aa2feb42ca138729a542d7ee88f25c025a0bc678030aec7b7a6a83b`

```dockerfile
```

-	Layers:
	-	`sha256:1b8c1c8d09e462768ca777bffc627611faab36d0d88a18249d580712d557421a`  
		Last Modified: Fri, 20 Nov 2026 04:22:48 GMT  
		Size: 3.7 MB (3700460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15533a26877307963f6d86c82c440dcc73eb700f845e7253033243ecf31d4e19`  
		Last Modified: Fri, 20 Nov 2026 04:22:48 GMT  
		Size: 14.7 KB (14716 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:cd93280e6523b914fde8eff5eaf6fc3a46386be3ac5c4be40c1fc9a516e59829
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.1 MB (158095784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce67733d20a76cbbf8566269331de39a3683e13e3da70785c39379b8c9f66413`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:10:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:23:11 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 20 Nov 2026 04:23:15 GMT
ENV KAPACITOR_VERSION=1.7.7
# Fri, 20 Nov 2026 04:23:15 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 20 Nov 2026 04:23:15 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 20 Nov 2026 04:23:15 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 20 Nov 2026 04:23:15 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 20 Nov 2026 04:23:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 04:23:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 04:23:16 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4aad13eb428c7c52aa688d043cc7b27ecee97beae97d644adaaceafc6294c4`  
		Last Modified: Fri, 20 Nov 2026 03:10:24 GMT  
		Size: 7.0 MB (7021928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:904b69a4f7c59b3855d72080912c107cefb1435be8d87d6de5bb12a3491f87fd`  
		Last Modified: Fri, 20 Nov 2026 04:23:31 GMT  
		Size: 55.3 MB (55257607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8c01385617ea45b784c48c54b77e2ee6c28ebbd3aed0497ff2c247b92bff69`  
		Last Modified: Fri, 20 Nov 2026 04:23:31 GMT  
		Size: 67.8 MB (67814327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb9046233afdb324cb570020a69701ee968a47ece1196f93a6621fe13e344f17`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbdc38e0b09aeff90b014a0cc6c5ae2dacdb0103a5bd784769f874ce6b499d7e`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:e04467ae5e92111cf508dbe4cc55ccd7be78e598504d773f4e4d333fe3eb95eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c3c82104fa2e31d618e4bb155499872f28370743fd4cf824c7bc85dd46fe4c`

```dockerfile
```

-	Layers:
	-	`sha256:09da970e30a53d363844a66975208f57bc76226a62f38ca05713220f6d8067c3`  
		Last Modified: Fri, 20 Nov 2026 04:23:29 GMT  
		Size: 3.7 MB (3699922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d886cf0812f6c1c2f7a079450a3e80b87c1a9c42070da25f6f1ef6c6bdf99a3a`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 14.8 KB (14811 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.7-alpine`

```console
$ docker pull kapacitor@sha256:b650005c82f715657f691c7e4242264d6ab52b0f0c4796cbf2a134793f1ec2fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.7-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:de5f4a35faf77825b827229a6ac101895d6ac07698eeaeb79e1d0d36dcd22e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79135270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90ea590e909ef8eeb8d6d6beee631f807f3c8df8632f09605596541cb9f87b56`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:24:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:24:37 GMT
RUN apk add --no-cache ca-certificates su-exec &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:24:43 GMT
ENV KAPACITOR_VERSION=1.7.7
# Thu, 05 Nov 2026 19:24:43 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Thu, 05 Nov 2026 19:24:44 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 05 Nov 2026 19:24:44 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 05 Nov 2026 19:24:44 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 05 Nov 2026 19:24:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:24:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:44 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29030ee4eb3051347643585d429c302df76223ba9356ed0acdda84b3ef80c57`  
		Last Modified: Thu, 05 Nov 2026 19:24:53 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b192bf3d200335439fff3547791aff6d76694d6c4edfa64e415b97fc78d6cb5`  
		Last Modified: Thu, 05 Nov 2026 19:24:53 GMT  
		Size: 246.3 KB (246292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03840ebf3d658a9aba6dffbfa21d674d3d078de33ec3a1f249b420b519b13813`  
		Last Modified: Thu, 05 Nov 2026 19:24:56 GMT  
		Size: 75.0 MB (75034526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53b98d4f5c95c091c54d94db87d7101af87572ebf65b9a9c6790d59a4bc87e1d`  
		Last Modified: Thu, 05 Nov 2026 19:24:53 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4d7537f8985a466517fcf1bf1abbdadf61f4c2713be6aebd6ff90ace2ccbd9`  
		Last Modified: Thu, 05 Nov 2026 19:24:55 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:96e0dc8c80c209857de1c63820cbf845fd3e215bbef18e136c79f6bf0d596d56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.7 KB (368729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd8ad8b3441aecfee156024057a3837905df27b2f6a7ea5e847e03d66548ff6`

```dockerfile
```

-	Layers:
	-	`sha256:56c2c34ae75109815b3fe5b5e62cf94bfb40bc2c0f7c75383633efa7d78280dd`  
		Last Modified: Thu, 05 Nov 2026 19:24:54 GMT  
		Size: 353.4 KB (353392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f450c4955f40506bbe0cddef187215fb0138f1609f99ee833ef46b0c1ebe7c5`  
		Last Modified: Thu, 05 Nov 2026 19:24:53 GMT  
		Size: 15.3 KB (15337 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.7.7`

```console
$ docker pull kapacitor@sha256:0ecb188e51740555cf44295122d63df9b6bb9cc38878a595138722473cc65781
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:7a147188b8a7f77b1ba776ec6e2dd74bbb6e39406aa8a9237b70d2eedbd30dda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164969492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b85feec2d34beb32f1ef66e7f747f3726403b64409327acb06e65b09495d592d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:09:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:22:29 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 20 Nov 2026 04:22:35 GMT
ENV KAPACITOR_VERSION=1.7.7
# Fri, 20 Nov 2026 04:22:35 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 20 Nov 2026 04:22:35 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 20 Nov 2026 04:22:35 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 20 Nov 2026 04:22:35 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 20 Nov 2026 04:22:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 04:22:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 04:22:35 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba289bf7917cc3690a1d142485d35c2c92979a691772ec44a0a9ea481ea0619a`  
		Last Modified: Fri, 20 Nov 2026 03:10:02 GMT  
		Size: 7.1 MB (7067016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942239e2f4982c120d14bb7d018a608ce85d45ab32244a88041b0379b74a7438`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 55.8 MB (55780397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c480ad3e39c6f02e62c477c668ee11e4861a97f48a063acb92d82d76a4d3fd7`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 72.1 MB (72051743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6e382c0eb088af64e8080cbd7ff6c29ec0e328a70a0d5393c560e1e4e3b4791`  
		Last Modified: Fri, 20 Nov 2026 04:22:48 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb43ecf0dfd83b3eb92b991b79a3353d9c083557af875772e0c8df0039b0ad87`  
		Last Modified: Fri, 20 Nov 2026 04:22:48 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:2fa058f36cf294fcbc69bcc52cd37fa0f794bef7805cc88644857b370bd14c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3715176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec23b449aa2feb42ca138729a542d7ee88f25c025a0bc678030aec7b7a6a83b`

```dockerfile
```

-	Layers:
	-	`sha256:1b8c1c8d09e462768ca777bffc627611faab36d0d88a18249d580712d557421a`  
		Last Modified: Fri, 20 Nov 2026 04:22:48 GMT  
		Size: 3.7 MB (3700460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15533a26877307963f6d86c82c440dcc73eb700f845e7253033243ecf31d4e19`  
		Last Modified: Fri, 20 Nov 2026 04:22:48 GMT  
		Size: 14.7 KB (14716 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:cd93280e6523b914fde8eff5eaf6fc3a46386be3ac5c4be40c1fc9a516e59829
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.1 MB (158095784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce67733d20a76cbbf8566269331de39a3683e13e3da70785c39379b8c9f66413`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:10:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:23:11 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 20 Nov 2026 04:23:15 GMT
ENV KAPACITOR_VERSION=1.7.7
# Fri, 20 Nov 2026 04:23:15 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 20 Nov 2026 04:23:15 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 20 Nov 2026 04:23:15 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 20 Nov 2026 04:23:15 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 20 Nov 2026 04:23:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 04:23:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 04:23:16 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4aad13eb428c7c52aa688d043cc7b27ecee97beae97d644adaaceafc6294c4`  
		Last Modified: Fri, 20 Nov 2026 03:10:24 GMT  
		Size: 7.0 MB (7021928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:904b69a4f7c59b3855d72080912c107cefb1435be8d87d6de5bb12a3491f87fd`  
		Last Modified: Fri, 20 Nov 2026 04:23:31 GMT  
		Size: 55.3 MB (55257607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8c01385617ea45b784c48c54b77e2ee6c28ebbd3aed0497ff2c247b92bff69`  
		Last Modified: Fri, 20 Nov 2026 04:23:31 GMT  
		Size: 67.8 MB (67814327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb9046233afdb324cb570020a69701ee968a47ece1196f93a6621fe13e344f17`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbdc38e0b09aeff90b014a0cc6c5ae2dacdb0103a5bd784769f874ce6b499d7e`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:e04467ae5e92111cf508dbe4cc55ccd7be78e598504d773f4e4d333fe3eb95eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c3c82104fa2e31d618e4bb155499872f28370743fd4cf824c7bc85dd46fe4c`

```dockerfile
```

-	Layers:
	-	`sha256:09da970e30a53d363844a66975208f57bc76226a62f38ca05713220f6d8067c3`  
		Last Modified: Fri, 20 Nov 2026 04:23:29 GMT  
		Size: 3.7 MB (3699922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d886cf0812f6c1c2f7a079450a3e80b87c1a9c42070da25f6f1ef6c6bdf99a3a`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 14.8 KB (14811 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.7.7-alpine`

```console
$ docker pull kapacitor@sha256:b650005c82f715657f691c7e4242264d6ab52b0f0c4796cbf2a134793f1ec2fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.7.7-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:de5f4a35faf77825b827229a6ac101895d6ac07698eeaeb79e1d0d36dcd22e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79135270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90ea590e909ef8eeb8d6d6beee631f807f3c8df8632f09605596541cb9f87b56`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:24:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:24:37 GMT
RUN apk add --no-cache ca-certificates su-exec &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:24:43 GMT
ENV KAPACITOR_VERSION=1.7.7
# Thu, 05 Nov 2026 19:24:43 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Thu, 05 Nov 2026 19:24:44 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 05 Nov 2026 19:24:44 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 05 Nov 2026 19:24:44 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 05 Nov 2026 19:24:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:24:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:44 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29030ee4eb3051347643585d429c302df76223ba9356ed0acdda84b3ef80c57`  
		Last Modified: Thu, 05 Nov 2026 19:24:53 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b192bf3d200335439fff3547791aff6d76694d6c4edfa64e415b97fc78d6cb5`  
		Last Modified: Thu, 05 Nov 2026 19:24:53 GMT  
		Size: 246.3 KB (246292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03840ebf3d658a9aba6dffbfa21d674d3d078de33ec3a1f249b420b519b13813`  
		Last Modified: Thu, 05 Nov 2026 19:24:56 GMT  
		Size: 75.0 MB (75034526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53b98d4f5c95c091c54d94db87d7101af87572ebf65b9a9c6790d59a4bc87e1d`  
		Last Modified: Thu, 05 Nov 2026 19:24:53 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4d7537f8985a466517fcf1bf1abbdadf61f4c2713be6aebd6ff90ace2ccbd9`  
		Last Modified: Thu, 05 Nov 2026 19:24:55 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:96e0dc8c80c209857de1c63820cbf845fd3e215bbef18e136c79f6bf0d596d56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.7 KB (368729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd8ad8b3441aecfee156024057a3837905df27b2f6a7ea5e847e03d66548ff6`

```dockerfile
```

-	Layers:
	-	`sha256:56c2c34ae75109815b3fe5b5e62cf94bfb40bc2c0f7c75383633efa7d78280dd`  
		Last Modified: Thu, 05 Nov 2026 19:24:54 GMT  
		Size: 353.4 KB (353392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f450c4955f40506bbe0cddef187215fb0138f1609f99ee833ef46b0c1ebe7c5`  
		Last Modified: Thu, 05 Nov 2026 19:24:53 GMT  
		Size: 15.3 KB (15337 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8`

```console
$ docker pull kapacitor@sha256:058826592fef490b7f998fa371f42958495e2c68e700c362cebb405d646352b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8` - linux; amd64

```console
$ docker pull kapacitor@sha256:b7ef68376a9a3fdf75331c130522f356aa0566d05e66dc781597985d0ba2137e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.7 MB (198727593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b934d18d95edbb0b59e256879865da4162b403740dc470a979d74c350e7a823d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:09:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:22:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
ENV KAPACITOR_VERSION=1.8.9
# Fri, 20 Nov 2026 04:22:42 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 20 Nov 2026 04:22:42 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 20 Nov 2026 04:22:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 04:22:42 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba289bf7917cc3690a1d142485d35c2c92979a691772ec44a0a9ea481ea0619a`  
		Last Modified: Fri, 20 Nov 2026 03:10:02 GMT  
		Size: 7.1 MB (7067016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b383563932bef083085f2fa2d907008bb74b8715602d9ae8aa8989ffc1da649`  
		Last Modified: Fri, 20 Nov 2026 04:23:02 GMT  
		Size: 55.8 MB (55780386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f1c638cc5ef36636c182d8ed98b9db3e2ee4a866ca010920504e0e129da1c6`  
		Last Modified: Fri, 20 Nov 2026 04:23:04 GMT  
		Size: 105.8 MB (105809852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f4c100aa75d51b3feaa03d8ee8317103335587874c19b485c798dba08c9dc8`  
		Last Modified: Fri, 20 Nov 2026 04:23:00 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19eec79c1de7648249b80b0e5b2ae40eeaceb3da4875624ecc1681e88811299b`  
		Last Modified: Fri, 20 Nov 2026 04:23:00 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:1d32630fdf1c20827eeb84d178d22fbd4c9a92418e8a0aab29a8f449dcb278d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aac393ed9fc85b570650346be1a1a7cb548262292ab79079b8617b7a386306d7`

```dockerfile
```

-	Layers:
	-	`sha256:03c7336d07c93dae454a19b35c49180f01ea91dd0b3287bc01b39265acf25620`  
		Last Modified: Fri, 20 Nov 2026 04:23:01 GMT  
		Size: 3.7 MB (3738873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c79efab25d4aaa0d222fa3f348acbff889c90660437d7efe7a418d709d2fe859`  
		Last Modified: Fri, 20 Nov 2026 04:23:00 GMT  
		Size: 15.0 KB (15023 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:827cdb37d62bca0e24c8adde5c54913fcf157e3dab4cdbfb39709f434c6b2ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.7 MB (188671744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfa02fe7a098065662572939a7977c8b6d66162949876c5792f0e80d910570b0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:10:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:23:11 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
ENV KAPACITOR_VERSION=1.8.9
# Fri, 20 Nov 2026 04:23:19 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 20 Nov 2026 04:23:19 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 20 Nov 2026 04:23:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 04:23:19 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4aad13eb428c7c52aa688d043cc7b27ecee97beae97d644adaaceafc6294c4`  
		Last Modified: Fri, 20 Nov 2026 03:10:24 GMT  
		Size: 7.0 MB (7021928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a5759654418e883df1f52008cd4c9760c393afabae4c0cd6d01a720da358b85`  
		Last Modified: Fri, 20 Nov 2026 04:23:41 GMT  
		Size: 55.3 MB (55257610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ce27b3958c2783676b9f3c150118e08430a4d56f200f7ad37874da161cc856`  
		Last Modified: Fri, 20 Nov 2026 04:23:42 GMT  
		Size: 98.4 MB (98390282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ce76180bacf6a6064b95fbe78fc22190d0ecfac718604f62505ff8969443c5`  
		Last Modified: Fri, 20 Nov 2026 04:23:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:705b1033663d5aa7c4e765849d1341d4d709d33ea2e47af63124e22f2b0395dd`  
		Last Modified: Fri, 20 Nov 2026 04:23:39 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:1a742981d442fbc29ddc33d59278e62bd164f92d8af7d000eef93dec739fa534
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e04d02fcf3e8441319b0610a3b650ee55832c1b8474a449273ee31784fbdd1`

```dockerfile
```

-	Layers:
	-	`sha256:8db30baf8b6a3edd9b9489acbfd29459541cde34f1ffe8b028f90821a5a167c1`  
		Last Modified: Fri, 20 Nov 2026 04:23:39 GMT  
		Size: 3.7 MB (3738093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd1c8bf1c33c3b2d42632de6484b43552d2130b2961e932a1a1bc9b6225353a3`  
		Last Modified: Fri, 20 Nov 2026 04:23:39 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8-alpine`

```console
$ docker pull kapacitor@sha256:9d406c186006c189dae4346071d5e59e9eb848950ce98c5a8e1ae789e2cc5b6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.8-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:7a478bc48340105e56bbfaf830c231e4b9c6a4895e38ba8ee2e4892d1229df2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112935812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5daa159d55c1606326e4b8c3bf48aac178dcaa2afb75014456b900f2f9de6423`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:03 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
ENV KAPACITOR_VERSION=1.8.9
# Thu, 05 Nov 2026 19:24:53 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 05 Nov 2026 19:24:53 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 05 Nov 2026 19:24:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:53 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a283f45868feeae563b34b2046ad3956d7e0f7c1f00280d305e096fdf0258e`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4d511e6f26babe2884595be43c448bd606f436b013a8a0e485c3e6d3063aee`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 293.8 KB (293835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3dd009e1c1249e2ba89699e8d2439ed8814351a34ef9d91e75973dfa06fc41`  
		Last Modified: Thu, 05 Nov 2026 19:25:13 GMT  
		Size: 108.8 MB (108787500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7811d243468216e9baccff3a63221c4b993e89235aa2d238f1b34f9c1ca8420`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e271b7d1a589410039d134c5e59efc9cf5da36e41470ffeac8bd9d078c25a422`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:4ff1824ba1123b5cd70ba54a48d247f4458365a319e4b5e8526dd47999c60920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.4 KB (413394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9ad256bd1bf55763501b52b730d01d43bdf23aaf135d44436f7b10fc5b2b64`

```dockerfile
```

-	Layers:
	-	`sha256:d92201a99488c16b777d10fa87a13f6399b51f4f9b181a4a0c4a5213a7748a84`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 397.8 KB (397750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f956bacb8c859de72ae8235e7da8ca80f3c0038ac61cdea906cec6cf6c9f904`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 15.6 KB (15644 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8.9`

```console
$ docker pull kapacitor@sha256:058826592fef490b7f998fa371f42958495e2c68e700c362cebb405d646352b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8.9` - linux; amd64

```console
$ docker pull kapacitor@sha256:b7ef68376a9a3fdf75331c130522f356aa0566d05e66dc781597985d0ba2137e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.7 MB (198727593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b934d18d95edbb0b59e256879865da4162b403740dc470a979d74c350e7a823d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:09:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:22:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
ENV KAPACITOR_VERSION=1.8.9
# Fri, 20 Nov 2026 04:22:42 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 20 Nov 2026 04:22:42 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 20 Nov 2026 04:22:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 04:22:42 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba289bf7917cc3690a1d142485d35c2c92979a691772ec44a0a9ea481ea0619a`  
		Last Modified: Fri, 20 Nov 2026 03:10:02 GMT  
		Size: 7.1 MB (7067016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b383563932bef083085f2fa2d907008bb74b8715602d9ae8aa8989ffc1da649`  
		Last Modified: Fri, 20 Nov 2026 04:23:02 GMT  
		Size: 55.8 MB (55780386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f1c638cc5ef36636c182d8ed98b9db3e2ee4a866ca010920504e0e129da1c6`  
		Last Modified: Fri, 20 Nov 2026 04:23:04 GMT  
		Size: 105.8 MB (105809852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f4c100aa75d51b3feaa03d8ee8317103335587874c19b485c798dba08c9dc8`  
		Last Modified: Fri, 20 Nov 2026 04:23:00 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19eec79c1de7648249b80b0e5b2ae40eeaceb3da4875624ecc1681e88811299b`  
		Last Modified: Fri, 20 Nov 2026 04:23:00 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.9` - unknown; unknown

```console
$ docker pull kapacitor@sha256:1d32630fdf1c20827eeb84d178d22fbd4c9a92418e8a0aab29a8f449dcb278d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aac393ed9fc85b570650346be1a1a7cb548262292ab79079b8617b7a386306d7`

```dockerfile
```

-	Layers:
	-	`sha256:03c7336d07c93dae454a19b35c49180f01ea91dd0b3287bc01b39265acf25620`  
		Last Modified: Fri, 20 Nov 2026 04:23:01 GMT  
		Size: 3.7 MB (3738873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c79efab25d4aaa0d222fa3f348acbff889c90660437d7efe7a418d709d2fe859`  
		Last Modified: Fri, 20 Nov 2026 04:23:00 GMT  
		Size: 15.0 KB (15023 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8.9` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:827cdb37d62bca0e24c8adde5c54913fcf157e3dab4cdbfb39709f434c6b2ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.7 MB (188671744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfa02fe7a098065662572939a7977c8b6d66162949876c5792f0e80d910570b0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:10:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:23:11 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
ENV KAPACITOR_VERSION=1.8.9
# Fri, 20 Nov 2026 04:23:19 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 20 Nov 2026 04:23:19 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 20 Nov 2026 04:23:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 04:23:19 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4aad13eb428c7c52aa688d043cc7b27ecee97beae97d644adaaceafc6294c4`  
		Last Modified: Fri, 20 Nov 2026 03:10:24 GMT  
		Size: 7.0 MB (7021928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a5759654418e883df1f52008cd4c9760c393afabae4c0cd6d01a720da358b85`  
		Last Modified: Fri, 20 Nov 2026 04:23:41 GMT  
		Size: 55.3 MB (55257610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ce27b3958c2783676b9f3c150118e08430a4d56f200f7ad37874da161cc856`  
		Last Modified: Fri, 20 Nov 2026 04:23:42 GMT  
		Size: 98.4 MB (98390282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ce76180bacf6a6064b95fbe78fc22190d0ecfac718604f62505ff8969443c5`  
		Last Modified: Fri, 20 Nov 2026 04:23:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:705b1033663d5aa7c4e765849d1341d4d709d33ea2e47af63124e22f2b0395dd`  
		Last Modified: Fri, 20 Nov 2026 04:23:39 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.9` - unknown; unknown

```console
$ docker pull kapacitor@sha256:1a742981d442fbc29ddc33d59278e62bd164f92d8af7d000eef93dec739fa534
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e04d02fcf3e8441319b0610a3b650ee55832c1b8474a449273ee31784fbdd1`

```dockerfile
```

-	Layers:
	-	`sha256:8db30baf8b6a3edd9b9489acbfd29459541cde34f1ffe8b028f90821a5a167c1`  
		Last Modified: Fri, 20 Nov 2026 04:23:39 GMT  
		Size: 3.7 MB (3738093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd1c8bf1c33c3b2d42632de6484b43552d2130b2961e932a1a1bc9b6225353a3`  
		Last Modified: Fri, 20 Nov 2026 04:23:39 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8.9-alpine`

```console
$ docker pull kapacitor@sha256:9d406c186006c189dae4346071d5e59e9eb848950ce98c5a8e1ae789e2cc5b6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.8.9-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:7a478bc48340105e56bbfaf830c231e4b9c6a4895e38ba8ee2e4892d1229df2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112935812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5daa159d55c1606326e4b8c3bf48aac178dcaa2afb75014456b900f2f9de6423`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:03 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
ENV KAPACITOR_VERSION=1.8.9
# Thu, 05 Nov 2026 19:24:53 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 05 Nov 2026 19:24:53 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 05 Nov 2026 19:24:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:53 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a283f45868feeae563b34b2046ad3956d7e0f7c1f00280d305e096fdf0258e`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4d511e6f26babe2884595be43c448bd606f436b013a8a0e485c3e6d3063aee`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 293.8 KB (293835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3dd009e1c1249e2ba89699e8d2439ed8814351a34ef9d91e75973dfa06fc41`  
		Last Modified: Thu, 05 Nov 2026 19:25:13 GMT  
		Size: 108.8 MB (108787500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7811d243468216e9baccff3a63221c4b993e89235aa2d238f1b34f9c1ca8420`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e271b7d1a589410039d134c5e59efc9cf5da36e41470ffeac8bd9d078c25a422`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.9-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:4ff1824ba1123b5cd70ba54a48d247f4458365a319e4b5e8526dd47999c60920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.4 KB (413394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9ad256bd1bf55763501b52b730d01d43bdf23aaf135d44436f7b10fc5b2b64`

```dockerfile
```

-	Layers:
	-	`sha256:d92201a99488c16b777d10fa87a13f6399b51f4f9b181a4a0c4a5213a7748a84`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 397.8 KB (397750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f956bacb8c859de72ae8235e7da8ca80f3c0038ac61cdea906cec6cf6c9f904`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 15.6 KB (15644 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:9d406c186006c189dae4346071d5e59e9eb848950ce98c5a8e1ae789e2cc5b6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:7a478bc48340105e56bbfaf830c231e4b9c6a4895e38ba8ee2e4892d1229df2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112935812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5daa159d55c1606326e4b8c3bf48aac178dcaa2afb75014456b900f2f9de6423`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:03 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
ENV KAPACITOR_VERSION=1.8.9
# Thu, 05 Nov 2026 19:24:53 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 05 Nov 2026 19:24:53 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 05 Nov 2026 19:24:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:53 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a283f45868feeae563b34b2046ad3956d7e0f7c1f00280d305e096fdf0258e`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4d511e6f26babe2884595be43c448bd606f436b013a8a0e485c3e6d3063aee`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 293.8 KB (293835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3dd009e1c1249e2ba89699e8d2439ed8814351a34ef9d91e75973dfa06fc41`  
		Last Modified: Thu, 05 Nov 2026 19:25:13 GMT  
		Size: 108.8 MB (108787500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7811d243468216e9baccff3a63221c4b993e89235aa2d238f1b34f9c1ca8420`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e271b7d1a589410039d134c5e59efc9cf5da36e41470ffeac8bd9d078c25a422`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:4ff1824ba1123b5cd70ba54a48d247f4458365a319e4b5e8526dd47999c60920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.4 KB (413394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9ad256bd1bf55763501b52b730d01d43bdf23aaf135d44436f7b10fc5b2b64`

```dockerfile
```

-	Layers:
	-	`sha256:d92201a99488c16b777d10fa87a13f6399b51f4f9b181a4a0c4a5213a7748a84`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 397.8 KB (397750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f956bacb8c859de72ae8235e7da8ca80f3c0038ac61cdea906cec6cf6c9f904`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 15.6 KB (15644 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:058826592fef490b7f998fa371f42958495e2c68e700c362cebb405d646352b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:b7ef68376a9a3fdf75331c130522f356aa0566d05e66dc781597985d0ba2137e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.7 MB (198727593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b934d18d95edbb0b59e256879865da4162b403740dc470a979d74c350e7a823d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:09:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:22:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
ENV KAPACITOR_VERSION=1.8.9
# Fri, 20 Nov 2026 04:22:42 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 20 Nov 2026 04:22:42 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 20 Nov 2026 04:22:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 04:22:42 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba289bf7917cc3690a1d142485d35c2c92979a691772ec44a0a9ea481ea0619a`  
		Last Modified: Fri, 20 Nov 2026 03:10:02 GMT  
		Size: 7.1 MB (7067016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b383563932bef083085f2fa2d907008bb74b8715602d9ae8aa8989ffc1da649`  
		Last Modified: Fri, 20 Nov 2026 04:23:02 GMT  
		Size: 55.8 MB (55780386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f1c638cc5ef36636c182d8ed98b9db3e2ee4a866ca010920504e0e129da1c6`  
		Last Modified: Fri, 20 Nov 2026 04:23:04 GMT  
		Size: 105.8 MB (105809852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f4c100aa75d51b3feaa03d8ee8317103335587874c19b485c798dba08c9dc8`  
		Last Modified: Fri, 20 Nov 2026 04:23:00 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19eec79c1de7648249b80b0e5b2ae40eeaceb3da4875624ecc1681e88811299b`  
		Last Modified: Fri, 20 Nov 2026 04:23:00 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:1d32630fdf1c20827eeb84d178d22fbd4c9a92418e8a0aab29a8f449dcb278d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aac393ed9fc85b570650346be1a1a7cb548262292ab79079b8617b7a386306d7`

```dockerfile
```

-	Layers:
	-	`sha256:03c7336d07c93dae454a19b35c49180f01ea91dd0b3287bc01b39265acf25620`  
		Last Modified: Fri, 20 Nov 2026 04:23:01 GMT  
		Size: 3.7 MB (3738873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c79efab25d4aaa0d222fa3f348acbff889c90660437d7efe7a418d709d2fe859`  
		Last Modified: Fri, 20 Nov 2026 04:23:00 GMT  
		Size: 15.0 KB (15023 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:827cdb37d62bca0e24c8adde5c54913fcf157e3dab4cdbfb39709f434c6b2ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.7 MB (188671744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfa02fe7a098065662572939a7977c8b6d66162949876c5792f0e80d910570b0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:10:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:23:11 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
ENV KAPACITOR_VERSION=1.8.9
# Fri, 20 Nov 2026 04:23:19 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 20 Nov 2026 04:23:19 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 20 Nov 2026 04:23:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 04:23:19 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4aad13eb428c7c52aa688d043cc7b27ecee97beae97d644adaaceafc6294c4`  
		Last Modified: Fri, 20 Nov 2026 03:10:24 GMT  
		Size: 7.0 MB (7021928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a5759654418e883df1f52008cd4c9760c393afabae4c0cd6d01a720da358b85`  
		Last Modified: Fri, 20 Nov 2026 04:23:41 GMT  
		Size: 55.3 MB (55257610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ce27b3958c2783676b9f3c150118e08430a4d56f200f7ad37874da161cc856`  
		Last Modified: Fri, 20 Nov 2026 04:23:42 GMT  
		Size: 98.4 MB (98390282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ce76180bacf6a6064b95fbe78fc22190d0ecfac718604f62505ff8969443c5`  
		Last Modified: Fri, 20 Nov 2026 04:23:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:705b1033663d5aa7c4e765849d1341d4d709d33ea2e47af63124e22f2b0395dd`  
		Last Modified: Fri, 20 Nov 2026 04:23:39 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:1a742981d442fbc29ddc33d59278e62bd164f92d8af7d000eef93dec739fa534
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e04d02fcf3e8441319b0610a3b650ee55832c1b8474a449273ee31784fbdd1`

```dockerfile
```

-	Layers:
	-	`sha256:8db30baf8b6a3edd9b9489acbfd29459541cde34f1ffe8b028f90821a5a167c1`  
		Last Modified: Fri, 20 Nov 2026 04:23:39 GMT  
		Size: 3.7 MB (3738093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd1c8bf1c33c3b2d42632de6484b43552d2130b2961e932a1a1bc9b6225353a3`  
		Last Modified: Fri, 20 Nov 2026 04:23:39 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json
