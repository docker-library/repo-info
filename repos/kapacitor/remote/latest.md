## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:6a0d8ea3b84038fafc7fbb2a01a410ccd7af9cf6901682c697281cfb21a0ed34
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:2d4852a225afa0aeed6970d2fe657d5f674786f8578e1716cf15608a51ad7cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.8 MB (185782098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:088d1c6058f25e297a27ce0c3a6ed98fca5f7f8b40f224511063f1e45d02ee5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:49:08 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 22 Sep 2026 18:49:14 GMT
ENV KAPACITOR_VERSION=1.8.7
# Tue, 22 Sep 2026 18:49:14 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 22 Sep 2026 18:49:14 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 22 Sep 2026 18:49:14 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 22 Sep 2026 18:49:14 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 22 Sep 2026 18:49:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:49:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:49:14 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020cda4105c56fa4959c90da18d747e55dfe394ebe92b4abcc576965ae4afe62`  
		Last Modified: Wed, 09 Sep 2026 02:12:41 GMT  
		Size: 7.1 MB (7065284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af697603becfca452bf4011e4b9d627f68bbad203a36e0e6c352be8665f5643`  
		Last Modified: Tue, 22 Sep 2026 18:49:35 GMT  
		Size: 54.4 MB (54433339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af41f1101d1580286ad62d825758f6c817b1aa480561487efcd7f16e2c95f1cb`  
		Last Modified: Tue, 22 Sep 2026 18:49:36 GMT  
		Size: 94.5 MB (94532703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b9f2dc74941cdecd581387bac3cbe8c98f67505d700a7ad32871e4abde9246`  
		Last Modified: Tue, 22 Sep 2026 18:49:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3291afe3300ad1a198a0ff09701a14af01200905e1a6884083e6fe14cd37af59`  
		Last Modified: Tue, 22 Sep 2026 18:49:33 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:0a67fc93f70abbbbdde5bdc2b5aba8e2c840757b013e87a0b27a1922df180545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52490e95da82968d396287708f8ab95683505259937d7d706b3ec9f4a0e66c80`

```dockerfile
```

-	Layers:
	-	`sha256:ae522cb3e6af6d38f21d49ebdc7e2cc5c204dabb66d0fdbd1cf161f1eedea892`  
		Last Modified: Tue, 22 Sep 2026 18:49:33 GMT  
		Size: 3.7 MB (3729244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0afa0d9a7e66ade5c2e58828ebebfbee5dca5ebcfdba20de30be6938d605d9b4`  
		Last Modified: Tue, 22 Sep 2026 18:49:33 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:c37086d17db85963b85f5fa2bcdb71a15758496667d9e5509a103a2f6740db6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.7 MB (176730862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a854393f9cf55f444607c0defa2bdb9f7f41643d6882516543d6934c7c476a15`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:15:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:49:29 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 22 Sep 2026 18:49:35 GMT
ENV KAPACITOR_VERSION=1.8.7
# Tue, 22 Sep 2026 18:49:35 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 22 Sep 2026 18:49:35 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 22 Sep 2026 18:49:35 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 22 Sep 2026 18:49:35 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 22 Sep 2026 18:49:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:49:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:49:35 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cec09e12728ebe9beff9631cf3cea8fc831710686d9ad6c5ff616c1b41b720b`  
		Last Modified: Wed, 09 Sep 2026 01:15:18 GMT  
		Size: 7.0 MB (7019701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b4a2f041c3f18dacdeb06b6ee1d6ebf5b7737ad5d87730762ea407dff0a561`  
		Last Modified: Tue, 22 Sep 2026 18:49:55 GMT  
		Size: 53.8 MB (53794800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa32f47283c94b8f2aedd1b7c4c03619ec87df7d157290f72654231a0bcf5f0`  
		Last Modified: Tue, 22 Sep 2026 18:49:56 GMT  
		Size: 88.2 MB (88233090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92e45011170ea0e97b91fc87716671d8bc8460d72ead925dbf03e4140ee6ad5`  
		Last Modified: Tue, 22 Sep 2026 18:49:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff97f0e0db6886d3ed445631b906b3479361225e34608bbf46ddb4f1451998e`  
		Last Modified: Tue, 22 Sep 2026 18:49:53 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:9fbfe37335dbc1bcc7cf9626baf8ca62177e50e74a9fe09b955ef8984a909ed1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f4ce517e240761982b3f259c2b8f10b562d9188f33af29adaacf34fd60f170`

```dockerfile
```

-	Layers:
	-	`sha256:12d3dd3bb840f40ab8551d32b8147aa70f07ffcf18fa7fb70ce856eeefc154c0`  
		Last Modified: Tue, 22 Sep 2026 18:49:53 GMT  
		Size: 3.7 MB (3728718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f607954e3c9bab27f286a0ecf67df2ad336c5c5056f48b696a6d17a29b18cd50`  
		Last Modified: Tue, 22 Sep 2026 18:49:53 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json
