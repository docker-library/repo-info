<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:1.10`](#eggdrop110)
-	[`eggdrop:1.10.2`](#eggdrop1102)
-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:latest`](#eggdroplatest)
-	[`eggdrop:stable`](#eggdropstable)

## `eggdrop:1.10`

```console
$ docker pull eggdrop@sha256:2028d25c44a8fa7dbbfee1e1c9db809c5ba23eaa6516fbe84eb86c44886e1e04
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
$ docker pull eggdrop@sha256:64da7a09d997e3b03ce2bd030fa54d14325da63f7df7391570e074fd5bd1f1e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12802733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718de2fa6c06b5129ac5a811dc8441b23bb94c98231b303ac02f9ccbd5cb2c20`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:15:18 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Fri, 17 Apr 2026 00:15:18 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Fri, 17 Apr 2026 00:15:19 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl # buildkit
# Fri, 17 Apr 2026 00:18:32 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://prdownloads.sourceforge.net/tcl/tcl9.0.1-src.tar.gz" -O tcl9.0.1-src.tar.gz --progress=dot:giga   && tar -zxf tcl9.0.1-src.tar.gz   && ( cd tcl9.0.1     && cd unix     && ./configure     && nproc="$(nproc)"     && make -j"$nproc"     && make install )   && rm -rf tcl9.0.1-src.tar.gz   && rm -rf tcl9.0.1   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.1.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.1.tar.gz.asc eggdrop-1.10.1.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.1.tar.gz.asc   && tar -zxvf eggdrop-1.10.1.tar.gz   && rm eggdrop-1.10.1.tar.gz   && ( cd eggdrop-1.10.1     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Fri, 17 Apr 2026 00:18:32 GMT
ENV NICK=
# Fri, 17 Apr 2026 00:18:32 GMT
ENV SERVER=
# Fri, 17 Apr 2026 00:18:32 GMT
ENV LISTEN=3333
# Fri, 17 Apr 2026 00:18:32 GMT
ENV USERFILE=eggdrop.user
# Fri, 17 Apr 2026 00:18:32 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 17 Apr 2026 00:18:32 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 17 Apr 2026 00:18:32 GMT
EXPOSE map[3333/tcp:{}]
# Fri, 17 Apr 2026 00:18:32 GMT
COPY entrypoint.sh ./ # buildkit
# Fri, 17 Apr 2026 00:18:32 GMT
COPY docker.tcl ./scripts/ # buildkit
# Fri, 17 Apr 2026 00:18:32 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 17 Apr 2026 00:18:32 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f339cba84b981e1992cc557fb400cce5b960817ef6a6ea37d3679e32151c52d`  
		Last Modified: Fri, 17 Apr 2026 00:18:38 GMT  
		Size: 960.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10b54844e2f73941a03f5f1377b0108c701158c0206eadc611f9f0cde58cfd62`  
		Last Modified: Fri, 17 Apr 2026 00:18:38 GMT  
		Size: 1.1 MB (1116762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f1258ab988d483973ca23059dfec49d66ea59ba160c20334542ca1dd7da1a8`  
		Last Modified: Fri, 17 Apr 2026 00:18:38 GMT  
		Size: 8.0 MB (8035037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e7d1919a67ebb69f4e586c1dd8cecb6332dee411ca6337a373011a666e2cdc`  
		Last Modified: Fri, 17 Apr 2026 00:18:38 GMT  
		Size: 1.9 KB (1946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16b3eae19d9f3bea0db98992720d3ca3ad36feb9b14d3aaccaeaa5d322e90f10`  
		Last Modified: Fri, 17 Apr 2026 00:18:39 GMT  
		Size: 1.1 KB (1121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10` - unknown; unknown

```console
$ docker pull eggdrop@sha256:1e16c97c5e56cc6861f6cc7fabc9a4a7a177078ad500159acd8f2108f30b58f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.3 KB (163325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36970bc6aaf3d383125e9b85289878fef3922f9d720404cd8c9b8753dd0dfa10`

```dockerfile
```

-	Layers:
	-	`sha256:ed8e5fe0d625549d9a976cd4048647e39ad76f3555e48ea0e4109bc60c28b960`  
		Last Modified: Fri, 17 Apr 2026 00:18:38 GMT  
		Size: 145.0 KB (144975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abdc2afd18987a9aa8aae1747b837845425d0a1289ce2f77ba657da307910f96`  
		Last Modified: Fri, 17 Apr 2026 00:18:38 GMT  
		Size: 18.4 KB (18350 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:1.10` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:5aca1ce17d31254d25f5dd5123df2b5fbb8a7ba5d4191b4df1a9e0ee96cd3175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12355218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3761451ba6fa939892112f0a02ba6fb597d891bcf3ed467e3ded6545ac9bec4`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:38 GMT
ADD alpine-minirootfs-3.21.7-armhf.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:38 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:14:52 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Fri, 17 Apr 2026 00:14:52 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Fri, 17 Apr 2026 00:14:53 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl # buildkit
# Fri, 17 Apr 2026 00:19:41 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://prdownloads.sourceforge.net/tcl/tcl9.0.1-src.tar.gz" -O tcl9.0.1-src.tar.gz --progress=dot:giga   && tar -zxf tcl9.0.1-src.tar.gz   && ( cd tcl9.0.1     && cd unix     && ./configure     && nproc="$(nproc)"     && make -j"$nproc"     && make install )   && rm -rf tcl9.0.1-src.tar.gz   && rm -rf tcl9.0.1   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.1.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.1.tar.gz.asc eggdrop-1.10.1.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.1.tar.gz.asc   && tar -zxvf eggdrop-1.10.1.tar.gz   && rm eggdrop-1.10.1.tar.gz   && ( cd eggdrop-1.10.1     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Fri, 17 Apr 2026 00:19:41 GMT
ENV NICK=
# Fri, 17 Apr 2026 00:19:41 GMT
ENV SERVER=
# Fri, 17 Apr 2026 00:19:41 GMT
ENV LISTEN=3333
# Fri, 17 Apr 2026 00:19:41 GMT
ENV USERFILE=eggdrop.user
# Fri, 17 Apr 2026 00:19:41 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 17 Apr 2026 00:19:41 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 17 Apr 2026 00:19:41 GMT
EXPOSE map[3333/tcp:{}]
# Fri, 17 Apr 2026 00:19:41 GMT
COPY entrypoint.sh ./ # buildkit
# Fri, 17 Apr 2026 00:19:42 GMT
COPY docker.tcl ./scripts/ # buildkit
# Fri, 17 Apr 2026 00:19:42 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 17 Apr 2026 00:19:42 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:f204fe7ddd292eb5d783ce14a8bc6c5a7defbb8adda2989da2c9dcf46b3e08e9`  
		Last Modified: Thu, 16 Apr 2026 23:53:42 GMT  
		Size: 3.4 MB (3369055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2c374072ba32c01442f0bc881932103e1d3772d2bc00e8b062c7092cdc2e68`  
		Last Modified: Fri, 17 Apr 2026 00:19:46 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6a3fc78f147be0a6f75404b2223e3a66d9ed97bc8b88511cefff87c7fc3feb`  
		Last Modified: Fri, 17 Apr 2026 00:19:46 GMT  
		Size: 1.1 MB (1129838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae370e1d341a287804a804d34cc0acf80fd3cd119915268293b2d8ac176af8`  
		Last Modified: Fri, 17 Apr 2026 00:19:46 GMT  
		Size: 7.9 MB (7852263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5c85741ba086a4b4bd0655ce6c6b9a28480970380dc9c143ce66d52d1a7cd1`  
		Last Modified: Fri, 17 Apr 2026 00:19:46 GMT  
		Size: 1.9 KB (1948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e9ed8de466fe06402cb0fb11c925eb41da881155504ec1494fdc22c7694858c`  
		Last Modified: Fri, 17 Apr 2026 00:19:47 GMT  
		Size: 1.1 KB (1126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10` - unknown; unknown

```console
$ docker pull eggdrop@sha256:46de0444f5f0c5c64594207ffcf40cf79435a1e2d46ae6383bdb9d9a3bee73dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.2 KB (18241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1185ee92ea1edfb662c66c485d29f135e59c101fd60fd7a0596e32a72008d077`

```dockerfile
```

-	Layers:
	-	`sha256:30709a5fd6cd3680779b0fb002e97d206a56433cf499550f767302d490ab0971`  
		Last Modified: Fri, 17 Apr 2026 00:19:46 GMT  
		Size: 18.2 KB (18241 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:1.10` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:2f41546c2c21a00307692dfacbe19b20b998c5c97248e0396c7285f504d9d692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13249767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb801cf5db8a542234bffb3b06d94385d41b5bade14ecc8ec7d4483d3e2bb26`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:14:47 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Fri, 17 Apr 2026 00:14:47 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Fri, 17 Apr 2026 00:14:48 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl # buildkit
# Fri, 17 Apr 2026 00:18:39 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://prdownloads.sourceforge.net/tcl/tcl9.0.1-src.tar.gz" -O tcl9.0.1-src.tar.gz --progress=dot:giga   && tar -zxf tcl9.0.1-src.tar.gz   && ( cd tcl9.0.1     && cd unix     && ./configure     && nproc="$(nproc)"     && make -j"$nproc"     && make install )   && rm -rf tcl9.0.1-src.tar.gz   && rm -rf tcl9.0.1   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.1.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.1.tar.gz.asc eggdrop-1.10.1.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.1.tar.gz.asc   && tar -zxvf eggdrop-1.10.1.tar.gz   && rm eggdrop-1.10.1.tar.gz   && ( cd eggdrop-1.10.1     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Fri, 17 Apr 2026 00:18:39 GMT
ENV NICK=
# Fri, 17 Apr 2026 00:18:39 GMT
ENV SERVER=
# Fri, 17 Apr 2026 00:18:39 GMT
ENV LISTEN=3333
# Fri, 17 Apr 2026 00:18:39 GMT
ENV USERFILE=eggdrop.user
# Fri, 17 Apr 2026 00:18:39 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 17 Apr 2026 00:18:39 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 17 Apr 2026 00:18:39 GMT
EXPOSE map[3333/tcp:{}]
# Fri, 17 Apr 2026 00:18:39 GMT
COPY entrypoint.sh ./ # buildkit
# Fri, 17 Apr 2026 00:18:39 GMT
COPY docker.tcl ./scripts/ # buildkit
# Fri, 17 Apr 2026 00:18:39 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 17 Apr 2026 00:18:39 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6aa8e6d9529a22c42f62c196fbc14cff0b4b2f6f85731dc47791a26659a0f9d`  
		Last Modified: Fri, 17 Apr 2026 00:18:45 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc20d43f4a698300a2fbd826d527be10d6228ff9e8e1fbe1641919449130ed2`  
		Last Modified: Fri, 17 Apr 2026 00:18:45 GMT  
		Size: 1.2 MB (1171093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe1e830796510795845e0874861d3017366dc761d855737f34104efb97f6cd9c`  
		Last Modified: Fri, 17 Apr 2026 00:18:45 GMT  
		Size: 8.1 MB (8080153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5637df7552f34e0e16cc0e36d7ed5cd368a17cb61e1cfd7c45bc37cc84902faa`  
		Last Modified: Fri, 17 Apr 2026 00:18:45 GMT  
		Size: 1.9 KB (1946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d78a01f4a689ba4d7fceb47a6386bacf8976ecd594b007f7e718bb9d152291b9`  
		Last Modified: Fri, 17 Apr 2026 00:18:46 GMT  
		Size: 1.1 KB (1122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10` - unknown; unknown

```console
$ docker pull eggdrop@sha256:7b637fff83800b96b44a4bf88901779d06ead891ad3c150efd2d1605c0b88b9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.5 KB (163515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd92da4846368041b6d4b65f9427406d8519e4373ccccd579a5b67c6106974f3`

```dockerfile
```

-	Layers:
	-	`sha256:005cad79de2c194f7f0f289f6ef0f8dde0aa123cd07299fa56b8f2724a2fbac3`  
		Last Modified: Fri, 17 Apr 2026 00:18:45 GMT  
		Size: 145.0 KB (145031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34b6dcbdb96fd698ddce7932c0f6009c0e06335c648bb933017f918fded4ebfe`  
		Last Modified: Fri, 17 Apr 2026 00:18:45 GMT  
		Size: 18.5 KB (18484 bytes)  
		MIME: application/vnd.in-toto+json

## `eggdrop:1.10.2`

**does not exist** (yet?)

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:7c52c6349ac565ae223d149ecf9c08a72480ec03ac1a240cef4974e9a6190606
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
$ docker pull eggdrop@sha256:1de45d62f49830dd834a295f02c5c529aed23f36b2438fd4cf074a364167b66a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11243580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68fda12c9f7b5373168423949b8dc695c449e581fcba731be5e7c6bfcc4716a1`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:12 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Mon, 22 Jun 2026 19:46:12 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Mon, 22 Jun 2026 19:46:13 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Mon, 22 Jun 2026 19:46:13 GMT
ENV EGGDROP_SHA256=e42668f102c1446901b066d13fe0bf39622afca8d723f356ac2390d5faaf6e5e
# Mon, 22 Jun 2026 19:46:13 GMT
ENV EGGDROP_COMMIT=541e8ac17e549a40e177b5eea54e4abf24629a33
# Mon, 22 Jun 2026 19:46:28 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256 *develop.tar.gz" | sha256sum -c -   && tar -zxf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Mon, 22 Jun 2026 19:46:28 GMT
ENV NICK=
# Mon, 22 Jun 2026 19:46:28 GMT
ENV SERVER=
# Mon, 22 Jun 2026 19:46:28 GMT
ENV LISTEN=3333
# Mon, 22 Jun 2026 19:46:28 GMT
ENV USERFILE=eggdrop.user
# Mon, 22 Jun 2026 19:46:28 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 22 Jun 2026 19:46:28 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 22 Jun 2026 19:46:28 GMT
EXPOSE map[3333/tcp:{}]
# Mon, 22 Jun 2026 19:46:28 GMT
COPY entrypoint.sh ./ # buildkit
# Mon, 22 Jun 2026 19:46:28 GMT
COPY docker.tcl ./scripts/ # buildkit
# Mon, 22 Jun 2026 19:46:28 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 22 Jun 2026 19:46:28 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b070ceba434db40bc35d163ebed5d3dcb00e5f09ca2d0b861e1f769a7dd97f`  
		Last Modified: Mon, 22 Jun 2026 19:46:33 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a12273298b9efe5cb4f1fe848b5cfc223b56cd96f9119be22952656610723116`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 4.7 MB (4749860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdaca1884234da244c3aba2cac59550782540a3edd0fa2fd8fe1c43525f6c24a`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 2.6 MB (2645238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe920fd265aac2f04f6b0ece594238dd6c0482584faca802d16bd7eb8b2a6b3e`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 2.0 KB (1958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a65fbc9fd4daafddf4083d0fe39076b5fe351ef111513d59b780f53dfbcae0`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:develop` - unknown; unknown

```console
$ docker pull eggdrop@sha256:7998a016b1449296d0d297ee3a0e92c84693beac8b6d452171ba20dde6b70ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **754.0 KB (754019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13542526a024fcf91c280e24bb1aa690b31e25b5e74545a49cc372264785000b`

```dockerfile
```

-	Layers:
	-	`sha256:948b6d1b77c1ad7f9b082cd8171fc225e1fcb652fb81365907120c39e912d293`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 738.2 KB (738227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cbb429c5014ca649e07d5faca424f32694a4c7671a9f0b0c69dccfad7b389f8`  
		Last Modified: Mon, 22 Jun 2026 19:46:33 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:develop` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:3d199d50c51cea7cd1de7c4805aa28a084105e7b03faae4d69e5bf4e523ccb5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10927156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d80cbac22d46a69f551b2c1ba1e7130ffef17e4c848765f193d67bbab481dd7`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:45:43 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Mon, 22 Jun 2026 19:45:43 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Mon, 22 Jun 2026 19:45:45 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Mon, 22 Jun 2026 19:45:45 GMT
ENV EGGDROP_SHA256=e42668f102c1446901b066d13fe0bf39622afca8d723f356ac2390d5faaf6e5e
# Mon, 22 Jun 2026 19:45:45 GMT
ENV EGGDROP_COMMIT=541e8ac17e549a40e177b5eea54e4abf24629a33
# Mon, 22 Jun 2026 19:46:06 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256 *develop.tar.gz" | sha256sum -c -   && tar -zxf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Mon, 22 Jun 2026 19:46:06 GMT
ENV NICK=
# Mon, 22 Jun 2026 19:46:06 GMT
ENV SERVER=
# Mon, 22 Jun 2026 19:46:06 GMT
ENV LISTEN=3333
# Mon, 22 Jun 2026 19:46:06 GMT
ENV USERFILE=eggdrop.user
# Mon, 22 Jun 2026 19:46:06 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 22 Jun 2026 19:46:06 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 22 Jun 2026 19:46:06 GMT
EXPOSE map[3333/tcp:{}]
# Mon, 22 Jun 2026 19:46:06 GMT
COPY entrypoint.sh ./ # buildkit
# Mon, 22 Jun 2026 19:46:06 GMT
COPY docker.tcl ./scripts/ # buildkit
# Mon, 22 Jun 2026 19:46:06 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 22 Jun 2026 19:46:06 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ff6befc072d7df2a002766997ea94b67e3af6d5653c9017c39b0e8ca4a7881`  
		Last Modified: Mon, 22 Jun 2026 19:46:10 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2e60d8115e3b933ff6aed3375deb0ccfdc96bc8a48dfd9ed25b326a8cb6af65`  
		Last Modified: Mon, 22 Jun 2026 19:46:10 GMT  
		Size: 4.7 MB (4708193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd43a8e8431cf4313e1dfbb347f0a0f575d3f56078bb146f40ca4bb6de4d28a1`  
		Last Modified: Mon, 22 Jun 2026 19:46:10 GMT  
		Size: 2.7 MB (2662294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:255c34a048e4b6795233ec626d75ae884e9712829cf66aeb554297ff93522548`  
		Last Modified: Mon, 22 Jun 2026 19:46:10 GMT  
		Size: 2.0 KB (1964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c36ed67821b0ab746ef4c066fc2d0348d2357fc6ad1d30dd710904b7d1b9254`  
		Last Modified: Mon, 22 Jun 2026 19:46:11 GMT  
		Size: 1.1 KB (1122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:develop` - unknown; unknown

```console
$ docker pull eggdrop@sha256:e07f8d1173f6558596c020af2edc701b7517d587b87698267abfab3ed6e8a7e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 KB (15659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a55a9179da25fb564baf3c87b7bb66208668b320d243abe525450e7a86eff6`

```dockerfile
```

-	Layers:
	-	`sha256:a281ebaeeb069412b51c7976e2106c32d13da9721fa29ea45947ed25c3b75e59`  
		Last Modified: Mon, 22 Jun 2026 19:46:10 GMT  
		Size: 15.7 KB (15659 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:develop` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:0103ae89f8bc17e7218ad8c552081abc2eac69570e28e3dd0380edd5a7b4a7ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11670137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fd0cdcc825862d384bb7968516e5d1e905b2804725a20192b0c083796739012`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:55 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Mon, 22 Jun 2026 19:46:55 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Mon, 22 Jun 2026 19:46:56 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Mon, 22 Jun 2026 19:46:56 GMT
ENV EGGDROP_SHA256=e42668f102c1446901b066d13fe0bf39622afca8d723f356ac2390d5faaf6e5e
# Mon, 22 Jun 2026 19:46:56 GMT
ENV EGGDROP_COMMIT=541e8ac17e549a40e177b5eea54e4abf24629a33
# Mon, 22 Jun 2026 19:47:13 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256 *develop.tar.gz" | sha256sum -c -   && tar -zxf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Mon, 22 Jun 2026 19:47:13 GMT
ENV NICK=
# Mon, 22 Jun 2026 19:47:13 GMT
ENV SERVER=
# Mon, 22 Jun 2026 19:47:13 GMT
ENV LISTEN=3333
# Mon, 22 Jun 2026 19:47:13 GMT
ENV USERFILE=eggdrop.user
# Mon, 22 Jun 2026 19:47:13 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 22 Jun 2026 19:47:13 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 22 Jun 2026 19:47:13 GMT
EXPOSE map[3333/tcp:{}]
# Mon, 22 Jun 2026 19:47:13 GMT
COPY entrypoint.sh ./ # buildkit
# Mon, 22 Jun 2026 19:47:13 GMT
COPY docker.tcl ./scripts/ # buildkit
# Mon, 22 Jun 2026 19:47:13 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 22 Jun 2026 19:47:13 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9a6678e82d80efd9efcb24a47993940cc934a4c7a4e4852262ae525ddddc70a`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90595943eb024bb62787931b93996d3780d7a573c3872eb301f2e2e1ad8dc41e`  
		Last Modified: Mon, 22 Jun 2026 19:47:19 GMT  
		Size: 4.8 MB (4823734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c578a5d2c01376d5ec9a0d2407811fdf719d1c17e16eee09fde77460666c5dab`  
		Last Modified: Mon, 22 Jun 2026 19:47:19 GMT  
		Size: 2.7 MB (2660473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76353eda4c9e040bf5d2cab45e04a3395c7f86481167a2b124583e3b8daf7f07`  
		Last Modified: Mon, 22 Jun 2026 19:47:19 GMT  
		Size: 2.0 KB (1964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1668f6d47a72570b1ffa667e77dc96f083b2a546334b5e57f6a0a33df4d1d9c`  
		Last Modified: Mon, 22 Jun 2026 19:47:21 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:develop` - unknown; unknown

```console
$ docker pull eggdrop@sha256:712c594b6e75907ba3440964f21c0268a06011d0649e188b4e585e6fbcbeacd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.5 KB (753487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56128c1c853f455e7c3d9b157551a5880c6403bfec82e8c747d5faf64b28b13e`

```dockerfile
```

-	Layers:
	-	`sha256:fcf85ecdb36d750c6542f2a781026e82feb78d20d5cfc0c3699fe6bd5a395234`  
		Last Modified: Mon, 22 Jun 2026 19:47:19 GMT  
		Size: 737.6 KB (737597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ff973a28729a4de88b1c521f5c394dff9dd043dd7b4af7140c976a1695a1795`  
		Last Modified: Mon, 22 Jun 2026 19:47:19 GMT  
		Size: 15.9 KB (15890 bytes)  
		MIME: application/vnd.in-toto+json

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:2028d25c44a8fa7dbbfee1e1c9db809c5ba23eaa6516fbe84eb86c44886e1e04
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
$ docker pull eggdrop@sha256:64da7a09d997e3b03ce2bd030fa54d14325da63f7df7391570e074fd5bd1f1e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12802733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718de2fa6c06b5129ac5a811dc8441b23bb94c98231b303ac02f9ccbd5cb2c20`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:15:18 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Fri, 17 Apr 2026 00:15:18 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Fri, 17 Apr 2026 00:15:19 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl # buildkit
# Fri, 17 Apr 2026 00:18:32 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://prdownloads.sourceforge.net/tcl/tcl9.0.1-src.tar.gz" -O tcl9.0.1-src.tar.gz --progress=dot:giga   && tar -zxf tcl9.0.1-src.tar.gz   && ( cd tcl9.0.1     && cd unix     && ./configure     && nproc="$(nproc)"     && make -j"$nproc"     && make install )   && rm -rf tcl9.0.1-src.tar.gz   && rm -rf tcl9.0.1   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.1.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.1.tar.gz.asc eggdrop-1.10.1.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.1.tar.gz.asc   && tar -zxvf eggdrop-1.10.1.tar.gz   && rm eggdrop-1.10.1.tar.gz   && ( cd eggdrop-1.10.1     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Fri, 17 Apr 2026 00:18:32 GMT
ENV NICK=
# Fri, 17 Apr 2026 00:18:32 GMT
ENV SERVER=
# Fri, 17 Apr 2026 00:18:32 GMT
ENV LISTEN=3333
# Fri, 17 Apr 2026 00:18:32 GMT
ENV USERFILE=eggdrop.user
# Fri, 17 Apr 2026 00:18:32 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 17 Apr 2026 00:18:32 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 17 Apr 2026 00:18:32 GMT
EXPOSE map[3333/tcp:{}]
# Fri, 17 Apr 2026 00:18:32 GMT
COPY entrypoint.sh ./ # buildkit
# Fri, 17 Apr 2026 00:18:32 GMT
COPY docker.tcl ./scripts/ # buildkit
# Fri, 17 Apr 2026 00:18:32 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 17 Apr 2026 00:18:32 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f339cba84b981e1992cc557fb400cce5b960817ef6a6ea37d3679e32151c52d`  
		Last Modified: Fri, 17 Apr 2026 00:18:38 GMT  
		Size: 960.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10b54844e2f73941a03f5f1377b0108c701158c0206eadc611f9f0cde58cfd62`  
		Last Modified: Fri, 17 Apr 2026 00:18:38 GMT  
		Size: 1.1 MB (1116762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f1258ab988d483973ca23059dfec49d66ea59ba160c20334542ca1dd7da1a8`  
		Last Modified: Fri, 17 Apr 2026 00:18:38 GMT  
		Size: 8.0 MB (8035037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e7d1919a67ebb69f4e586c1dd8cecb6332dee411ca6337a373011a666e2cdc`  
		Last Modified: Fri, 17 Apr 2026 00:18:38 GMT  
		Size: 1.9 KB (1946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16b3eae19d9f3bea0db98992720d3ca3ad36feb9b14d3aaccaeaa5d322e90f10`  
		Last Modified: Fri, 17 Apr 2026 00:18:39 GMT  
		Size: 1.1 KB (1121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:latest` - unknown; unknown

```console
$ docker pull eggdrop@sha256:1e16c97c5e56cc6861f6cc7fabc9a4a7a177078ad500159acd8f2108f30b58f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.3 KB (163325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36970bc6aaf3d383125e9b85289878fef3922f9d720404cd8c9b8753dd0dfa10`

```dockerfile
```

-	Layers:
	-	`sha256:ed8e5fe0d625549d9a976cd4048647e39ad76f3555e48ea0e4109bc60c28b960`  
		Last Modified: Fri, 17 Apr 2026 00:18:38 GMT  
		Size: 145.0 KB (144975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abdc2afd18987a9aa8aae1747b837845425d0a1289ce2f77ba657da307910f96`  
		Last Modified: Fri, 17 Apr 2026 00:18:38 GMT  
		Size: 18.4 KB (18350 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:latest` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:5aca1ce17d31254d25f5dd5123df2b5fbb8a7ba5d4191b4df1a9e0ee96cd3175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12355218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3761451ba6fa939892112f0a02ba6fb597d891bcf3ed467e3ded6545ac9bec4`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:38 GMT
ADD alpine-minirootfs-3.21.7-armhf.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:38 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:14:52 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Fri, 17 Apr 2026 00:14:52 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Fri, 17 Apr 2026 00:14:53 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl # buildkit
# Fri, 17 Apr 2026 00:19:41 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://prdownloads.sourceforge.net/tcl/tcl9.0.1-src.tar.gz" -O tcl9.0.1-src.tar.gz --progress=dot:giga   && tar -zxf tcl9.0.1-src.tar.gz   && ( cd tcl9.0.1     && cd unix     && ./configure     && nproc="$(nproc)"     && make -j"$nproc"     && make install )   && rm -rf tcl9.0.1-src.tar.gz   && rm -rf tcl9.0.1   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.1.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.1.tar.gz.asc eggdrop-1.10.1.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.1.tar.gz.asc   && tar -zxvf eggdrop-1.10.1.tar.gz   && rm eggdrop-1.10.1.tar.gz   && ( cd eggdrop-1.10.1     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Fri, 17 Apr 2026 00:19:41 GMT
ENV NICK=
# Fri, 17 Apr 2026 00:19:41 GMT
ENV SERVER=
# Fri, 17 Apr 2026 00:19:41 GMT
ENV LISTEN=3333
# Fri, 17 Apr 2026 00:19:41 GMT
ENV USERFILE=eggdrop.user
# Fri, 17 Apr 2026 00:19:41 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 17 Apr 2026 00:19:41 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 17 Apr 2026 00:19:41 GMT
EXPOSE map[3333/tcp:{}]
# Fri, 17 Apr 2026 00:19:41 GMT
COPY entrypoint.sh ./ # buildkit
# Fri, 17 Apr 2026 00:19:42 GMT
COPY docker.tcl ./scripts/ # buildkit
# Fri, 17 Apr 2026 00:19:42 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 17 Apr 2026 00:19:42 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:f204fe7ddd292eb5d783ce14a8bc6c5a7defbb8adda2989da2c9dcf46b3e08e9`  
		Last Modified: Thu, 16 Apr 2026 23:53:42 GMT  
		Size: 3.4 MB (3369055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2c374072ba32c01442f0bc881932103e1d3772d2bc00e8b062c7092cdc2e68`  
		Last Modified: Fri, 17 Apr 2026 00:19:46 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6a3fc78f147be0a6f75404b2223e3a66d9ed97bc8b88511cefff87c7fc3feb`  
		Last Modified: Fri, 17 Apr 2026 00:19:46 GMT  
		Size: 1.1 MB (1129838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae370e1d341a287804a804d34cc0acf80fd3cd119915268293b2d8ac176af8`  
		Last Modified: Fri, 17 Apr 2026 00:19:46 GMT  
		Size: 7.9 MB (7852263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5c85741ba086a4b4bd0655ce6c6b9a28480970380dc9c143ce66d52d1a7cd1`  
		Last Modified: Fri, 17 Apr 2026 00:19:46 GMT  
		Size: 1.9 KB (1948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e9ed8de466fe06402cb0fb11c925eb41da881155504ec1494fdc22c7694858c`  
		Last Modified: Fri, 17 Apr 2026 00:19:47 GMT  
		Size: 1.1 KB (1126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:latest` - unknown; unknown

```console
$ docker pull eggdrop@sha256:46de0444f5f0c5c64594207ffcf40cf79435a1e2d46ae6383bdb9d9a3bee73dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.2 KB (18241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1185ee92ea1edfb662c66c485d29f135e59c101fd60fd7a0596e32a72008d077`

```dockerfile
```

-	Layers:
	-	`sha256:30709a5fd6cd3680779b0fb002e97d206a56433cf499550f767302d490ab0971`  
		Last Modified: Fri, 17 Apr 2026 00:19:46 GMT  
		Size: 18.2 KB (18241 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:latest` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:2f41546c2c21a00307692dfacbe19b20b998c5c97248e0396c7285f504d9d692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13249767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb801cf5db8a542234bffb3b06d94385d41b5bade14ecc8ec7d4483d3e2bb26`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:14:47 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Fri, 17 Apr 2026 00:14:47 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Fri, 17 Apr 2026 00:14:48 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl # buildkit
# Fri, 17 Apr 2026 00:18:39 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://prdownloads.sourceforge.net/tcl/tcl9.0.1-src.tar.gz" -O tcl9.0.1-src.tar.gz --progress=dot:giga   && tar -zxf tcl9.0.1-src.tar.gz   && ( cd tcl9.0.1     && cd unix     && ./configure     && nproc="$(nproc)"     && make -j"$nproc"     && make install )   && rm -rf tcl9.0.1-src.tar.gz   && rm -rf tcl9.0.1   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.1.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.1.tar.gz.asc eggdrop-1.10.1.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.1.tar.gz.asc   && tar -zxvf eggdrop-1.10.1.tar.gz   && rm eggdrop-1.10.1.tar.gz   && ( cd eggdrop-1.10.1     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Fri, 17 Apr 2026 00:18:39 GMT
ENV NICK=
# Fri, 17 Apr 2026 00:18:39 GMT
ENV SERVER=
# Fri, 17 Apr 2026 00:18:39 GMT
ENV LISTEN=3333
# Fri, 17 Apr 2026 00:18:39 GMT
ENV USERFILE=eggdrop.user
# Fri, 17 Apr 2026 00:18:39 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 17 Apr 2026 00:18:39 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 17 Apr 2026 00:18:39 GMT
EXPOSE map[3333/tcp:{}]
# Fri, 17 Apr 2026 00:18:39 GMT
COPY entrypoint.sh ./ # buildkit
# Fri, 17 Apr 2026 00:18:39 GMT
COPY docker.tcl ./scripts/ # buildkit
# Fri, 17 Apr 2026 00:18:39 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 17 Apr 2026 00:18:39 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6aa8e6d9529a22c42f62c196fbc14cff0b4b2f6f85731dc47791a26659a0f9d`  
		Last Modified: Fri, 17 Apr 2026 00:18:45 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc20d43f4a698300a2fbd826d527be10d6228ff9e8e1fbe1641919449130ed2`  
		Last Modified: Fri, 17 Apr 2026 00:18:45 GMT  
		Size: 1.2 MB (1171093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe1e830796510795845e0874861d3017366dc761d855737f34104efb97f6cd9c`  
		Last Modified: Fri, 17 Apr 2026 00:18:45 GMT  
		Size: 8.1 MB (8080153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5637df7552f34e0e16cc0e36d7ed5cd368a17cb61e1cfd7c45bc37cc84902faa`  
		Last Modified: Fri, 17 Apr 2026 00:18:45 GMT  
		Size: 1.9 KB (1946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d78a01f4a689ba4d7fceb47a6386bacf8976ecd594b007f7e718bb9d152291b9`  
		Last Modified: Fri, 17 Apr 2026 00:18:46 GMT  
		Size: 1.1 KB (1122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:latest` - unknown; unknown

```console
$ docker pull eggdrop@sha256:7b637fff83800b96b44a4bf88901779d06ead891ad3c150efd2d1605c0b88b9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.5 KB (163515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd92da4846368041b6d4b65f9427406d8519e4373ccccd579a5b67c6106974f3`

```dockerfile
```

-	Layers:
	-	`sha256:005cad79de2c194f7f0f289f6ef0f8dde0aa123cd07299fa56b8f2724a2fbac3`  
		Last Modified: Fri, 17 Apr 2026 00:18:45 GMT  
		Size: 145.0 KB (145031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34b6dcbdb96fd698ddce7932c0f6009c0e06335c648bb933017f918fded4ebfe`  
		Last Modified: Fri, 17 Apr 2026 00:18:45 GMT  
		Size: 18.5 KB (18484 bytes)  
		MIME: application/vnd.in-toto+json

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:2028d25c44a8fa7dbbfee1e1c9db809c5ba23eaa6516fbe84eb86c44886e1e04
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
$ docker pull eggdrop@sha256:64da7a09d997e3b03ce2bd030fa54d14325da63f7df7391570e074fd5bd1f1e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12802733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718de2fa6c06b5129ac5a811dc8441b23bb94c98231b303ac02f9ccbd5cb2c20`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:15:18 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Fri, 17 Apr 2026 00:15:18 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Fri, 17 Apr 2026 00:15:19 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl # buildkit
# Fri, 17 Apr 2026 00:18:32 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://prdownloads.sourceforge.net/tcl/tcl9.0.1-src.tar.gz" -O tcl9.0.1-src.tar.gz --progress=dot:giga   && tar -zxf tcl9.0.1-src.tar.gz   && ( cd tcl9.0.1     && cd unix     && ./configure     && nproc="$(nproc)"     && make -j"$nproc"     && make install )   && rm -rf tcl9.0.1-src.tar.gz   && rm -rf tcl9.0.1   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.1.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.1.tar.gz.asc eggdrop-1.10.1.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.1.tar.gz.asc   && tar -zxvf eggdrop-1.10.1.tar.gz   && rm eggdrop-1.10.1.tar.gz   && ( cd eggdrop-1.10.1     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Fri, 17 Apr 2026 00:18:32 GMT
ENV NICK=
# Fri, 17 Apr 2026 00:18:32 GMT
ENV SERVER=
# Fri, 17 Apr 2026 00:18:32 GMT
ENV LISTEN=3333
# Fri, 17 Apr 2026 00:18:32 GMT
ENV USERFILE=eggdrop.user
# Fri, 17 Apr 2026 00:18:32 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 17 Apr 2026 00:18:32 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 17 Apr 2026 00:18:32 GMT
EXPOSE map[3333/tcp:{}]
# Fri, 17 Apr 2026 00:18:32 GMT
COPY entrypoint.sh ./ # buildkit
# Fri, 17 Apr 2026 00:18:32 GMT
COPY docker.tcl ./scripts/ # buildkit
# Fri, 17 Apr 2026 00:18:32 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 17 Apr 2026 00:18:32 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f339cba84b981e1992cc557fb400cce5b960817ef6a6ea37d3679e32151c52d`  
		Last Modified: Fri, 17 Apr 2026 00:18:38 GMT  
		Size: 960.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10b54844e2f73941a03f5f1377b0108c701158c0206eadc611f9f0cde58cfd62`  
		Last Modified: Fri, 17 Apr 2026 00:18:38 GMT  
		Size: 1.1 MB (1116762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f1258ab988d483973ca23059dfec49d66ea59ba160c20334542ca1dd7da1a8`  
		Last Modified: Fri, 17 Apr 2026 00:18:38 GMT  
		Size: 8.0 MB (8035037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e7d1919a67ebb69f4e586c1dd8cecb6332dee411ca6337a373011a666e2cdc`  
		Last Modified: Fri, 17 Apr 2026 00:18:38 GMT  
		Size: 1.9 KB (1946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16b3eae19d9f3bea0db98992720d3ca3ad36feb9b14d3aaccaeaa5d322e90f10`  
		Last Modified: Fri, 17 Apr 2026 00:18:39 GMT  
		Size: 1.1 KB (1121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:stable` - unknown; unknown

```console
$ docker pull eggdrop@sha256:1e16c97c5e56cc6861f6cc7fabc9a4a7a177078ad500159acd8f2108f30b58f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.3 KB (163325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36970bc6aaf3d383125e9b85289878fef3922f9d720404cd8c9b8753dd0dfa10`

```dockerfile
```

-	Layers:
	-	`sha256:ed8e5fe0d625549d9a976cd4048647e39ad76f3555e48ea0e4109bc60c28b960`  
		Last Modified: Fri, 17 Apr 2026 00:18:38 GMT  
		Size: 145.0 KB (144975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abdc2afd18987a9aa8aae1747b837845425d0a1289ce2f77ba657da307910f96`  
		Last Modified: Fri, 17 Apr 2026 00:18:38 GMT  
		Size: 18.4 KB (18350 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:stable` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:5aca1ce17d31254d25f5dd5123df2b5fbb8a7ba5d4191b4df1a9e0ee96cd3175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12355218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3761451ba6fa939892112f0a02ba6fb597d891bcf3ed467e3ded6545ac9bec4`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:38 GMT
ADD alpine-minirootfs-3.21.7-armhf.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:38 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:14:52 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Fri, 17 Apr 2026 00:14:52 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Fri, 17 Apr 2026 00:14:53 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl # buildkit
# Fri, 17 Apr 2026 00:19:41 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://prdownloads.sourceforge.net/tcl/tcl9.0.1-src.tar.gz" -O tcl9.0.1-src.tar.gz --progress=dot:giga   && tar -zxf tcl9.0.1-src.tar.gz   && ( cd tcl9.0.1     && cd unix     && ./configure     && nproc="$(nproc)"     && make -j"$nproc"     && make install )   && rm -rf tcl9.0.1-src.tar.gz   && rm -rf tcl9.0.1   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.1.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.1.tar.gz.asc eggdrop-1.10.1.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.1.tar.gz.asc   && tar -zxvf eggdrop-1.10.1.tar.gz   && rm eggdrop-1.10.1.tar.gz   && ( cd eggdrop-1.10.1     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Fri, 17 Apr 2026 00:19:41 GMT
ENV NICK=
# Fri, 17 Apr 2026 00:19:41 GMT
ENV SERVER=
# Fri, 17 Apr 2026 00:19:41 GMT
ENV LISTEN=3333
# Fri, 17 Apr 2026 00:19:41 GMT
ENV USERFILE=eggdrop.user
# Fri, 17 Apr 2026 00:19:41 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 17 Apr 2026 00:19:41 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 17 Apr 2026 00:19:41 GMT
EXPOSE map[3333/tcp:{}]
# Fri, 17 Apr 2026 00:19:41 GMT
COPY entrypoint.sh ./ # buildkit
# Fri, 17 Apr 2026 00:19:42 GMT
COPY docker.tcl ./scripts/ # buildkit
# Fri, 17 Apr 2026 00:19:42 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 17 Apr 2026 00:19:42 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:f204fe7ddd292eb5d783ce14a8bc6c5a7defbb8adda2989da2c9dcf46b3e08e9`  
		Last Modified: Thu, 16 Apr 2026 23:53:42 GMT  
		Size: 3.4 MB (3369055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2c374072ba32c01442f0bc881932103e1d3772d2bc00e8b062c7092cdc2e68`  
		Last Modified: Fri, 17 Apr 2026 00:19:46 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6a3fc78f147be0a6f75404b2223e3a66d9ed97bc8b88511cefff87c7fc3feb`  
		Last Modified: Fri, 17 Apr 2026 00:19:46 GMT  
		Size: 1.1 MB (1129838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae370e1d341a287804a804d34cc0acf80fd3cd119915268293b2d8ac176af8`  
		Last Modified: Fri, 17 Apr 2026 00:19:46 GMT  
		Size: 7.9 MB (7852263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5c85741ba086a4b4bd0655ce6c6b9a28480970380dc9c143ce66d52d1a7cd1`  
		Last Modified: Fri, 17 Apr 2026 00:19:46 GMT  
		Size: 1.9 KB (1948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e9ed8de466fe06402cb0fb11c925eb41da881155504ec1494fdc22c7694858c`  
		Last Modified: Fri, 17 Apr 2026 00:19:47 GMT  
		Size: 1.1 KB (1126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:stable` - unknown; unknown

```console
$ docker pull eggdrop@sha256:46de0444f5f0c5c64594207ffcf40cf79435a1e2d46ae6383bdb9d9a3bee73dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.2 KB (18241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1185ee92ea1edfb662c66c485d29f135e59c101fd60fd7a0596e32a72008d077`

```dockerfile
```

-	Layers:
	-	`sha256:30709a5fd6cd3680779b0fb002e97d206a56433cf499550f767302d490ab0971`  
		Last Modified: Fri, 17 Apr 2026 00:19:46 GMT  
		Size: 18.2 KB (18241 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:stable` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:2f41546c2c21a00307692dfacbe19b20b998c5c97248e0396c7285f504d9d692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13249767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb801cf5db8a542234bffb3b06d94385d41b5bade14ecc8ec7d4483d3e2bb26`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:14:47 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Fri, 17 Apr 2026 00:14:47 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Fri, 17 Apr 2026 00:14:48 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl # buildkit
# Fri, 17 Apr 2026 00:18:39 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://prdownloads.sourceforge.net/tcl/tcl9.0.1-src.tar.gz" -O tcl9.0.1-src.tar.gz --progress=dot:giga   && tar -zxf tcl9.0.1-src.tar.gz   && ( cd tcl9.0.1     && cd unix     && ./configure     && nproc="$(nproc)"     && make -j"$nproc"     && make install )   && rm -rf tcl9.0.1-src.tar.gz   && rm -rf tcl9.0.1   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.1.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.1.tar.gz.asc eggdrop-1.10.1.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.1.tar.gz.asc   && tar -zxvf eggdrop-1.10.1.tar.gz   && rm eggdrop-1.10.1.tar.gz   && ( cd eggdrop-1.10.1     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Fri, 17 Apr 2026 00:18:39 GMT
ENV NICK=
# Fri, 17 Apr 2026 00:18:39 GMT
ENV SERVER=
# Fri, 17 Apr 2026 00:18:39 GMT
ENV LISTEN=3333
# Fri, 17 Apr 2026 00:18:39 GMT
ENV USERFILE=eggdrop.user
# Fri, 17 Apr 2026 00:18:39 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 17 Apr 2026 00:18:39 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 17 Apr 2026 00:18:39 GMT
EXPOSE map[3333/tcp:{}]
# Fri, 17 Apr 2026 00:18:39 GMT
COPY entrypoint.sh ./ # buildkit
# Fri, 17 Apr 2026 00:18:39 GMT
COPY docker.tcl ./scripts/ # buildkit
# Fri, 17 Apr 2026 00:18:39 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 17 Apr 2026 00:18:39 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6aa8e6d9529a22c42f62c196fbc14cff0b4b2f6f85731dc47791a26659a0f9d`  
		Last Modified: Fri, 17 Apr 2026 00:18:45 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc20d43f4a698300a2fbd826d527be10d6228ff9e8e1fbe1641919449130ed2`  
		Last Modified: Fri, 17 Apr 2026 00:18:45 GMT  
		Size: 1.2 MB (1171093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe1e830796510795845e0874861d3017366dc761d855737f34104efb97f6cd9c`  
		Last Modified: Fri, 17 Apr 2026 00:18:45 GMT  
		Size: 8.1 MB (8080153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5637df7552f34e0e16cc0e36d7ed5cd368a17cb61e1cfd7c45bc37cc84902faa`  
		Last Modified: Fri, 17 Apr 2026 00:18:45 GMT  
		Size: 1.9 KB (1946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d78a01f4a689ba4d7fceb47a6386bacf8976ecd594b007f7e718bb9d152291b9`  
		Last Modified: Fri, 17 Apr 2026 00:18:46 GMT  
		Size: 1.1 KB (1122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:stable` - unknown; unknown

```console
$ docker pull eggdrop@sha256:7b637fff83800b96b44a4bf88901779d06ead891ad3c150efd2d1605c0b88b9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.5 KB (163515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd92da4846368041b6d4b65f9427406d8519e4373ccccd579a5b67c6106974f3`

```dockerfile
```

-	Layers:
	-	`sha256:005cad79de2c194f7f0f289f6ef0f8dde0aa123cd07299fa56b8f2724a2fbac3`  
		Last Modified: Fri, 17 Apr 2026 00:18:45 GMT  
		Size: 145.0 KB (145031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34b6dcbdb96fd698ddce7932c0f6009c0e06335c648bb933017f918fded4ebfe`  
		Last Modified: Fri, 17 Apr 2026 00:18:45 GMT  
		Size: 18.5 KB (18484 bytes)  
		MIME: application/vnd.in-toto+json
