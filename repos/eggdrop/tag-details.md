<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:1.10`](#eggdrop110)
-	[`eggdrop:1.10.2`](#eggdrop1102)
-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:latest`](#eggdroplatest)
-	[`eggdrop:stable`](#eggdropstable)

## `eggdrop:1.10`

```console
$ docker pull eggdrop@sha256:c5aa5593917daaa86bf2fe9233d6510ff776dca205fd0be8bfa231d9cd57a509
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
$ docker pull eggdrop@sha256:0bd43cf78a845a14bf7a4c52b9f33a3f18d768c8eee8c07c54cf414c5d0ba5f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13821546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e74403e9246f462c8ac4bf194b1df8d6ed604451d265e0480a5ceb47a4c8679`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:18:41 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Tue, 08 Sep 2026 19:18:41 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Tue, 08 Sep 2026 19:18:41 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Tue, 08 Sep 2026 19:18:59 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Tue, 08 Sep 2026 19:18:59 GMT
ENV NICK=
# Tue, 08 Sep 2026 19:18:59 GMT
ENV SERVER=
# Tue, 08 Sep 2026 19:18:59 GMT
ENV LISTEN=3333
# Tue, 08 Sep 2026 19:18:59 GMT
ENV USERFILE=eggdrop.user
# Tue, 08 Sep 2026 19:18:59 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 08 Sep 2026 19:18:59 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 08 Sep 2026 19:18:59 GMT
EXPOSE map[3333/tcp:{}]
# Tue, 08 Sep 2026 19:18:59 GMT
COPY entrypoint.sh ./ # buildkit
# Tue, 08 Sep 2026 19:18:59 GMT
COPY docker.tcl ./scripts/ # buildkit
# Tue, 08 Sep 2026 19:18:59 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 08 Sep 2026 19:18:59 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08e0c1ed08ec02972b190ee2b1383335bbb4cd4888d7da483c5f90b5c4802b85`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 957.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c56684a0cdcc07ab1aec38c7855ee63cf7b730f324cda785a4a96306a478a6`  
		Last Modified: Tue, 08 Sep 2026 19:19:05 GMT  
		Size: 7.2 MB (7235904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee952971c20d09235e2240db75b5572ffb8d092159766eb95f23a1a806633a8b`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 2.7 MB (2737150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5c567623463fa7dbb706946fa4ad04af2706dbea31a900e58c33ce45f495df`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c767f2ff34fc144c093c9e7781e686b68a6117151ddcc920b4e784553d0ea281`  
		Last Modified: Tue, 08 Sep 2026 19:19:05 GMT  
		Size: 1.1 KB (1131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10` - unknown; unknown

```console
$ docker pull eggdrop@sha256:867b624b2760dd38d4217e7b40e0ede5abd21e8fcc482b4416c801089287b4a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **756.2 KB (756215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9ccaccc8110487f36159c58f25470a7d381ef3d71b916364eb10c75763a31cf`

```dockerfile
```

-	Layers:
	-	`sha256:c30558fa0d68833288be6357429bdb3d97bbfa78e9f0cfc11e4efa673f03f710`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 739.1 KB (739121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:694f8eaaecd49daaa58af4dfc8d51d87474bc251c666c290c1fe8f435afbcd0a`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 17.1 KB (17094 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:1.10` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:3f28fabcb590800f1c86d7c5b2c7334cdc2261c44eeb80430a7b98481090d137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13141999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1ef1d7c4c35b4a67a8b3a366ab5a9fdd71fca56e911f282b550e751b54be7d6`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:19:42 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Tue, 08 Sep 2026 19:19:42 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Tue, 08 Sep 2026 19:19:44 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Tue, 08 Sep 2026 19:20:41 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Tue, 08 Sep 2026 19:20:41 GMT
ENV NICK=
# Tue, 08 Sep 2026 19:20:41 GMT
ENV SERVER=
# Tue, 08 Sep 2026 19:20:41 GMT
ENV LISTEN=3333
# Tue, 08 Sep 2026 19:20:41 GMT
ENV USERFILE=eggdrop.user
# Tue, 08 Sep 2026 19:20:41 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 08 Sep 2026 19:20:41 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 08 Sep 2026 19:20:41 GMT
EXPOSE map[3333/tcp:{}]
# Tue, 08 Sep 2026 19:20:41 GMT
COPY entrypoint.sh ./ # buildkit
# Tue, 08 Sep 2026 19:20:41 GMT
COPY docker.tcl ./scripts/ # buildkit
# Tue, 08 Sep 2026 19:20:41 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 08 Sep 2026 19:20:41 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e4d66379b25b09adf14826a6862b0d47927bcff863990a51ecec6bf37fe802`  
		Last Modified: Tue, 08 Sep 2026 19:20:10 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ee01ef73d0f575abd81b3b3171ce9bd7540413f1db302372333cfe2611377d`  
		Last Modified: Tue, 08 Sep 2026 19:20:10 GMT  
		Size: 6.8 MB (6832083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a9b9825ac7eaf38afc034b0e8e41bb0ce2df8ff1cccf5e658715c2117eac99`  
		Last Modified: Tue, 08 Sep 2026 19:20:45 GMT  
		Size: 2.8 MB (2753253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f8359a07ff32939f8f97b350052dfd419c02d79f89e1d5b38fdbb337f53fe45`  
		Last Modified: Tue, 08 Sep 2026 19:20:45 GMT  
		Size: 1.9 KB (1950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e96fbb0d3d2ff7fd427540c240b7c878e711bcae3d7099fc1bb649b745feddf`  
		Last Modified: Tue, 08 Sep 2026 19:20:45 GMT  
		Size: 1.1 KB (1130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10` - unknown; unknown

```console
$ docker pull eggdrop@sha256:987ed44a0e8e8512fcaecdbb249845d0dac2a6106f5085caa692417e4317f458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 KB (16985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26ed5f9a438bd4691947494397ddec357242dc678c4b1c79b98566ec566f997`

```dockerfile
```

-	Layers:
	-	`sha256:a0428efff917ca69bf9be13764f35dbf3a58028cc97ef30c8c0e35d62e63ec37`  
		Last Modified: Tue, 08 Sep 2026 19:20:45 GMT  
		Size: 17.0 KB (16985 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:1.10` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:c8b12fbb384e652f0215d9e51397e05933f03998dca0408227ba24c856af52d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14548385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecfe77cdfbeb36b1517e52af7a99042e4ca6b34653673633a7bb386cf4238c96`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:18:26 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Tue, 08 Sep 2026 19:18:26 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Tue, 08 Sep 2026 19:18:27 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
ENV NICK=
# Tue, 08 Sep 2026 19:18:48 GMT
ENV SERVER=
# Tue, 08 Sep 2026 19:18:48 GMT
ENV LISTEN=3333
# Tue, 08 Sep 2026 19:18:48 GMT
ENV USERFILE=eggdrop.user
# Tue, 08 Sep 2026 19:18:48 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 08 Sep 2026 19:18:48 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 08 Sep 2026 19:18:48 GMT
EXPOSE map[3333/tcp:{}]
# Tue, 08 Sep 2026 19:18:48 GMT
COPY entrypoint.sh ./ # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
COPY docker.tcl ./scripts/ # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 08 Sep 2026 19:18:48 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498eca01dc74a981a47e5c5a1895561d6d55c7ce2bed15eb2c17c88f5f7d8fa4`  
		Last Modified: Tue, 08 Sep 2026 19:18:53 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a6ebc02121d21362a69ab7b28b18095dd627b158cd945c3b9b7e5c427634f7`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 7.6 MB (7612027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e3b157263b318fdda667b181971df72c7015e5f586bbad80cd2e2a1ad27b03`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 2.8 MB (2750428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10b70d382b016075816bf55c3cef0f1f59abdf84603e8104747b15b56f84e970`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569ac02c21469a7297935f20d16da8eb41dd00f191b0aad3bb17342ca943a0dd`  
		Last Modified: Tue, 08 Sep 2026 19:18:55 GMT  
		Size: 1.1 KB (1131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10` - unknown; unknown

```console
$ docker pull eggdrop@sha256:e050cafe7c2476484680f6ab83d8548f0727dee88c22ebf1828699ab54931348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.8 KB (755755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:139164467858a5b395e07219882e10e673f8a1d98911b3f63b090fdf31a28734`

```dockerfile
```

-	Layers:
	-	`sha256:65f1c1f21a6eb234ea01a3f6e2a1f0f15837299bd838fb29ec4f31226fcc27bf`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 738.5 KB (738527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34c04c1669a42313d2b816be126fbb474426e4ba6c2f889995ce3edf6ab4234e`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 17.2 KB (17228 bytes)  
		MIME: application/vnd.in-toto+json

## `eggdrop:1.10.2`

```console
$ docker pull eggdrop@sha256:c5aa5593917daaa86bf2fe9233d6510ff776dca205fd0be8bfa231d9cd57a509
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
$ docker pull eggdrop@sha256:0bd43cf78a845a14bf7a4c52b9f33a3f18d768c8eee8c07c54cf414c5d0ba5f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13821546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e74403e9246f462c8ac4bf194b1df8d6ed604451d265e0480a5ceb47a4c8679`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:18:41 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Tue, 08 Sep 2026 19:18:41 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Tue, 08 Sep 2026 19:18:41 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Tue, 08 Sep 2026 19:18:59 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Tue, 08 Sep 2026 19:18:59 GMT
ENV NICK=
# Tue, 08 Sep 2026 19:18:59 GMT
ENV SERVER=
# Tue, 08 Sep 2026 19:18:59 GMT
ENV LISTEN=3333
# Tue, 08 Sep 2026 19:18:59 GMT
ENV USERFILE=eggdrop.user
# Tue, 08 Sep 2026 19:18:59 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 08 Sep 2026 19:18:59 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 08 Sep 2026 19:18:59 GMT
EXPOSE map[3333/tcp:{}]
# Tue, 08 Sep 2026 19:18:59 GMT
COPY entrypoint.sh ./ # buildkit
# Tue, 08 Sep 2026 19:18:59 GMT
COPY docker.tcl ./scripts/ # buildkit
# Tue, 08 Sep 2026 19:18:59 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 08 Sep 2026 19:18:59 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08e0c1ed08ec02972b190ee2b1383335bbb4cd4888d7da483c5f90b5c4802b85`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 957.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c56684a0cdcc07ab1aec38c7855ee63cf7b730f324cda785a4a96306a478a6`  
		Last Modified: Tue, 08 Sep 2026 19:19:05 GMT  
		Size: 7.2 MB (7235904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee952971c20d09235e2240db75b5572ffb8d092159766eb95f23a1a806633a8b`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 2.7 MB (2737150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5c567623463fa7dbb706946fa4ad04af2706dbea31a900e58c33ce45f495df`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c767f2ff34fc144c093c9e7781e686b68a6117151ddcc920b4e784553d0ea281`  
		Last Modified: Tue, 08 Sep 2026 19:19:05 GMT  
		Size: 1.1 KB (1131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10.2` - unknown; unknown

```console
$ docker pull eggdrop@sha256:867b624b2760dd38d4217e7b40e0ede5abd21e8fcc482b4416c801089287b4a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **756.2 KB (756215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9ccaccc8110487f36159c58f25470a7d381ef3d71b916364eb10c75763a31cf`

```dockerfile
```

-	Layers:
	-	`sha256:c30558fa0d68833288be6357429bdb3d97bbfa78e9f0cfc11e4efa673f03f710`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 739.1 KB (739121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:694f8eaaecd49daaa58af4dfc8d51d87474bc251c666c290c1fe8f435afbcd0a`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 17.1 KB (17094 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:1.10.2` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:3f28fabcb590800f1c86d7c5b2c7334cdc2261c44eeb80430a7b98481090d137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13141999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1ef1d7c4c35b4a67a8b3a366ab5a9fdd71fca56e911f282b550e751b54be7d6`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:19:42 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Tue, 08 Sep 2026 19:19:42 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Tue, 08 Sep 2026 19:19:44 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Tue, 08 Sep 2026 19:20:41 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Tue, 08 Sep 2026 19:20:41 GMT
ENV NICK=
# Tue, 08 Sep 2026 19:20:41 GMT
ENV SERVER=
# Tue, 08 Sep 2026 19:20:41 GMT
ENV LISTEN=3333
# Tue, 08 Sep 2026 19:20:41 GMT
ENV USERFILE=eggdrop.user
# Tue, 08 Sep 2026 19:20:41 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 08 Sep 2026 19:20:41 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 08 Sep 2026 19:20:41 GMT
EXPOSE map[3333/tcp:{}]
# Tue, 08 Sep 2026 19:20:41 GMT
COPY entrypoint.sh ./ # buildkit
# Tue, 08 Sep 2026 19:20:41 GMT
COPY docker.tcl ./scripts/ # buildkit
# Tue, 08 Sep 2026 19:20:41 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 08 Sep 2026 19:20:41 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e4d66379b25b09adf14826a6862b0d47927bcff863990a51ecec6bf37fe802`  
		Last Modified: Tue, 08 Sep 2026 19:20:10 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ee01ef73d0f575abd81b3b3171ce9bd7540413f1db302372333cfe2611377d`  
		Last Modified: Tue, 08 Sep 2026 19:20:10 GMT  
		Size: 6.8 MB (6832083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a9b9825ac7eaf38afc034b0e8e41bb0ce2df8ff1cccf5e658715c2117eac99`  
		Last Modified: Tue, 08 Sep 2026 19:20:45 GMT  
		Size: 2.8 MB (2753253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f8359a07ff32939f8f97b350052dfd419c02d79f89e1d5b38fdbb337f53fe45`  
		Last Modified: Tue, 08 Sep 2026 19:20:45 GMT  
		Size: 1.9 KB (1950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e96fbb0d3d2ff7fd427540c240b7c878e711bcae3d7099fc1bb649b745feddf`  
		Last Modified: Tue, 08 Sep 2026 19:20:45 GMT  
		Size: 1.1 KB (1130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10.2` - unknown; unknown

```console
$ docker pull eggdrop@sha256:987ed44a0e8e8512fcaecdbb249845d0dac2a6106f5085caa692417e4317f458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 KB (16985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26ed5f9a438bd4691947494397ddec357242dc678c4b1c79b98566ec566f997`

```dockerfile
```

-	Layers:
	-	`sha256:a0428efff917ca69bf9be13764f35dbf3a58028cc97ef30c8c0e35d62e63ec37`  
		Last Modified: Tue, 08 Sep 2026 19:20:45 GMT  
		Size: 17.0 KB (16985 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:1.10.2` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:c8b12fbb384e652f0215d9e51397e05933f03998dca0408227ba24c856af52d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14548385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecfe77cdfbeb36b1517e52af7a99042e4ca6b34653673633a7bb386cf4238c96`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:18:26 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Tue, 08 Sep 2026 19:18:26 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Tue, 08 Sep 2026 19:18:27 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
ENV NICK=
# Tue, 08 Sep 2026 19:18:48 GMT
ENV SERVER=
# Tue, 08 Sep 2026 19:18:48 GMT
ENV LISTEN=3333
# Tue, 08 Sep 2026 19:18:48 GMT
ENV USERFILE=eggdrop.user
# Tue, 08 Sep 2026 19:18:48 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 08 Sep 2026 19:18:48 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 08 Sep 2026 19:18:48 GMT
EXPOSE map[3333/tcp:{}]
# Tue, 08 Sep 2026 19:18:48 GMT
COPY entrypoint.sh ./ # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
COPY docker.tcl ./scripts/ # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 08 Sep 2026 19:18:48 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498eca01dc74a981a47e5c5a1895561d6d55c7ce2bed15eb2c17c88f5f7d8fa4`  
		Last Modified: Tue, 08 Sep 2026 19:18:53 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a6ebc02121d21362a69ab7b28b18095dd627b158cd945c3b9b7e5c427634f7`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 7.6 MB (7612027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e3b157263b318fdda667b181971df72c7015e5f586bbad80cd2e2a1ad27b03`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 2.8 MB (2750428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10b70d382b016075816bf55c3cef0f1f59abdf84603e8104747b15b56f84e970`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569ac02c21469a7297935f20d16da8eb41dd00f191b0aad3bb17342ca943a0dd`  
		Last Modified: Tue, 08 Sep 2026 19:18:55 GMT  
		Size: 1.1 KB (1131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10.2` - unknown; unknown

```console
$ docker pull eggdrop@sha256:e050cafe7c2476484680f6ab83d8548f0727dee88c22ebf1828699ab54931348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.8 KB (755755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:139164467858a5b395e07219882e10e673f8a1d98911b3f63b090fdf31a28734`

```dockerfile
```

-	Layers:
	-	`sha256:65f1c1f21a6eb234ea01a3f6e2a1f0f15837299bd838fb29ec4f31226fcc27bf`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 738.5 KB (738527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34c04c1669a42313d2b816be126fbb474426e4ba6c2f889995ce3edf6ab4234e`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 17.2 KB (17228 bytes)  
		MIME: application/vnd.in-toto+json

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:771d72aa2f85e69ec809723b6f0df9ce1b7c7bc86c2ca1c567dca72bfd6fad1b
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
$ docker pull eggdrop@sha256:2b9143a5d23c86005ef9c738dc3e75a0b05080ef4e9f9e181aa023dbe8c284dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13818225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60a9f27d2990e903dcebb4d3307583fb03f2e7398b3724a8c917a3f93022d363`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:18:39 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Tue, 08 Sep 2026 19:18:39 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Tue, 08 Sep 2026 19:18:40 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Tue, 08 Sep 2026 19:18:40 GMT
ENV EGGDROP_SHA256=fdfc2d08c17f6318b351981a64b193228852bb740ad94d2b43d3cd5585067c4b
# Tue, 08 Sep 2026 19:18:40 GMT
ENV EGGDROP_COMMIT=d93dbd7444d2519b83f613fe4d21e36ae4cc5797
# Tue, 08 Sep 2026 19:18:54 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256 *develop.tar.gz" | sha256sum -c -   && tar -zxf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Tue, 08 Sep 2026 19:18:54 GMT
ENV NICK=
# Tue, 08 Sep 2026 19:18:54 GMT
ENV SERVER=
# Tue, 08 Sep 2026 19:18:54 GMT
ENV LISTEN=3333
# Tue, 08 Sep 2026 19:18:54 GMT
ENV USERFILE=eggdrop.user
# Tue, 08 Sep 2026 19:18:54 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 08 Sep 2026 19:18:54 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 08 Sep 2026 19:18:54 GMT
EXPOSE map[3333/tcp:{}]
# Tue, 08 Sep 2026 19:18:54 GMT
COPY entrypoint.sh ./ # buildkit
# Tue, 08 Sep 2026 19:18:54 GMT
COPY docker.tcl ./scripts/ # buildkit
# Tue, 08 Sep 2026 19:18:54 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 08 Sep 2026 19:18:54 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fe8bc8a71f14c40935ebe2fda9f9b11b5fe172a0695f469fa18e20e59a9b62`  
		Last Modified: Tue, 08 Sep 2026 19:19:00 GMT  
		Size: 957.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f42bbe3b0820c9ced7f482d9d79f1b847d0c08e295773664da68e07342c7a03`  
		Last Modified: Tue, 08 Sep 2026 19:19:00 GMT  
		Size: 7.2 MB (7235894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c55734f3c1cf28eb4020ca5305479572a6564bf36d9599dfeda9dfc8ac9ee4b`  
		Last Modified: Tue, 08 Sep 2026 19:19:00 GMT  
		Size: 2.7 MB (2733829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6004725bdbfde4fd0d3ae3e4e89dce1a914f1dcf1860ad51fbddbd71898d72cb`  
		Last Modified: Tue, 08 Sep 2026 19:19:00 GMT  
		Size: 2.0 KB (1965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa8ac688944b47bdfd0ddbc6f3e42f8453d469c7cc4cf31db4086f9e29cc360`  
		Last Modified: Tue, 08 Sep 2026 19:19:01 GMT  
		Size: 1.1 KB (1127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:develop` - unknown; unknown

```console
$ docker pull eggdrop@sha256:27824a413b0213288104d7b5a2f9fc915741b6dec03a2cc2cdd05173504511a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **754.0 KB (754019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a9978ee712b7a591cae4c494d00ecdb21b5079afd394c85acb4ac2daf7b233f`

```dockerfile
```

-	Layers:
	-	`sha256:e5ee9a003111471d6946650f9ef4430e82c63aa9a3ad656394b822afdb8cd1d2`  
		Last Modified: Tue, 08 Sep 2026 19:19:00 GMT  
		Size: 738.2 KB (738227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da2aa68143115c42a7fc4f4b6edfbb64788454ae10a641c65a54818c0871f95f`  
		Last Modified: Tue, 08 Sep 2026 19:19:00 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:develop` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:9145506346e1b4c9bb22eaefd9b80df923c5bd88dba9176af0483726258f7d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13138338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:832aab4a32f42761c74610df8b231fd929ee94c6ed2e24ba4370b8129fdcf930`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:19:42 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Tue, 08 Sep 2026 19:19:42 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Tue, 08 Sep 2026 19:19:44 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Tue, 08 Sep 2026 19:19:44 GMT
ENV EGGDROP_SHA256=fdfc2d08c17f6318b351981a64b193228852bb740ad94d2b43d3cd5585067c4b
# Tue, 08 Sep 2026 19:19:44 GMT
ENV EGGDROP_COMMIT=d93dbd7444d2519b83f613fe4d21e36ae4cc5797
# Tue, 08 Sep 2026 19:20:05 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256 *develop.tar.gz" | sha256sum -c -   && tar -zxf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Tue, 08 Sep 2026 19:20:05 GMT
ENV NICK=
# Tue, 08 Sep 2026 19:20:05 GMT
ENV SERVER=
# Tue, 08 Sep 2026 19:20:05 GMT
ENV LISTEN=3333
# Tue, 08 Sep 2026 19:20:05 GMT
ENV USERFILE=eggdrop.user
# Tue, 08 Sep 2026 19:20:05 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 08 Sep 2026 19:20:05 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 08 Sep 2026 19:20:05 GMT
EXPOSE map[3333/tcp:{}]
# Tue, 08 Sep 2026 19:20:05 GMT
COPY entrypoint.sh ./ # buildkit
# Tue, 08 Sep 2026 19:20:06 GMT
COPY docker.tcl ./scripts/ # buildkit
# Tue, 08 Sep 2026 19:20:06 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 08 Sep 2026 19:20:06 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e4d66379b25b09adf14826a6862b0d47927bcff863990a51ecec6bf37fe802`  
		Last Modified: Tue, 08 Sep 2026 19:20:10 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ee01ef73d0f575abd81b3b3171ce9bd7540413f1db302372333cfe2611377d`  
		Last Modified: Tue, 08 Sep 2026 19:20:10 GMT  
		Size: 6.8 MB (6832083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c28f427a016b744dfbd362f5e08e81de2f18a17b2ef680f2b3a3cfe37754855`  
		Last Modified: Tue, 08 Sep 2026 19:20:10 GMT  
		Size: 2.7 MB (2749582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fb6486b169ee1982963c74e99c34f560c4429f976dd5fce139f1cb7912e6ece`  
		Last Modified: Tue, 08 Sep 2026 19:20:10 GMT  
		Size: 2.0 KB (1964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25a22830c1574dbebd22f83453e8021056f43cfae1ed78d3e2756f5d15e7218`  
		Last Modified: Tue, 08 Sep 2026 19:20:11 GMT  
		Size: 1.1 KB (1126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:develop` - unknown; unknown

```console
$ docker pull eggdrop@sha256:cc2f6aacd3624a54671faad006331821fb82fb0337447364c0800da51ac513cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 KB (15658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b13667b14289bf2f350ae7b34be853af110e6caea067e1195915cb30c3321a4`

```dockerfile
```

-	Layers:
	-	`sha256:333c55f27153135b7b66c46e20fbbbed051b853ce09ae6811055609a1b5b11fa`  
		Last Modified: Tue, 08 Sep 2026 19:20:10 GMT  
		Size: 15.7 KB (15658 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:develop` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:ec89aa2d7dea8c7577b5f1205a498351a6f32cc267353f82d405c92105f161da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14545423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea44df265f4f08d31de383797f10ccd202c26e2e2ca6f173a8c161a90a981ee1`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:18:25 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Tue, 08 Sep 2026 19:18:25 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Tue, 08 Sep 2026 19:18:26 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Tue, 08 Sep 2026 19:18:26 GMT
ENV EGGDROP_SHA256=fdfc2d08c17f6318b351981a64b193228852bb740ad94d2b43d3cd5585067c4b
# Tue, 08 Sep 2026 19:18:26 GMT
ENV EGGDROP_COMMIT=d93dbd7444d2519b83f613fe4d21e36ae4cc5797
# Tue, 08 Sep 2026 19:18:44 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256 *develop.tar.gz" | sha256sum -c -   && tar -zxf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Tue, 08 Sep 2026 19:18:44 GMT
ENV NICK=
# Tue, 08 Sep 2026 19:18:44 GMT
ENV SERVER=
# Tue, 08 Sep 2026 19:18:44 GMT
ENV LISTEN=3333
# Tue, 08 Sep 2026 19:18:44 GMT
ENV USERFILE=eggdrop.user
# Tue, 08 Sep 2026 19:18:44 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 08 Sep 2026 19:18:44 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 08 Sep 2026 19:18:44 GMT
EXPOSE map[3333/tcp:{}]
# Tue, 08 Sep 2026 19:18:44 GMT
COPY entrypoint.sh ./ # buildkit
# Tue, 08 Sep 2026 19:18:44 GMT
COPY docker.tcl ./scripts/ # buildkit
# Tue, 08 Sep 2026 19:18:44 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 08 Sep 2026 19:18:44 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66d8ae59c746d975589db409b72826d5632127c5d6bc215b0b2ce25644f1d1ea`  
		Last Modified: Tue, 08 Sep 2026 19:18:50 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d2cd9c0d1ce41609b152528c9c83e3d17abeaed4768ed6af05735203355e75f`  
		Last Modified: Tue, 08 Sep 2026 19:18:50 GMT  
		Size: 7.6 MB (7611993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f1ef3025a68c1d997330df8f67a8fa8b28e4eb33a1417308f1b1873b124f4c`  
		Last Modified: Tue, 08 Sep 2026 19:18:50 GMT  
		Size: 2.7 MB (2747479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba8ece0d635df2170fe7759948626a3ecd66420b8ddd452b3617ea3ba0c4248`  
		Last Modified: Tue, 08 Sep 2026 19:18:50 GMT  
		Size: 2.0 KB (1971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a06b8b2a7469174bee33b68f4a88ea7a951a87ade168c91bf41890bb5c547995`  
		Last Modified: Tue, 08 Sep 2026 19:18:51 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:develop` - unknown; unknown

```console
$ docker pull eggdrop@sha256:9ae817f95864e5a697f85708fc12c2f2f33e0404331b10db97a6066eba79bd0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.5 KB (753487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805e01652fea57db52e4dfb45b5ed13b50cb2abdabf6d528537a0fa2152e9236`

```dockerfile
```

-	Layers:
	-	`sha256:3ffe40af2b55b5aa49c1cc40cf6ebc2b95ab25e0ba544dbe4149e26c3fcf9975`  
		Last Modified: Tue, 08 Sep 2026 19:18:50 GMT  
		Size: 737.6 KB (737597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fd5042b309beeb19cd7044a76499bfe003fe50b760c76dc7476b098feef1360`  
		Last Modified: Tue, 08 Sep 2026 19:18:50 GMT  
		Size: 15.9 KB (15890 bytes)  
		MIME: application/vnd.in-toto+json

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:c5aa5593917daaa86bf2fe9233d6510ff776dca205fd0be8bfa231d9cd57a509
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
$ docker pull eggdrop@sha256:0bd43cf78a845a14bf7a4c52b9f33a3f18d768c8eee8c07c54cf414c5d0ba5f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13821546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e74403e9246f462c8ac4bf194b1df8d6ed604451d265e0480a5ceb47a4c8679`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:18:41 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Tue, 08 Sep 2026 19:18:41 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Tue, 08 Sep 2026 19:18:41 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Tue, 08 Sep 2026 19:18:59 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Tue, 08 Sep 2026 19:18:59 GMT
ENV NICK=
# Tue, 08 Sep 2026 19:18:59 GMT
ENV SERVER=
# Tue, 08 Sep 2026 19:18:59 GMT
ENV LISTEN=3333
# Tue, 08 Sep 2026 19:18:59 GMT
ENV USERFILE=eggdrop.user
# Tue, 08 Sep 2026 19:18:59 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 08 Sep 2026 19:18:59 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 08 Sep 2026 19:18:59 GMT
EXPOSE map[3333/tcp:{}]
# Tue, 08 Sep 2026 19:18:59 GMT
COPY entrypoint.sh ./ # buildkit
# Tue, 08 Sep 2026 19:18:59 GMT
COPY docker.tcl ./scripts/ # buildkit
# Tue, 08 Sep 2026 19:18:59 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 08 Sep 2026 19:18:59 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08e0c1ed08ec02972b190ee2b1383335bbb4cd4888d7da483c5f90b5c4802b85`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 957.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c56684a0cdcc07ab1aec38c7855ee63cf7b730f324cda785a4a96306a478a6`  
		Last Modified: Tue, 08 Sep 2026 19:19:05 GMT  
		Size: 7.2 MB (7235904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee952971c20d09235e2240db75b5572ffb8d092159766eb95f23a1a806633a8b`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 2.7 MB (2737150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5c567623463fa7dbb706946fa4ad04af2706dbea31a900e58c33ce45f495df`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c767f2ff34fc144c093c9e7781e686b68a6117151ddcc920b4e784553d0ea281`  
		Last Modified: Tue, 08 Sep 2026 19:19:05 GMT  
		Size: 1.1 KB (1131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:latest` - unknown; unknown

```console
$ docker pull eggdrop@sha256:867b624b2760dd38d4217e7b40e0ede5abd21e8fcc482b4416c801089287b4a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **756.2 KB (756215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9ccaccc8110487f36159c58f25470a7d381ef3d71b916364eb10c75763a31cf`

```dockerfile
```

-	Layers:
	-	`sha256:c30558fa0d68833288be6357429bdb3d97bbfa78e9f0cfc11e4efa673f03f710`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 739.1 KB (739121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:694f8eaaecd49daaa58af4dfc8d51d87474bc251c666c290c1fe8f435afbcd0a`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 17.1 KB (17094 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:latest` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:3f28fabcb590800f1c86d7c5b2c7334cdc2261c44eeb80430a7b98481090d137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13141999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1ef1d7c4c35b4a67a8b3a366ab5a9fdd71fca56e911f282b550e751b54be7d6`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:19:42 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Tue, 08 Sep 2026 19:19:42 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Tue, 08 Sep 2026 19:19:44 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Tue, 08 Sep 2026 19:20:41 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Tue, 08 Sep 2026 19:20:41 GMT
ENV NICK=
# Tue, 08 Sep 2026 19:20:41 GMT
ENV SERVER=
# Tue, 08 Sep 2026 19:20:41 GMT
ENV LISTEN=3333
# Tue, 08 Sep 2026 19:20:41 GMT
ENV USERFILE=eggdrop.user
# Tue, 08 Sep 2026 19:20:41 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 08 Sep 2026 19:20:41 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 08 Sep 2026 19:20:41 GMT
EXPOSE map[3333/tcp:{}]
# Tue, 08 Sep 2026 19:20:41 GMT
COPY entrypoint.sh ./ # buildkit
# Tue, 08 Sep 2026 19:20:41 GMT
COPY docker.tcl ./scripts/ # buildkit
# Tue, 08 Sep 2026 19:20:41 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 08 Sep 2026 19:20:41 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e4d66379b25b09adf14826a6862b0d47927bcff863990a51ecec6bf37fe802`  
		Last Modified: Tue, 08 Sep 2026 19:20:10 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ee01ef73d0f575abd81b3b3171ce9bd7540413f1db302372333cfe2611377d`  
		Last Modified: Tue, 08 Sep 2026 19:20:10 GMT  
		Size: 6.8 MB (6832083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a9b9825ac7eaf38afc034b0e8e41bb0ce2df8ff1cccf5e658715c2117eac99`  
		Last Modified: Tue, 08 Sep 2026 19:20:45 GMT  
		Size: 2.8 MB (2753253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f8359a07ff32939f8f97b350052dfd419c02d79f89e1d5b38fdbb337f53fe45`  
		Last Modified: Tue, 08 Sep 2026 19:20:45 GMT  
		Size: 1.9 KB (1950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e96fbb0d3d2ff7fd427540c240b7c878e711bcae3d7099fc1bb649b745feddf`  
		Last Modified: Tue, 08 Sep 2026 19:20:45 GMT  
		Size: 1.1 KB (1130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:latest` - unknown; unknown

```console
$ docker pull eggdrop@sha256:987ed44a0e8e8512fcaecdbb249845d0dac2a6106f5085caa692417e4317f458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 KB (16985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26ed5f9a438bd4691947494397ddec357242dc678c4b1c79b98566ec566f997`

```dockerfile
```

-	Layers:
	-	`sha256:a0428efff917ca69bf9be13764f35dbf3a58028cc97ef30c8c0e35d62e63ec37`  
		Last Modified: Tue, 08 Sep 2026 19:20:45 GMT  
		Size: 17.0 KB (16985 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:latest` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:c8b12fbb384e652f0215d9e51397e05933f03998dca0408227ba24c856af52d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14548385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecfe77cdfbeb36b1517e52af7a99042e4ca6b34653673633a7bb386cf4238c96`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:18:26 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Tue, 08 Sep 2026 19:18:26 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Tue, 08 Sep 2026 19:18:27 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
ENV NICK=
# Tue, 08 Sep 2026 19:18:48 GMT
ENV SERVER=
# Tue, 08 Sep 2026 19:18:48 GMT
ENV LISTEN=3333
# Tue, 08 Sep 2026 19:18:48 GMT
ENV USERFILE=eggdrop.user
# Tue, 08 Sep 2026 19:18:48 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 08 Sep 2026 19:18:48 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 08 Sep 2026 19:18:48 GMT
EXPOSE map[3333/tcp:{}]
# Tue, 08 Sep 2026 19:18:48 GMT
COPY entrypoint.sh ./ # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
COPY docker.tcl ./scripts/ # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 08 Sep 2026 19:18:48 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498eca01dc74a981a47e5c5a1895561d6d55c7ce2bed15eb2c17c88f5f7d8fa4`  
		Last Modified: Tue, 08 Sep 2026 19:18:53 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a6ebc02121d21362a69ab7b28b18095dd627b158cd945c3b9b7e5c427634f7`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 7.6 MB (7612027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e3b157263b318fdda667b181971df72c7015e5f586bbad80cd2e2a1ad27b03`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 2.8 MB (2750428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10b70d382b016075816bf55c3cef0f1f59abdf84603e8104747b15b56f84e970`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569ac02c21469a7297935f20d16da8eb41dd00f191b0aad3bb17342ca943a0dd`  
		Last Modified: Tue, 08 Sep 2026 19:18:55 GMT  
		Size: 1.1 KB (1131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:latest` - unknown; unknown

```console
$ docker pull eggdrop@sha256:e050cafe7c2476484680f6ab83d8548f0727dee88c22ebf1828699ab54931348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.8 KB (755755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:139164467858a5b395e07219882e10e673f8a1d98911b3f63b090fdf31a28734`

```dockerfile
```

-	Layers:
	-	`sha256:65f1c1f21a6eb234ea01a3f6e2a1f0f15837299bd838fb29ec4f31226fcc27bf`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 738.5 KB (738527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34c04c1669a42313d2b816be126fbb474426e4ba6c2f889995ce3edf6ab4234e`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 17.2 KB (17228 bytes)  
		MIME: application/vnd.in-toto+json

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:c5aa5593917daaa86bf2fe9233d6510ff776dca205fd0be8bfa231d9cd57a509
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
$ docker pull eggdrop@sha256:0bd43cf78a845a14bf7a4c52b9f33a3f18d768c8eee8c07c54cf414c5d0ba5f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13821546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e74403e9246f462c8ac4bf194b1df8d6ed604451d265e0480a5ceb47a4c8679`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:18:41 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Tue, 08 Sep 2026 19:18:41 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Tue, 08 Sep 2026 19:18:41 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Tue, 08 Sep 2026 19:18:59 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Tue, 08 Sep 2026 19:18:59 GMT
ENV NICK=
# Tue, 08 Sep 2026 19:18:59 GMT
ENV SERVER=
# Tue, 08 Sep 2026 19:18:59 GMT
ENV LISTEN=3333
# Tue, 08 Sep 2026 19:18:59 GMT
ENV USERFILE=eggdrop.user
# Tue, 08 Sep 2026 19:18:59 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 08 Sep 2026 19:18:59 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 08 Sep 2026 19:18:59 GMT
EXPOSE map[3333/tcp:{}]
# Tue, 08 Sep 2026 19:18:59 GMT
COPY entrypoint.sh ./ # buildkit
# Tue, 08 Sep 2026 19:18:59 GMT
COPY docker.tcl ./scripts/ # buildkit
# Tue, 08 Sep 2026 19:18:59 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 08 Sep 2026 19:18:59 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08e0c1ed08ec02972b190ee2b1383335bbb4cd4888d7da483c5f90b5c4802b85`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 957.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c56684a0cdcc07ab1aec38c7855ee63cf7b730f324cda785a4a96306a478a6`  
		Last Modified: Tue, 08 Sep 2026 19:19:05 GMT  
		Size: 7.2 MB (7235904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee952971c20d09235e2240db75b5572ffb8d092159766eb95f23a1a806633a8b`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 2.7 MB (2737150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5c567623463fa7dbb706946fa4ad04af2706dbea31a900e58c33ce45f495df`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c767f2ff34fc144c093c9e7781e686b68a6117151ddcc920b4e784553d0ea281`  
		Last Modified: Tue, 08 Sep 2026 19:19:05 GMT  
		Size: 1.1 KB (1131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:stable` - unknown; unknown

```console
$ docker pull eggdrop@sha256:867b624b2760dd38d4217e7b40e0ede5abd21e8fcc482b4416c801089287b4a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **756.2 KB (756215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9ccaccc8110487f36159c58f25470a7d381ef3d71b916364eb10c75763a31cf`

```dockerfile
```

-	Layers:
	-	`sha256:c30558fa0d68833288be6357429bdb3d97bbfa78e9f0cfc11e4efa673f03f710`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 739.1 KB (739121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:694f8eaaecd49daaa58af4dfc8d51d87474bc251c666c290c1fe8f435afbcd0a`  
		Last Modified: Tue, 08 Sep 2026 19:19:04 GMT  
		Size: 17.1 KB (17094 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:stable` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:3f28fabcb590800f1c86d7c5b2c7334cdc2261c44eeb80430a7b98481090d137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13141999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1ef1d7c4c35b4a67a8b3a366ab5a9fdd71fca56e911f282b550e751b54be7d6`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:19:42 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Tue, 08 Sep 2026 19:19:42 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Tue, 08 Sep 2026 19:19:44 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Tue, 08 Sep 2026 19:20:41 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Tue, 08 Sep 2026 19:20:41 GMT
ENV NICK=
# Tue, 08 Sep 2026 19:20:41 GMT
ENV SERVER=
# Tue, 08 Sep 2026 19:20:41 GMT
ENV LISTEN=3333
# Tue, 08 Sep 2026 19:20:41 GMT
ENV USERFILE=eggdrop.user
# Tue, 08 Sep 2026 19:20:41 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 08 Sep 2026 19:20:41 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 08 Sep 2026 19:20:41 GMT
EXPOSE map[3333/tcp:{}]
# Tue, 08 Sep 2026 19:20:41 GMT
COPY entrypoint.sh ./ # buildkit
# Tue, 08 Sep 2026 19:20:41 GMT
COPY docker.tcl ./scripts/ # buildkit
# Tue, 08 Sep 2026 19:20:41 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 08 Sep 2026 19:20:41 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e4d66379b25b09adf14826a6862b0d47927bcff863990a51ecec6bf37fe802`  
		Last Modified: Tue, 08 Sep 2026 19:20:10 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ee01ef73d0f575abd81b3b3171ce9bd7540413f1db302372333cfe2611377d`  
		Last Modified: Tue, 08 Sep 2026 19:20:10 GMT  
		Size: 6.8 MB (6832083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a9b9825ac7eaf38afc034b0e8e41bb0ce2df8ff1cccf5e658715c2117eac99`  
		Last Modified: Tue, 08 Sep 2026 19:20:45 GMT  
		Size: 2.8 MB (2753253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f8359a07ff32939f8f97b350052dfd419c02d79f89e1d5b38fdbb337f53fe45`  
		Last Modified: Tue, 08 Sep 2026 19:20:45 GMT  
		Size: 1.9 KB (1950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e96fbb0d3d2ff7fd427540c240b7c878e711bcae3d7099fc1bb649b745feddf`  
		Last Modified: Tue, 08 Sep 2026 19:20:45 GMT  
		Size: 1.1 KB (1130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:stable` - unknown; unknown

```console
$ docker pull eggdrop@sha256:987ed44a0e8e8512fcaecdbb249845d0dac2a6106f5085caa692417e4317f458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 KB (16985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26ed5f9a438bd4691947494397ddec357242dc678c4b1c79b98566ec566f997`

```dockerfile
```

-	Layers:
	-	`sha256:a0428efff917ca69bf9be13764f35dbf3a58028cc97ef30c8c0e35d62e63ec37`  
		Last Modified: Tue, 08 Sep 2026 19:20:45 GMT  
		Size: 17.0 KB (16985 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:stable` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:c8b12fbb384e652f0215d9e51397e05933f03998dca0408227ba24c856af52d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14548385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecfe77cdfbeb36b1517e52af7a99042e4ca6b34653673633a7bb386cf4238c96`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:18:26 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Tue, 08 Sep 2026 19:18:26 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Tue, 08 Sep 2026 19:18:27 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
ENV NICK=
# Tue, 08 Sep 2026 19:18:48 GMT
ENV SERVER=
# Tue, 08 Sep 2026 19:18:48 GMT
ENV LISTEN=3333
# Tue, 08 Sep 2026 19:18:48 GMT
ENV USERFILE=eggdrop.user
# Tue, 08 Sep 2026 19:18:48 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 08 Sep 2026 19:18:48 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 08 Sep 2026 19:18:48 GMT
EXPOSE map[3333/tcp:{}]
# Tue, 08 Sep 2026 19:18:48 GMT
COPY entrypoint.sh ./ # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
COPY docker.tcl ./scripts/ # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 08 Sep 2026 19:18:48 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498eca01dc74a981a47e5c5a1895561d6d55c7ce2bed15eb2c17c88f5f7d8fa4`  
		Last Modified: Tue, 08 Sep 2026 19:18:53 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a6ebc02121d21362a69ab7b28b18095dd627b158cd945c3b9b7e5c427634f7`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 7.6 MB (7612027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e3b157263b318fdda667b181971df72c7015e5f586bbad80cd2e2a1ad27b03`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 2.8 MB (2750428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10b70d382b016075816bf55c3cef0f1f59abdf84603e8104747b15b56f84e970`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569ac02c21469a7297935f20d16da8eb41dd00f191b0aad3bb17342ca943a0dd`  
		Last Modified: Tue, 08 Sep 2026 19:18:55 GMT  
		Size: 1.1 KB (1131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:stable` - unknown; unknown

```console
$ docker pull eggdrop@sha256:e050cafe7c2476484680f6ab83d8548f0727dee88c22ebf1828699ab54931348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.8 KB (755755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:139164467858a5b395e07219882e10e673f8a1d98911b3f63b090fdf31a28734`

```dockerfile
```

-	Layers:
	-	`sha256:65f1c1f21a6eb234ea01a3f6e2a1f0f15837299bd838fb29ec4f31226fcc27bf`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 738.5 KB (738527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34c04c1669a42313d2b816be126fbb474426e4ba6c2f889995ce3edf6ab4234e`  
		Last Modified: Tue, 08 Sep 2026 19:18:54 GMT  
		Size: 17.2 KB (17228 bytes)  
		MIME: application/vnd.in-toto+json
