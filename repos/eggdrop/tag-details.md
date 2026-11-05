<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:1.10`](#eggdrop110)
-	[`eggdrop:1.10.2`](#eggdrop1102)
-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:latest`](#eggdroplatest)
-	[`eggdrop:stable`](#eggdropstable)

## `eggdrop:1.10`

```console
$ docker pull eggdrop@sha256:36b28efa056a7b8377e1af9a8306b1dc2072f8bf66dcc6f512582ded6d8e59e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eggdrop:1.10` - linux; amd64

```console
$ docker pull eggdrop@sha256:415d2db1cd5cf377e4aa64d83eb9b2ac395c5daf41168cbbd68a18967b131959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11364526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d6cd85d9304a88aa1d8a1044ec5497ac17e67dd42c3cb4ed8024b22f3eed64e`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:55:37 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 05 Nov 2026 18:55:37 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 05 Nov 2026 18:55:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 05 Nov 2026 18:55:57 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 05 Nov 2026 18:55:57 GMT
ENV NICK=
# Thu, 05 Nov 2026 18:55:57 GMT
ENV SERVER=
# Thu, 05 Nov 2026 18:55:57 GMT
ENV LISTEN=3333
# Thu, 05 Nov 2026 18:55:57 GMT
ENV USERFILE=eggdrop.user
# Thu, 05 Nov 2026 18:55:57 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 05 Nov 2026 18:55:57 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 05 Nov 2026 18:55:57 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 05 Nov 2026 18:55:57 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 18:55:57 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 05 Nov 2026 18:55:57 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 05 Nov 2026 18:55:57 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddff897f59a6e210e00225008b5a284eaa3ce6c9ee60c179c364e045ec13987f`  
		Last Modified: Thu, 05 Nov 2026 18:56:02 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86dd04c3981611e0647f20cb94ee029665ab299d35df816e4657f8fdf35661b9`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 4.8 MB (4770955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df4f1c2d17fc4bfa6d4f3cb205f58116d4210bddeabbd81b0fa6de7416ef270`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 2.7 MB (2736924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8109dc4c23268f3cfd271cc5fe3fad5da32a7c812a4a114a60eac23d268a0813`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 1.9 KB (1946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae2969db49c8aae5504028f447e90e503ca136d3b8b0402b9a53aa2014af288`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 1.1 KB (1125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10` - unknown; unknown

```console
$ docker pull eggdrop@sha256:e6f215d86666fc32ed000088e131484623aa74a972ab8986cb3dc08262dc7a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **756.2 KB (756215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f04acf891203b1f777c198b173b070653dcc5a380034b6e69a2bbe6d023c23cc`

```dockerfile
```

-	Layers:
	-	`sha256:516e5a10ea6065d4b7b9bc10e0dc380c2a6142de9b6d0d51ef6a61634f103c42`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 739.1 KB (739121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:146f887e6d00339594389957a9de89a7b374a535feca9572ed2df0b0f7246bd6`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 17.1 KB (17094 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:1.10` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:538d6f7a003d8c24ed8926209176cad390490d36ba22653da18cd45663d13973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11042551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17ef51a64157265f4efc89318cdb7560d05225d899f3ea792a18da809958283`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:17:11 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 05 Nov 2026 18:17:11 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 05 Nov 2026 18:17:12 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 05 Nov 2026 18:17:35 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 05 Nov 2026 18:17:35 GMT
ENV NICK=
# Thu, 05 Nov 2026 18:17:35 GMT
ENV SERVER=
# Thu, 05 Nov 2026 18:17:35 GMT
ENV LISTEN=3333
# Thu, 05 Nov 2026 18:17:35 GMT
ENV USERFILE=eggdrop.user
# Thu, 05 Nov 2026 18:17:35 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 05 Nov 2026 18:17:35 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 05 Nov 2026 18:17:35 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 05 Nov 2026 18:17:36 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 18:17:36 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 05 Nov 2026 18:17:36 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 05 Nov 2026 18:17:36 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f8435828c0d339a10d0b0b4da3612faf2c64255794e55fe832f1975685225a`  
		Last Modified: Thu, 05 Nov 2026 18:17:40 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fde56e76833eec5f67ce70eff42fa270736f5cb066a9fd8e9c2aab4546a3668`  
		Last Modified: Thu, 05 Nov 2026 18:17:40 GMT  
		Size: 4.7 MB (4726989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2895bcbc06a5fbbf77fe5e987af92669544a8c44a10f63f3564432a72317c0f0`  
		Last Modified: Thu, 05 Nov 2026 18:17:40 GMT  
		Size: 2.8 MB (2753246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a49bbf5c0871b4a79300df8753e0f9a8372899a48f3d5416cfc729a98ceea0b3`  
		Last Modified: Thu, 05 Nov 2026 18:17:40 GMT  
		Size: 1.9 KB (1950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b429a28fd277ac8f709c1cd5ffd5d7f72625f19f1908174fce666c78c74b9b`  
		Last Modified: Thu, 05 Nov 2026 18:17:41 GMT  
		Size: 1.1 KB (1128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10` - unknown; unknown

```console
$ docker pull eggdrop@sha256:49218bce3c98ce92dfc55a15174dce1de88da47f9ca8311e7e1304e744879d22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 KB (16985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74ef87cf51975322f7b59e2216bc0a16457b591829c350bf92ec98690f0d4dd0`

```dockerfile
```

-	Layers:
	-	`sha256:eeea6c3d08ee4ac4689d0d76aa28548bd1150153d731080733c69a76e5547127`  
		Last Modified: Thu, 05 Nov 2026 18:17:39 GMT  
		Size: 17.0 KB (16985 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:1.10` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:d95079dbfeecc1fe45254c5b710fa99680c6e7f70b56a1a93f8dddad50420ce5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11789269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6f0100d5984f46266f54c5dfb4eaa68dbfe5fe6efac34280913fe511fab02e9`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:51:12 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 05 Nov 2026 18:51:12 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 05 Nov 2026 18:51:13 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 05 Nov 2026 18:51:33 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 05 Nov 2026 18:51:33 GMT
ENV NICK=
# Thu, 05 Nov 2026 18:51:33 GMT
ENV SERVER=
# Thu, 05 Nov 2026 18:51:33 GMT
ENV LISTEN=3333
# Thu, 05 Nov 2026 18:51:33 GMT
ENV USERFILE=eggdrop.user
# Thu, 05 Nov 2026 18:51:33 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 05 Nov 2026 18:51:33 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 05 Nov 2026 18:51:33 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 05 Nov 2026 18:51:33 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 18:51:33 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 05 Nov 2026 18:51:33 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 05 Nov 2026 18:51:33 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ee9e5165c9649eaee98d3bd0314636160d1ef9cdfd596de9d71d444ca54ae2`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c838d0dad0fd004792011729d5aa89ca1677fc578696eb20ffa10cd8b7c8e9f3`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 4.8 MB (4844896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad7b50abb226f5516ded65b458015af879fa774342021bf89aad7ff65a038d5`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 2.8 MB (2750092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:214c366d53f63625c349cdaec6eefdf1b7a1ab24d54bb55a33be0e4a32700807`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 1.9 KB (1945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5eb18b17ac15432031b6153ff76a936caf9c2d2b8368a28dfe4c2ce642503bf`  
		Last Modified: Thu, 05 Nov 2026 18:51:41 GMT  
		Size: 1.1 KB (1127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10` - unknown; unknown

```console
$ docker pull eggdrop@sha256:949c713a2ad83bdf54e47f2f9cbf08a064839c0063ec88b0b97368ebe98c3ae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.8 KB (755755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee8232e41800e102211f60060d825396e5cac99d8a99e0e4fc1a2c4366df453`

```dockerfile
```

-	Layers:
	-	`sha256:65be871692d88d6ba255e43ac4e767c4591f6e6c03d8ce15cd2c791fe3df9ba4`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 738.5 KB (738527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afbc29c953501a96f7bbc5ac1513af69c4eef568fa0836df5ff1cec5131fd425`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 17.2 KB (17228 bytes)  
		MIME: application/vnd.in-toto+json

## `eggdrop:1.10.2`

```console
$ docker pull eggdrop@sha256:36b28efa056a7b8377e1af9a8306b1dc2072f8bf66dcc6f512582ded6d8e59e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eggdrop:1.10.2` - linux; amd64

```console
$ docker pull eggdrop@sha256:415d2db1cd5cf377e4aa64d83eb9b2ac395c5daf41168cbbd68a18967b131959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11364526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d6cd85d9304a88aa1d8a1044ec5497ac17e67dd42c3cb4ed8024b22f3eed64e`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:55:37 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 05 Nov 2026 18:55:37 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 05 Nov 2026 18:55:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 05 Nov 2026 18:55:57 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 05 Nov 2026 18:55:57 GMT
ENV NICK=
# Thu, 05 Nov 2026 18:55:57 GMT
ENV SERVER=
# Thu, 05 Nov 2026 18:55:57 GMT
ENV LISTEN=3333
# Thu, 05 Nov 2026 18:55:57 GMT
ENV USERFILE=eggdrop.user
# Thu, 05 Nov 2026 18:55:57 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 05 Nov 2026 18:55:57 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 05 Nov 2026 18:55:57 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 05 Nov 2026 18:55:57 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 18:55:57 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 05 Nov 2026 18:55:57 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 05 Nov 2026 18:55:57 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddff897f59a6e210e00225008b5a284eaa3ce6c9ee60c179c364e045ec13987f`  
		Last Modified: Thu, 05 Nov 2026 18:56:02 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86dd04c3981611e0647f20cb94ee029665ab299d35df816e4657f8fdf35661b9`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 4.8 MB (4770955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df4f1c2d17fc4bfa6d4f3cb205f58116d4210bddeabbd81b0fa6de7416ef270`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 2.7 MB (2736924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8109dc4c23268f3cfd271cc5fe3fad5da32a7c812a4a114a60eac23d268a0813`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 1.9 KB (1946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae2969db49c8aae5504028f447e90e503ca136d3b8b0402b9a53aa2014af288`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 1.1 KB (1125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10.2` - unknown; unknown

```console
$ docker pull eggdrop@sha256:e6f215d86666fc32ed000088e131484623aa74a972ab8986cb3dc08262dc7a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **756.2 KB (756215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f04acf891203b1f777c198b173b070653dcc5a380034b6e69a2bbe6d023c23cc`

```dockerfile
```

-	Layers:
	-	`sha256:516e5a10ea6065d4b7b9bc10e0dc380c2a6142de9b6d0d51ef6a61634f103c42`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 739.1 KB (739121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:146f887e6d00339594389957a9de89a7b374a535feca9572ed2df0b0f7246bd6`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 17.1 KB (17094 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:1.10.2` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:538d6f7a003d8c24ed8926209176cad390490d36ba22653da18cd45663d13973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11042551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17ef51a64157265f4efc89318cdb7560d05225d899f3ea792a18da809958283`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:17:11 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 05 Nov 2026 18:17:11 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 05 Nov 2026 18:17:12 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 05 Nov 2026 18:17:35 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 05 Nov 2026 18:17:35 GMT
ENV NICK=
# Thu, 05 Nov 2026 18:17:35 GMT
ENV SERVER=
# Thu, 05 Nov 2026 18:17:35 GMT
ENV LISTEN=3333
# Thu, 05 Nov 2026 18:17:35 GMT
ENV USERFILE=eggdrop.user
# Thu, 05 Nov 2026 18:17:35 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 05 Nov 2026 18:17:35 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 05 Nov 2026 18:17:35 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 05 Nov 2026 18:17:36 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 18:17:36 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 05 Nov 2026 18:17:36 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 05 Nov 2026 18:17:36 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f8435828c0d339a10d0b0b4da3612faf2c64255794e55fe832f1975685225a`  
		Last Modified: Thu, 05 Nov 2026 18:17:40 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fde56e76833eec5f67ce70eff42fa270736f5cb066a9fd8e9c2aab4546a3668`  
		Last Modified: Thu, 05 Nov 2026 18:17:40 GMT  
		Size: 4.7 MB (4726989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2895bcbc06a5fbbf77fe5e987af92669544a8c44a10f63f3564432a72317c0f0`  
		Last Modified: Thu, 05 Nov 2026 18:17:40 GMT  
		Size: 2.8 MB (2753246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a49bbf5c0871b4a79300df8753e0f9a8372899a48f3d5416cfc729a98ceea0b3`  
		Last Modified: Thu, 05 Nov 2026 18:17:40 GMT  
		Size: 1.9 KB (1950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b429a28fd277ac8f709c1cd5ffd5d7f72625f19f1908174fce666c78c74b9b`  
		Last Modified: Thu, 05 Nov 2026 18:17:41 GMT  
		Size: 1.1 KB (1128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10.2` - unknown; unknown

```console
$ docker pull eggdrop@sha256:49218bce3c98ce92dfc55a15174dce1de88da47f9ca8311e7e1304e744879d22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 KB (16985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74ef87cf51975322f7b59e2216bc0a16457b591829c350bf92ec98690f0d4dd0`

```dockerfile
```

-	Layers:
	-	`sha256:eeea6c3d08ee4ac4689d0d76aa28548bd1150153d731080733c69a76e5547127`  
		Last Modified: Thu, 05 Nov 2026 18:17:39 GMT  
		Size: 17.0 KB (16985 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:1.10.2` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:d95079dbfeecc1fe45254c5b710fa99680c6e7f70b56a1a93f8dddad50420ce5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11789269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6f0100d5984f46266f54c5dfb4eaa68dbfe5fe6efac34280913fe511fab02e9`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:51:12 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 05 Nov 2026 18:51:12 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 05 Nov 2026 18:51:13 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 05 Nov 2026 18:51:33 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 05 Nov 2026 18:51:33 GMT
ENV NICK=
# Thu, 05 Nov 2026 18:51:33 GMT
ENV SERVER=
# Thu, 05 Nov 2026 18:51:33 GMT
ENV LISTEN=3333
# Thu, 05 Nov 2026 18:51:33 GMT
ENV USERFILE=eggdrop.user
# Thu, 05 Nov 2026 18:51:33 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 05 Nov 2026 18:51:33 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 05 Nov 2026 18:51:33 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 05 Nov 2026 18:51:33 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 18:51:33 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 05 Nov 2026 18:51:33 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 05 Nov 2026 18:51:33 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ee9e5165c9649eaee98d3bd0314636160d1ef9cdfd596de9d71d444ca54ae2`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c838d0dad0fd004792011729d5aa89ca1677fc578696eb20ffa10cd8b7c8e9f3`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 4.8 MB (4844896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad7b50abb226f5516ded65b458015af879fa774342021bf89aad7ff65a038d5`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 2.8 MB (2750092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:214c366d53f63625c349cdaec6eefdf1b7a1ab24d54bb55a33be0e4a32700807`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 1.9 KB (1945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5eb18b17ac15432031b6153ff76a936caf9c2d2b8368a28dfe4c2ce642503bf`  
		Last Modified: Thu, 05 Nov 2026 18:51:41 GMT  
		Size: 1.1 KB (1127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10.2` - unknown; unknown

```console
$ docker pull eggdrop@sha256:949c713a2ad83bdf54e47f2f9cbf08a064839c0063ec88b0b97368ebe98c3ae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.8 KB (755755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee8232e41800e102211f60060d825396e5cac99d8a99e0e4fc1a2c4366df453`

```dockerfile
```

-	Layers:
	-	`sha256:65be871692d88d6ba255e43ac4e767c4591f6e6c03d8ce15cd2c791fe3df9ba4`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 738.5 KB (738527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afbc29c953501a96f7bbc5ac1513af69c4eef568fa0836df5ff1cec5131fd425`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 17.2 KB (17228 bytes)  
		MIME: application/vnd.in-toto+json

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

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:36b28efa056a7b8377e1af9a8306b1dc2072f8bf66dcc6f512582ded6d8e59e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eggdrop:latest` - linux; amd64

```console
$ docker pull eggdrop@sha256:415d2db1cd5cf377e4aa64d83eb9b2ac395c5daf41168cbbd68a18967b131959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11364526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d6cd85d9304a88aa1d8a1044ec5497ac17e67dd42c3cb4ed8024b22f3eed64e`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:55:37 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 05 Nov 2026 18:55:37 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 05 Nov 2026 18:55:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 05 Nov 2026 18:55:57 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 05 Nov 2026 18:55:57 GMT
ENV NICK=
# Thu, 05 Nov 2026 18:55:57 GMT
ENV SERVER=
# Thu, 05 Nov 2026 18:55:57 GMT
ENV LISTEN=3333
# Thu, 05 Nov 2026 18:55:57 GMT
ENV USERFILE=eggdrop.user
# Thu, 05 Nov 2026 18:55:57 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 05 Nov 2026 18:55:57 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 05 Nov 2026 18:55:57 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 05 Nov 2026 18:55:57 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 18:55:57 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 05 Nov 2026 18:55:57 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 05 Nov 2026 18:55:57 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddff897f59a6e210e00225008b5a284eaa3ce6c9ee60c179c364e045ec13987f`  
		Last Modified: Thu, 05 Nov 2026 18:56:02 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86dd04c3981611e0647f20cb94ee029665ab299d35df816e4657f8fdf35661b9`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 4.8 MB (4770955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df4f1c2d17fc4bfa6d4f3cb205f58116d4210bddeabbd81b0fa6de7416ef270`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 2.7 MB (2736924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8109dc4c23268f3cfd271cc5fe3fad5da32a7c812a4a114a60eac23d268a0813`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 1.9 KB (1946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae2969db49c8aae5504028f447e90e503ca136d3b8b0402b9a53aa2014af288`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 1.1 KB (1125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:latest` - unknown; unknown

```console
$ docker pull eggdrop@sha256:e6f215d86666fc32ed000088e131484623aa74a972ab8986cb3dc08262dc7a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **756.2 KB (756215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f04acf891203b1f777c198b173b070653dcc5a380034b6e69a2bbe6d023c23cc`

```dockerfile
```

-	Layers:
	-	`sha256:516e5a10ea6065d4b7b9bc10e0dc380c2a6142de9b6d0d51ef6a61634f103c42`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 739.1 KB (739121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:146f887e6d00339594389957a9de89a7b374a535feca9572ed2df0b0f7246bd6`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 17.1 KB (17094 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:latest` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:538d6f7a003d8c24ed8926209176cad390490d36ba22653da18cd45663d13973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11042551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17ef51a64157265f4efc89318cdb7560d05225d899f3ea792a18da809958283`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:17:11 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 05 Nov 2026 18:17:11 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 05 Nov 2026 18:17:12 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 05 Nov 2026 18:17:35 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 05 Nov 2026 18:17:35 GMT
ENV NICK=
# Thu, 05 Nov 2026 18:17:35 GMT
ENV SERVER=
# Thu, 05 Nov 2026 18:17:35 GMT
ENV LISTEN=3333
# Thu, 05 Nov 2026 18:17:35 GMT
ENV USERFILE=eggdrop.user
# Thu, 05 Nov 2026 18:17:35 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 05 Nov 2026 18:17:35 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 05 Nov 2026 18:17:35 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 05 Nov 2026 18:17:36 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 18:17:36 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 05 Nov 2026 18:17:36 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 05 Nov 2026 18:17:36 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f8435828c0d339a10d0b0b4da3612faf2c64255794e55fe832f1975685225a`  
		Last Modified: Thu, 05 Nov 2026 18:17:40 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fde56e76833eec5f67ce70eff42fa270736f5cb066a9fd8e9c2aab4546a3668`  
		Last Modified: Thu, 05 Nov 2026 18:17:40 GMT  
		Size: 4.7 MB (4726989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2895bcbc06a5fbbf77fe5e987af92669544a8c44a10f63f3564432a72317c0f0`  
		Last Modified: Thu, 05 Nov 2026 18:17:40 GMT  
		Size: 2.8 MB (2753246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a49bbf5c0871b4a79300df8753e0f9a8372899a48f3d5416cfc729a98ceea0b3`  
		Last Modified: Thu, 05 Nov 2026 18:17:40 GMT  
		Size: 1.9 KB (1950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b429a28fd277ac8f709c1cd5ffd5d7f72625f19f1908174fce666c78c74b9b`  
		Last Modified: Thu, 05 Nov 2026 18:17:41 GMT  
		Size: 1.1 KB (1128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:latest` - unknown; unknown

```console
$ docker pull eggdrop@sha256:49218bce3c98ce92dfc55a15174dce1de88da47f9ca8311e7e1304e744879d22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 KB (16985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74ef87cf51975322f7b59e2216bc0a16457b591829c350bf92ec98690f0d4dd0`

```dockerfile
```

-	Layers:
	-	`sha256:eeea6c3d08ee4ac4689d0d76aa28548bd1150153d731080733c69a76e5547127`  
		Last Modified: Thu, 05 Nov 2026 18:17:39 GMT  
		Size: 17.0 KB (16985 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:latest` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:d95079dbfeecc1fe45254c5b710fa99680c6e7f70b56a1a93f8dddad50420ce5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11789269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6f0100d5984f46266f54c5dfb4eaa68dbfe5fe6efac34280913fe511fab02e9`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:51:12 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 05 Nov 2026 18:51:12 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 05 Nov 2026 18:51:13 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 05 Nov 2026 18:51:33 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 05 Nov 2026 18:51:33 GMT
ENV NICK=
# Thu, 05 Nov 2026 18:51:33 GMT
ENV SERVER=
# Thu, 05 Nov 2026 18:51:33 GMT
ENV LISTEN=3333
# Thu, 05 Nov 2026 18:51:33 GMT
ENV USERFILE=eggdrop.user
# Thu, 05 Nov 2026 18:51:33 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 05 Nov 2026 18:51:33 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 05 Nov 2026 18:51:33 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 05 Nov 2026 18:51:33 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 18:51:33 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 05 Nov 2026 18:51:33 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 05 Nov 2026 18:51:33 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ee9e5165c9649eaee98d3bd0314636160d1ef9cdfd596de9d71d444ca54ae2`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c838d0dad0fd004792011729d5aa89ca1677fc578696eb20ffa10cd8b7c8e9f3`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 4.8 MB (4844896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad7b50abb226f5516ded65b458015af879fa774342021bf89aad7ff65a038d5`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 2.8 MB (2750092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:214c366d53f63625c349cdaec6eefdf1b7a1ab24d54bb55a33be0e4a32700807`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 1.9 KB (1945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5eb18b17ac15432031b6153ff76a936caf9c2d2b8368a28dfe4c2ce642503bf`  
		Last Modified: Thu, 05 Nov 2026 18:51:41 GMT  
		Size: 1.1 KB (1127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:latest` - unknown; unknown

```console
$ docker pull eggdrop@sha256:949c713a2ad83bdf54e47f2f9cbf08a064839c0063ec88b0b97368ebe98c3ae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.8 KB (755755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee8232e41800e102211f60060d825396e5cac99d8a99e0e4fc1a2c4366df453`

```dockerfile
```

-	Layers:
	-	`sha256:65be871692d88d6ba255e43ac4e767c4591f6e6c03d8ce15cd2c791fe3df9ba4`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 738.5 KB (738527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afbc29c953501a96f7bbc5ac1513af69c4eef568fa0836df5ff1cec5131fd425`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 17.2 KB (17228 bytes)  
		MIME: application/vnd.in-toto+json

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:36b28efa056a7b8377e1af9a8306b1dc2072f8bf66dcc6f512582ded6d8e59e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eggdrop:stable` - linux; amd64

```console
$ docker pull eggdrop@sha256:415d2db1cd5cf377e4aa64d83eb9b2ac395c5daf41168cbbd68a18967b131959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11364526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d6cd85d9304a88aa1d8a1044ec5497ac17e67dd42c3cb4ed8024b22f3eed64e`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:55:37 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 05 Nov 2026 18:55:37 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 05 Nov 2026 18:55:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 05 Nov 2026 18:55:57 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 05 Nov 2026 18:55:57 GMT
ENV NICK=
# Thu, 05 Nov 2026 18:55:57 GMT
ENV SERVER=
# Thu, 05 Nov 2026 18:55:57 GMT
ENV LISTEN=3333
# Thu, 05 Nov 2026 18:55:57 GMT
ENV USERFILE=eggdrop.user
# Thu, 05 Nov 2026 18:55:57 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 05 Nov 2026 18:55:57 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 05 Nov 2026 18:55:57 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 05 Nov 2026 18:55:57 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 18:55:57 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 05 Nov 2026 18:55:57 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 05 Nov 2026 18:55:57 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddff897f59a6e210e00225008b5a284eaa3ce6c9ee60c179c364e045ec13987f`  
		Last Modified: Thu, 05 Nov 2026 18:56:02 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86dd04c3981611e0647f20cb94ee029665ab299d35df816e4657f8fdf35661b9`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 4.8 MB (4770955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df4f1c2d17fc4bfa6d4f3cb205f58116d4210bddeabbd81b0fa6de7416ef270`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 2.7 MB (2736924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8109dc4c23268f3cfd271cc5fe3fad5da32a7c812a4a114a60eac23d268a0813`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 1.9 KB (1946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae2969db49c8aae5504028f447e90e503ca136d3b8b0402b9a53aa2014af288`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 1.1 KB (1125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:stable` - unknown; unknown

```console
$ docker pull eggdrop@sha256:e6f215d86666fc32ed000088e131484623aa74a972ab8986cb3dc08262dc7a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **756.2 KB (756215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f04acf891203b1f777c198b173b070653dcc5a380034b6e69a2bbe6d023c23cc`

```dockerfile
```

-	Layers:
	-	`sha256:516e5a10ea6065d4b7b9bc10e0dc380c2a6142de9b6d0d51ef6a61634f103c42`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 739.1 KB (739121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:146f887e6d00339594389957a9de89a7b374a535feca9572ed2df0b0f7246bd6`  
		Last Modified: Thu, 05 Nov 2026 18:56:03 GMT  
		Size: 17.1 KB (17094 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:stable` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:538d6f7a003d8c24ed8926209176cad390490d36ba22653da18cd45663d13973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11042551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17ef51a64157265f4efc89318cdb7560d05225d899f3ea792a18da809958283`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:17:11 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 05 Nov 2026 18:17:11 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 05 Nov 2026 18:17:12 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 05 Nov 2026 18:17:35 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 05 Nov 2026 18:17:35 GMT
ENV NICK=
# Thu, 05 Nov 2026 18:17:35 GMT
ENV SERVER=
# Thu, 05 Nov 2026 18:17:35 GMT
ENV LISTEN=3333
# Thu, 05 Nov 2026 18:17:35 GMT
ENV USERFILE=eggdrop.user
# Thu, 05 Nov 2026 18:17:35 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 05 Nov 2026 18:17:35 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 05 Nov 2026 18:17:35 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 05 Nov 2026 18:17:36 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 18:17:36 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 05 Nov 2026 18:17:36 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 05 Nov 2026 18:17:36 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f8435828c0d339a10d0b0b4da3612faf2c64255794e55fe832f1975685225a`  
		Last Modified: Thu, 05 Nov 2026 18:17:40 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fde56e76833eec5f67ce70eff42fa270736f5cb066a9fd8e9c2aab4546a3668`  
		Last Modified: Thu, 05 Nov 2026 18:17:40 GMT  
		Size: 4.7 MB (4726989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2895bcbc06a5fbbf77fe5e987af92669544a8c44a10f63f3564432a72317c0f0`  
		Last Modified: Thu, 05 Nov 2026 18:17:40 GMT  
		Size: 2.8 MB (2753246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a49bbf5c0871b4a79300df8753e0f9a8372899a48f3d5416cfc729a98ceea0b3`  
		Last Modified: Thu, 05 Nov 2026 18:17:40 GMT  
		Size: 1.9 KB (1950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b429a28fd277ac8f709c1cd5ffd5d7f72625f19f1908174fce666c78c74b9b`  
		Last Modified: Thu, 05 Nov 2026 18:17:41 GMT  
		Size: 1.1 KB (1128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:stable` - unknown; unknown

```console
$ docker pull eggdrop@sha256:49218bce3c98ce92dfc55a15174dce1de88da47f9ca8311e7e1304e744879d22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 KB (16985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74ef87cf51975322f7b59e2216bc0a16457b591829c350bf92ec98690f0d4dd0`

```dockerfile
```

-	Layers:
	-	`sha256:eeea6c3d08ee4ac4689d0d76aa28548bd1150153d731080733c69a76e5547127`  
		Last Modified: Thu, 05 Nov 2026 18:17:39 GMT  
		Size: 17.0 KB (16985 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:stable` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:d95079dbfeecc1fe45254c5b710fa99680c6e7f70b56a1a93f8dddad50420ce5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11789269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6f0100d5984f46266f54c5dfb4eaa68dbfe5fe6efac34280913fe511fab02e9`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:51:12 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 05 Nov 2026 18:51:12 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 05 Nov 2026 18:51:13 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 05 Nov 2026 18:51:33 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 05 Nov 2026 18:51:33 GMT
ENV NICK=
# Thu, 05 Nov 2026 18:51:33 GMT
ENV SERVER=
# Thu, 05 Nov 2026 18:51:33 GMT
ENV LISTEN=3333
# Thu, 05 Nov 2026 18:51:33 GMT
ENV USERFILE=eggdrop.user
# Thu, 05 Nov 2026 18:51:33 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 05 Nov 2026 18:51:33 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 05 Nov 2026 18:51:33 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 05 Nov 2026 18:51:33 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 18:51:33 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 05 Nov 2026 18:51:33 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 05 Nov 2026 18:51:33 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ee9e5165c9649eaee98d3bd0314636160d1ef9cdfd596de9d71d444ca54ae2`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c838d0dad0fd004792011729d5aa89ca1677fc578696eb20ffa10cd8b7c8e9f3`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 4.8 MB (4844896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad7b50abb226f5516ded65b458015af879fa774342021bf89aad7ff65a038d5`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 2.8 MB (2750092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:214c366d53f63625c349cdaec6eefdf1b7a1ab24d54bb55a33be0e4a32700807`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 1.9 KB (1945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5eb18b17ac15432031b6153ff76a936caf9c2d2b8368a28dfe4c2ce642503bf`  
		Last Modified: Thu, 05 Nov 2026 18:51:41 GMT  
		Size: 1.1 KB (1127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:stable` - unknown; unknown

```console
$ docker pull eggdrop@sha256:949c713a2ad83bdf54e47f2f9cbf08a064839c0063ec88b0b97368ebe98c3ae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.8 KB (755755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee8232e41800e102211f60060d825396e5cac99d8a99e0e4fc1a2c4366df453`

```dockerfile
```

-	Layers:
	-	`sha256:65be871692d88d6ba255e43ac4e767c4591f6e6c03d8ce15cd2c791fe3df9ba4`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 738.5 KB (738527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afbc29c953501a96f7bbc5ac1513af69c4eef568fa0836df5ff1cec5131fd425`  
		Last Modified: Thu, 05 Nov 2026 18:51:39 GMT  
		Size: 17.2 KB (17228 bytes)  
		MIME: application/vnd.in-toto+json
