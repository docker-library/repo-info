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
