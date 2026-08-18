<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.7`](#kapacitor17)
-	[`kapacitor:1.7-alpine`](#kapacitor17-alpine)
-	[`kapacitor:1.7.7`](#kapacitor177)
-	[`kapacitor:1.7.7-alpine`](#kapacitor177-alpine)
-	[`kapacitor:1.8`](#kapacitor18)
-	[`kapacitor:1.8-alpine`](#kapacitor18-alpine)
-	[`kapacitor:1.8.6`](#kapacitor186)
-	[`kapacitor:1.8.6-alpine`](#kapacitor186-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)
-	[`kapacitor:latest`](#kapacitorlatest)

## `kapacitor:1.7`

```console
$ docker pull kapacitor@sha256:1d0ba328b7ec791f5d72ad31d0ecefd2a0ba7e3767eb0485155bca7707110060
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:9eeb46587ac7f6449741c0fbfc4c7b16b281790c7345583166057f75b3157e09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.6 MB (162591441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad2b87b6af691a73f7a5a402c556321b6edef476e3591adf72680d223da4e7ea`
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
# Tue, 18 Aug 2026 02:16:08 GMT
ENV KAPACITOR_VERSION=1.7.7
# Tue, 18 Aug 2026 02:16:08 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 18 Aug 2026 02:16:08 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 18 Aug 2026 02:16:08 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 18 Aug 2026 02:16:08 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 18 Aug 2026 02:16:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 02:16:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 02:16:08 GMT
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
	-	`sha256:4221da2203c1fe530fe0063888fcee84acc9aa356c4332c2a69b5e6756daf167`  
		Last Modified: Tue, 18 Aug 2026 02:16:23 GMT  
		Size: 53.7 MB (53738851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f4c1a67469097675f5fa459852d515ea4a85ac008440729e91c8f2d7279ee68`  
		Last Modified: Tue, 18 Aug 2026 02:16:24 GMT  
		Size: 72.1 MB (72051374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7dd2890f90ac110ae6486e970fc426ffa6fedf89c4b5f54ef47471ba1b2e1b`  
		Last Modified: Tue, 18 Aug 2026 02:16:21 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8694365a854e64b1deb911a145d04741d14563062b91668a374b6f6965feea9e`  
		Last Modified: Tue, 18 Aug 2026 02:16:21 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:84c6dce57ce43a4a7962bfb223d42388df9e87b872032fb1bde68ae144cbc79d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3715131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a3a091b73eaf8e4b354974205047710afdf24724a68405f778c6b3d5d5fd76`

```dockerfile
```

-	Layers:
	-	`sha256:9296574812a9388716aa59022aa392cda0fd3192c0107491b84c7d55e3aa8603`  
		Last Modified: Tue, 18 Aug 2026 02:16:21 GMT  
		Size: 3.7 MB (3700416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c74cb5a5272df0a1cd316d0caf49feaa45922f626c3e9216b4b3080eb2a750cb`  
		Last Modified: Tue, 18 Aug 2026 02:16:21 GMT  
		Size: 14.7 KB (14715 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:ef993c537c55cdd9d75fec5cf1b2857836f479f2d42038d415fdf8947d52df3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155471568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c77b337d16e441fcb03ceb2e8710712178583301261ee7b8ae7f12ff0d8df8c4`
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
# Tue, 18 Aug 2026 02:16:07 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 18 Aug 2026 02:16:13 GMT
ENV KAPACITOR_VERSION=1.7.7
# Tue, 18 Aug 2026 02:16:13 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 18 Aug 2026 02:16:13 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 18 Aug 2026 02:16:13 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 18 Aug 2026 02:16:13 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 18 Aug 2026 02:16:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 02:16:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 02:16:13 GMT
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
	-	`sha256:a8a20788fb9a17edd435d25fdce49c649c89e0580d92fd46c4dbb6ccebbabbf4`  
		Last Modified: Tue, 18 Aug 2026 02:16:29 GMT  
		Size: 53.0 MB (53018702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f56baa36be81557c2d84add1e42e7c210ed03b663e473f587747c2f1ae9dbdf`  
		Last Modified: Tue, 18 Aug 2026 02:16:29 GMT  
		Size: 67.8 MB (67813947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d57df051b20941415554b62f07260d864dfe6d85867fa3194482e5ae1c5a48d`  
		Last Modified: Tue, 18 Aug 2026 02:16:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:334ed2acc70891fef4a3ded2c052527137395b3b1aabe8eed0e678e5341720a3`  
		Last Modified: Tue, 18 Aug 2026 02:16:26 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:0047863ccccc2f7280bf323b0f44e6a17ce1cb9efde0224a2e51dc9e3ee484d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54a608cfe67e76a50eb7f513bac7a43c72501c0d69b2616171d6552d1e9f59c3`

```dockerfile
```

-	Layers:
	-	`sha256:7d5185932f45e13f594cfb1f84c768bffa4a90494c0e06efc4729c534a38c819`  
		Last Modified: Tue, 18 Aug 2026 02:16:27 GMT  
		Size: 3.7 MB (3699878 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b921f667d041b0007dcffffbde989f26cb17c0101f912ec2c5b98cbeb948334`  
		Last Modified: Tue, 18 Aug 2026 02:16:26 GMT  
		Size: 14.8 KB (14811 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.7-alpine`

```console
$ docker pull kapacitor@sha256:9e800ab84f6e55477f0f32725a07cc65971814aa029b90a2bab6ef781dec2ab0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.7-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:d642f1246ee977700b45d6f1c1a677c537c5a0317a74475dc79fb38133f13f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76077263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579dee0aaddfe2ce8db2b0a6780a162c9fab94fbc5ad6074042701e3076b2f66`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 18:48:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 18:48:22 GMT
RUN apk add --no-cache ca-certificates su-exec &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 18:48:26 GMT
ENV KAPACITOR_VERSION=1.7.7
# Mon, 20 Jul 2026 18:48:26 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Mon, 20 Jul 2026 18:48:26 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:48:26 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:48:26 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:48:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:48:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:48:26 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3a8788998b7ea0e3cdbf561f1a5df7f87b21cc567e45ce3f71b3438731e03e`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bebd2156cd67d6054fcbcf000f3e61597135229866ceb73837dc980a73118ef5`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 246.9 KB (246868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bcd1639839e58f1c2056d0a46ee6e13087618776665fa7c2be1285d9b7f7895`  
		Last Modified: Mon, 20 Jul 2026 18:48:39 GMT  
		Size: 72.0 MB (71983221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e730d188cd6d367cb2827c1395715f71f2424d388268c062c734c156333433`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd106f6107edf05b8a52994fa58da475bef51cc6c539daffb16d8eed65faf879`  
		Last Modified: Mon, 20 Jul 2026 18:48:38 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:1ee9d4461c41552955dcebe99acbf65ed71205890bfd6e3026d5cdb224e7b137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.0 KB (369981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4632d298c19e43abb91cbe79b901acc585fcc3a09ce7e83f77fac500b1b7654`

```dockerfile
```

-	Layers:
	-	`sha256:5be486745f3aca1717cfff83198f7c979888f602262d251a7e613617317931d5`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 354.3 KB (354340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f777630344f35c5344cb6ec0f440244c50772ca892266a5d678e3464f3d981b0`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 15.6 KB (15641 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.7.7`

```console
$ docker pull kapacitor@sha256:1d0ba328b7ec791f5d72ad31d0ecefd2a0ba7e3767eb0485155bca7707110060
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:9eeb46587ac7f6449741c0fbfc4c7b16b281790c7345583166057f75b3157e09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.6 MB (162591441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad2b87b6af691a73f7a5a402c556321b6edef476e3591adf72680d223da4e7ea`
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
# Tue, 18 Aug 2026 02:16:08 GMT
ENV KAPACITOR_VERSION=1.7.7
# Tue, 18 Aug 2026 02:16:08 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 18 Aug 2026 02:16:08 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 18 Aug 2026 02:16:08 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 18 Aug 2026 02:16:08 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 18 Aug 2026 02:16:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 02:16:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 02:16:08 GMT
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
	-	`sha256:4221da2203c1fe530fe0063888fcee84acc9aa356c4332c2a69b5e6756daf167`  
		Last Modified: Tue, 18 Aug 2026 02:16:23 GMT  
		Size: 53.7 MB (53738851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f4c1a67469097675f5fa459852d515ea4a85ac008440729e91c8f2d7279ee68`  
		Last Modified: Tue, 18 Aug 2026 02:16:24 GMT  
		Size: 72.1 MB (72051374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7dd2890f90ac110ae6486e970fc426ffa6fedf89c4b5f54ef47471ba1b2e1b`  
		Last Modified: Tue, 18 Aug 2026 02:16:21 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8694365a854e64b1deb911a145d04741d14563062b91668a374b6f6965feea9e`  
		Last Modified: Tue, 18 Aug 2026 02:16:21 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:84c6dce57ce43a4a7962bfb223d42388df9e87b872032fb1bde68ae144cbc79d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3715131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a3a091b73eaf8e4b354974205047710afdf24724a68405f778c6b3d5d5fd76`

```dockerfile
```

-	Layers:
	-	`sha256:9296574812a9388716aa59022aa392cda0fd3192c0107491b84c7d55e3aa8603`  
		Last Modified: Tue, 18 Aug 2026 02:16:21 GMT  
		Size: 3.7 MB (3700416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c74cb5a5272df0a1cd316d0caf49feaa45922f626c3e9216b4b3080eb2a750cb`  
		Last Modified: Tue, 18 Aug 2026 02:16:21 GMT  
		Size: 14.7 KB (14715 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:ef993c537c55cdd9d75fec5cf1b2857836f479f2d42038d415fdf8947d52df3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155471568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c77b337d16e441fcb03ceb2e8710712178583301261ee7b8ae7f12ff0d8df8c4`
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
# Tue, 18 Aug 2026 02:16:07 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 18 Aug 2026 02:16:13 GMT
ENV KAPACITOR_VERSION=1.7.7
# Tue, 18 Aug 2026 02:16:13 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 18 Aug 2026 02:16:13 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 18 Aug 2026 02:16:13 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 18 Aug 2026 02:16:13 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 18 Aug 2026 02:16:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 02:16:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 02:16:13 GMT
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
	-	`sha256:a8a20788fb9a17edd435d25fdce49c649c89e0580d92fd46c4dbb6ccebbabbf4`  
		Last Modified: Tue, 18 Aug 2026 02:16:29 GMT  
		Size: 53.0 MB (53018702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f56baa36be81557c2d84add1e42e7c210ed03b663e473f587747c2f1ae9dbdf`  
		Last Modified: Tue, 18 Aug 2026 02:16:29 GMT  
		Size: 67.8 MB (67813947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d57df051b20941415554b62f07260d864dfe6d85867fa3194482e5ae1c5a48d`  
		Last Modified: Tue, 18 Aug 2026 02:16:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:334ed2acc70891fef4a3ded2c052527137395b3b1aabe8eed0e678e5341720a3`  
		Last Modified: Tue, 18 Aug 2026 02:16:26 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:0047863ccccc2f7280bf323b0f44e6a17ce1cb9efde0224a2e51dc9e3ee484d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54a608cfe67e76a50eb7f513bac7a43c72501c0d69b2616171d6552d1e9f59c3`

```dockerfile
```

-	Layers:
	-	`sha256:7d5185932f45e13f594cfb1f84c768bffa4a90494c0e06efc4729c534a38c819`  
		Last Modified: Tue, 18 Aug 2026 02:16:27 GMT  
		Size: 3.7 MB (3699878 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b921f667d041b0007dcffffbde989f26cb17c0101f912ec2c5b98cbeb948334`  
		Last Modified: Tue, 18 Aug 2026 02:16:26 GMT  
		Size: 14.8 KB (14811 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.7.7-alpine`

```console
$ docker pull kapacitor@sha256:9e800ab84f6e55477f0f32725a07cc65971814aa029b90a2bab6ef781dec2ab0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.7.7-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:d642f1246ee977700b45d6f1c1a677c537c5a0317a74475dc79fb38133f13f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76077263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579dee0aaddfe2ce8db2b0a6780a162c9fab94fbc5ad6074042701e3076b2f66`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 18:48:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 18:48:22 GMT
RUN apk add --no-cache ca-certificates su-exec &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 18:48:26 GMT
ENV KAPACITOR_VERSION=1.7.7
# Mon, 20 Jul 2026 18:48:26 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Mon, 20 Jul 2026 18:48:26 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:48:26 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:48:26 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:48:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:48:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:48:26 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3a8788998b7ea0e3cdbf561f1a5df7f87b21cc567e45ce3f71b3438731e03e`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bebd2156cd67d6054fcbcf000f3e61597135229866ceb73837dc980a73118ef5`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 246.9 KB (246868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bcd1639839e58f1c2056d0a46ee6e13087618776665fa7c2be1285d9b7f7895`  
		Last Modified: Mon, 20 Jul 2026 18:48:39 GMT  
		Size: 72.0 MB (71983221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e730d188cd6d367cb2827c1395715f71f2424d388268c062c734c156333433`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd106f6107edf05b8a52994fa58da475bef51cc6c539daffb16d8eed65faf879`  
		Last Modified: Mon, 20 Jul 2026 18:48:38 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:1ee9d4461c41552955dcebe99acbf65ed71205890bfd6e3026d5cdb224e7b137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.0 KB (369981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4632d298c19e43abb91cbe79b901acc585fcc3a09ce7e83f77fac500b1b7654`

```dockerfile
```

-	Layers:
	-	`sha256:5be486745f3aca1717cfff83198f7c979888f602262d251a7e613617317931d5`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 354.3 KB (354340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f777630344f35c5344cb6ec0f440244c50772ca892266a5d678e3464f3d981b0`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 15.6 KB (15641 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8`

```console
$ docker pull kapacitor@sha256:931c76d9c20090275b7995dcc7ce179a323725c0144802f118c6e94f7ea161ee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8` - linux; amd64

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

### `kapacitor:1.8` - unknown; unknown

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

### `kapacitor:1.8` - linux; arm64 variant v8

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

### `kapacitor:1.8` - unknown; unknown

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

## `kapacitor:1.8-alpine`

```console
$ docker pull kapacitor@sha256:b3f24ce78141f03e30185738688ff564299a9920d244a3a1794a3b84edf1fc48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.8-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:7d30e734c47523a3498eed34139e832c6f8c6fc7cdd00afe7f73199f59291331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97254311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d41e2563825e9aea22ff4612cb8725b76fd05c8e264b2620adb815130c68c5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 18:48:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 18:49:16 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
ENV KAPACITOR_VERSION=1.8.6
# Mon, 20 Jul 2026 18:49:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:49:22 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:49:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:49:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3a8788998b7ea0e3cdbf561f1a5df7f87b21cc567e45ce3f71b3438731e03e`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8782d10ad554fdcdae9d843aa5deda64e0da8f313c2c8ab79c3741f9d6b19444`  
		Last Modified: Mon, 20 Jul 2026 18:49:38 GMT  
		Size: 294.3 KB (294343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed84eed67ca9143e27e9c9f4a14d42553ccb53fe702ec9a6e778491714ce911`  
		Last Modified: Mon, 20 Jul 2026 18:49:40 GMT  
		Size: 93.1 MB (93112775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58948abc6c9ccdb955f021d14cf35281ecfa81c4532c2ad3d02ea51015524104`  
		Last Modified: Mon, 20 Jul 2026 18:49:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fdd794310e6d156bd824e443d86a48fd2c9754f124f135455d86cc233360a31`  
		Last Modified: Mon, 20 Jul 2026 18:49:38 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:b91380df4545f3b6c4480fe8bc1932dd76ea2e0502d605bcb96735c6425fd0ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.6 KB (404599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5c46fd2ff2cf703e92ef8cb6836a09683dd5a6f52c52bbadc7e876fdcd6433`

```dockerfile
```

-	Layers:
	-	`sha256:dc7d77c7c3dee2e3bddcd598fecea3c46bba9adb7471a95dd7ae555b9e571b53`  
		Last Modified: Mon, 20 Jul 2026 18:49:38 GMT  
		Size: 389.3 KB (389262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:306a8d09ce7672699020f53fcb183ae5242aa03ae0cdd618cac8b05e7b1914cb`  
		Last Modified: Mon, 20 Jul 2026 18:49:37 GMT  
		Size: 15.3 KB (15337 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8.6`

```console
$ docker pull kapacitor@sha256:931c76d9c20090275b7995dcc7ce179a323725c0144802f118c6e94f7ea161ee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8.6` - linux; amd64

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

### `kapacitor:1.8.6` - unknown; unknown

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

### `kapacitor:1.8.6` - linux; arm64 variant v8

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

### `kapacitor:1.8.6` - unknown; unknown

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

## `kapacitor:1.8.6-alpine`

```console
$ docker pull kapacitor@sha256:b3f24ce78141f03e30185738688ff564299a9920d244a3a1794a3b84edf1fc48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.8.6-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:7d30e734c47523a3498eed34139e832c6f8c6fc7cdd00afe7f73199f59291331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97254311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d41e2563825e9aea22ff4612cb8725b76fd05c8e264b2620adb815130c68c5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 18:48:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 18:49:16 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
ENV KAPACITOR_VERSION=1.8.6
# Mon, 20 Jul 2026 18:49:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:49:22 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:49:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:49:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3a8788998b7ea0e3cdbf561f1a5df7f87b21cc567e45ce3f71b3438731e03e`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8782d10ad554fdcdae9d843aa5deda64e0da8f313c2c8ab79c3741f9d6b19444`  
		Last Modified: Mon, 20 Jul 2026 18:49:38 GMT  
		Size: 294.3 KB (294343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed84eed67ca9143e27e9c9f4a14d42553ccb53fe702ec9a6e778491714ce911`  
		Last Modified: Mon, 20 Jul 2026 18:49:40 GMT  
		Size: 93.1 MB (93112775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58948abc6c9ccdb955f021d14cf35281ecfa81c4532c2ad3d02ea51015524104`  
		Last Modified: Mon, 20 Jul 2026 18:49:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fdd794310e6d156bd824e443d86a48fd2c9754f124f135455d86cc233360a31`  
		Last Modified: Mon, 20 Jul 2026 18:49:38 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.6-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:b91380df4545f3b6c4480fe8bc1932dd76ea2e0502d605bcb96735c6425fd0ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.6 KB (404599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5c46fd2ff2cf703e92ef8cb6836a09683dd5a6f52c52bbadc7e876fdcd6433`

```dockerfile
```

-	Layers:
	-	`sha256:dc7d77c7c3dee2e3bddcd598fecea3c46bba9adb7471a95dd7ae555b9e571b53`  
		Last Modified: Mon, 20 Jul 2026 18:49:38 GMT  
		Size: 389.3 KB (389262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:306a8d09ce7672699020f53fcb183ae5242aa03ae0cdd618cac8b05e7b1914cb`  
		Last Modified: Mon, 20 Jul 2026 18:49:37 GMT  
		Size: 15.3 KB (15337 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:b3f24ce78141f03e30185738688ff564299a9920d244a3a1794a3b84edf1fc48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:7d30e734c47523a3498eed34139e832c6f8c6fc7cdd00afe7f73199f59291331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97254311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d41e2563825e9aea22ff4612cb8725b76fd05c8e264b2620adb815130c68c5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 18:48:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 18:49:16 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
ENV KAPACITOR_VERSION=1.8.6
# Mon, 20 Jul 2026 18:49:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:49:22 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:49:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:49:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3a8788998b7ea0e3cdbf561f1a5df7f87b21cc567e45ce3f71b3438731e03e`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8782d10ad554fdcdae9d843aa5deda64e0da8f313c2c8ab79c3741f9d6b19444`  
		Last Modified: Mon, 20 Jul 2026 18:49:38 GMT  
		Size: 294.3 KB (294343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed84eed67ca9143e27e9c9f4a14d42553ccb53fe702ec9a6e778491714ce911`  
		Last Modified: Mon, 20 Jul 2026 18:49:40 GMT  
		Size: 93.1 MB (93112775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58948abc6c9ccdb955f021d14cf35281ecfa81c4532c2ad3d02ea51015524104`  
		Last Modified: Mon, 20 Jul 2026 18:49:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fdd794310e6d156bd824e443d86a48fd2c9754f124f135455d86cc233360a31`  
		Last Modified: Mon, 20 Jul 2026 18:49:38 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:b91380df4545f3b6c4480fe8bc1932dd76ea2e0502d605bcb96735c6425fd0ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.6 KB (404599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5c46fd2ff2cf703e92ef8cb6836a09683dd5a6f52c52bbadc7e876fdcd6433`

```dockerfile
```

-	Layers:
	-	`sha256:dc7d77c7c3dee2e3bddcd598fecea3c46bba9adb7471a95dd7ae555b9e571b53`  
		Last Modified: Mon, 20 Jul 2026 18:49:38 GMT  
		Size: 389.3 KB (389262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:306a8d09ce7672699020f53fcb183ae5242aa03ae0cdd618cac8b05e7b1914cb`  
		Last Modified: Mon, 20 Jul 2026 18:49:37 GMT  
		Size: 15.3 KB (15337 bytes)  
		MIME: application/vnd.in-toto+json

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
