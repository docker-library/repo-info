## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:be8702a408bc9480e3da2547387e4ed09633235162e3d04446c5b824022fc72a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:765ac54485244fdfb2821d084c32aa3e611c5a8f901cbdfb199e3f068ee0deb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11361133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7365d0c493ae90bce289d41aeeb33c4c6937fb0262544e612b7f377003379f57`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:55:36 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 05 Nov 2026 18:55:36 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 05 Nov 2026 18:55:37 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 05 Nov 2026 18:55:37 GMT
ENV EGGDROP_SHA256=fdfc2d08c17f6318b351981a64b193228852bb740ad94d2b43d3cd5585067c4b
# Thu, 05 Nov 2026 18:55:37 GMT
ENV EGGDROP_COMMIT=d93dbd7444d2519b83f613fe4d21e36ae4cc5797
# Thu, 05 Nov 2026 18:55:53 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256 *develop.tar.gz" | sha256sum -c -   && tar -zxf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 05 Nov 2026 18:55:53 GMT
ENV NICK=
# Thu, 05 Nov 2026 18:55:53 GMT
ENV SERVER=
# Thu, 05 Nov 2026 18:55:53 GMT
ENV LISTEN=3333
# Thu, 05 Nov 2026 18:55:53 GMT
ENV USERFILE=eggdrop.user
# Thu, 05 Nov 2026 18:55:53 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 05 Nov 2026 18:55:53 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 05 Nov 2026 18:55:53 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 05 Nov 2026 18:55:53 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 18:55:53 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 05 Nov 2026 18:55:53 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 05 Nov 2026 18:55:53 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b04b1e87f365aedf329938f31a4e0d44d47d502d49480c2a8abe9b971fada5be`  
		Last Modified: Thu, 05 Nov 2026 18:55:59 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d6913b83aac5486d8e7f16e7fe9b7602fa53311dfca98b917dcf883e2da8b05`  
		Last Modified: Thu, 05 Nov 2026 18:55:59 GMT  
		Size: 4.8 MB (4770933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67049a2805c7a7f7cb9e9289b303446edfafba461e7f7cfa174773e73ece9ffa`  
		Last Modified: Thu, 05 Nov 2026 18:55:59 GMT  
		Size: 2.7 MB (2733535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5691ce1aa95eb434646957e233f4e9db8c5218cb96ad7e37c8c2d9c8fa4bbe65`  
		Last Modified: Thu, 05 Nov 2026 18:55:59 GMT  
		Size: 2.0 KB (1964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3428ed123d7064858ee4364f19312dea7e05e2ffbc214f584f95207621d8b698`  
		Last Modified: Thu, 05 Nov 2026 18:56:00 GMT  
		Size: 1.1 KB (1125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:develop` - unknown; unknown

```console
$ docker pull eggdrop@sha256:f6a13b6b8743e6fe9a8b16d83c43b72bbcc226937d613a6a5de9431f6f3e0118
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **754.0 KB (754019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5f48267775c9c8d5c371d80e4a392b20536027d2a010cd90b2323b3c8f0d41`

```dockerfile
```

-	Layers:
	-	`sha256:244c1780591fe167af8e12d72a5796e5a13051dd52a9075d21d94d3ca9e067bc`  
		Last Modified: Thu, 05 Nov 2026 18:55:59 GMT  
		Size: 738.2 KB (738227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:032d5a690e12173aefe8d76cd0fc3c077935a9a28d914d7771d2e301a06b858b`  
		Last Modified: Thu, 05 Nov 2026 18:55:59 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:develop` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:e8983b98c87f9ee29dcdc88dd1f1aa44dac587940ed2e1130197d382203aba82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11038977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88bbf49cef9c90bf1b27bf48b3df94e24ad6c37792d19b798cb7a3543e950255`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:56 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 05 Nov 2026 18:16:56 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 05 Nov 2026 18:16:58 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 05 Nov 2026 18:16:58 GMT
ENV EGGDROP_SHA256=fdfc2d08c17f6318b351981a64b193228852bb740ad94d2b43d3cd5585067c4b
# Thu, 05 Nov 2026 18:16:58 GMT
ENV EGGDROP_COMMIT=d93dbd7444d2519b83f613fe4d21e36ae4cc5797
# Thu, 05 Nov 2026 18:17:18 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256 *develop.tar.gz" | sha256sum -c -   && tar -zxf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 05 Nov 2026 18:17:18 GMT
ENV NICK=
# Thu, 05 Nov 2026 18:17:18 GMT
ENV SERVER=
# Thu, 05 Nov 2026 18:17:18 GMT
ENV LISTEN=3333
# Thu, 05 Nov 2026 18:17:18 GMT
ENV USERFILE=eggdrop.user
# Thu, 05 Nov 2026 18:17:18 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 05 Nov 2026 18:17:18 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 05 Nov 2026 18:17:18 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 05 Nov 2026 18:17:18 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 18:17:18 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 05 Nov 2026 18:17:18 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 05 Nov 2026 18:17:18 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33518ff2ceb6333c1df5a13a59db0361cc246586ccbc8fc2043c6b4b0fca2ea`  
		Last Modified: Thu, 05 Nov 2026 18:17:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:005fd4f3e32034a81cdf668a6714253599bb5a3a3526b303886f76f673100dd3`  
		Last Modified: Thu, 05 Nov 2026 18:17:23 GMT  
		Size: 4.7 MB (4726980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acce5fb6eef4ae69f82dece8951f03bbf8f5a25c302a268cb61dbc2977c9f25b`  
		Last Modified: Thu, 05 Nov 2026 18:17:23 GMT  
		Size: 2.7 MB (2749669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df3787a14aad83af33685d592803c4aa1531584e2bba2cb3c24c0225a22bd79`  
		Last Modified: Thu, 05 Nov 2026 18:17:23 GMT  
		Size: 2.0 KB (1964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b056506a4ee18295ba16c065ce193deaaa5c35db678447f5d56378e0ef8adb63`  
		Last Modified: Thu, 05 Nov 2026 18:17:24 GMT  
		Size: 1.1 KB (1125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:develop` - unknown; unknown

```console
$ docker pull eggdrop@sha256:1b989a3e3d7d6a58d02147a626059f6cc16e7105772006c23d2d533b973bc59e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 KB (15659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5bd6c3a8cd094c17cef53b0448150f4cc936b3efe9ea2aee7189ad1ec980e5a`

```dockerfile
```

-	Layers:
	-	`sha256:3e715f919d2b0127bd6f1e505473dbaa8da7fe4ab77ff336d29a315e67b9c2e4`  
		Last Modified: Thu, 05 Nov 2026 18:17:23 GMT  
		Size: 15.7 KB (15659 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:develop` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:f6bd0e98f4b7c984dbf6ca39e9ee93e644b73be410f6eb6084898c355a03294f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11786357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:349c0a937db9ac90291e38bf25aff9109434ad97b1270af17c68c06e9960f30e`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:51:07 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 05 Nov 2026 18:51:07 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 05 Nov 2026 18:51:08 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 05 Nov 2026 18:51:08 GMT
ENV EGGDROP_SHA256=fdfc2d08c17f6318b351981a64b193228852bb740ad94d2b43d3cd5585067c4b
# Thu, 05 Nov 2026 18:51:08 GMT
ENV EGGDROP_COMMIT=d93dbd7444d2519b83f613fe4d21e36ae4cc5797
# Thu, 05 Nov 2026 18:51:26 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256 *develop.tar.gz" | sha256sum -c -   && tar -zxf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 05 Nov 2026 18:51:26 GMT
ENV NICK=
# Thu, 05 Nov 2026 18:51:26 GMT
ENV SERVER=
# Thu, 05 Nov 2026 18:51:26 GMT
ENV LISTEN=3333
# Thu, 05 Nov 2026 18:51:26 GMT
ENV USERFILE=eggdrop.user
# Thu, 05 Nov 2026 18:51:26 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 05 Nov 2026 18:51:26 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 05 Nov 2026 18:51:26 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 05 Nov 2026 18:51:26 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 18:51:26 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 05 Nov 2026 18:51:26 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 05 Nov 2026 18:51:26 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f077691cda2e6577c8ea67a5b8f9a92df252d71b552ccff96e393371aff7142`  
		Last Modified: Thu, 05 Nov 2026 18:51:32 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:300852390a8fdbb51b3f861fe77a02f6e4237abc03240ceb4185dee2e8a233d7`  
		Last Modified: Thu, 05 Nov 2026 18:51:32 GMT  
		Size: 4.8 MB (4844891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0c114e206cf1cd0ef1304439f971a4ef13aeec579b1d4a073885648bbcf320`  
		Last Modified: Thu, 05 Nov 2026 18:51:32 GMT  
		Size: 2.7 MB (2747161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe38e300372483f043cf3312bbdec4ada72a3417ea1e7d5d8c8830304c68ae6f`  
		Last Modified: Thu, 05 Nov 2026 18:51:32 GMT  
		Size: 2.0 KB (1967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907411113ec78e6d3768c1a40f8b75655cd51bcaf997fe2ca825309574dddef5`  
		Last Modified: Thu, 05 Nov 2026 18:51:33 GMT  
		Size: 1.1 KB (1129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:develop` - unknown; unknown

```console
$ docker pull eggdrop@sha256:7bda1470477433a99796624d859d016e2fbb31be347b203fcd6f39c36c40804d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.5 KB (753487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf395c2f35ba9ac124a09bce3c87cad1a96dd187acf724fb4816028845e39379`

```dockerfile
```

-	Layers:
	-	`sha256:d29fff9908f353856368a6410c1d50966ded12779d18e3ef858f04699287b4ee`  
		Last Modified: Thu, 05 Nov 2026 18:51:32 GMT  
		Size: 737.6 KB (737597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0eb077edee8b2d880e9976b8806fd5489163375e87bfba494d5f59a022948939`  
		Last Modified: Thu, 05 Nov 2026 18:51:32 GMT  
		Size: 15.9 KB (15890 bytes)  
		MIME: application/vnd.in-toto+json
