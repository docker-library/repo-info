## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:9e346b34a7fbb4ab0c46cc631a3e47b49d7cd6ed0f2d5629e7ab30c10257e5ec
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
$ docker pull eggdrop@sha256:b254b7af14b0ef0e929212a806beebd2dc7a352b5d185fdfc060d53cb592f6f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11364144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdac2d0f4184f6d3404fb24438dffb1e3e40f033df359fc589dc3c3e3293e40a`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:38 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Wed, 21 Oct 2026 21:06:38 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Wed, 21 Oct 2026 21:06:39 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Wed, 21 Oct 2026 21:06:57 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Wed, 21 Oct 2026 21:06:57 GMT
ENV NICK=
# Wed, 21 Oct 2026 21:06:57 GMT
ENV SERVER=
# Wed, 21 Oct 2026 21:06:57 GMT
ENV LISTEN=3333
# Wed, 21 Oct 2026 21:06:57 GMT
ENV USERFILE=eggdrop.user
# Wed, 21 Oct 2026 21:06:57 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 21 Oct 2026 21:06:57 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 21 Oct 2026 21:06:57 GMT
EXPOSE map[3333/tcp:{}]
# Wed, 21 Oct 2026 21:06:57 GMT
COPY entrypoint.sh ./ # buildkit
# Wed, 21 Oct 2026 21:06:58 GMT
COPY docker.tcl ./scripts/ # buildkit
# Wed, 21 Oct 2026 21:06:58 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:58 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d0d3b1b28c8c0d90c67f4afb3f38a59a6fd709cb74353a0956516118ed4770`  
		Last Modified: Wed, 21 Oct 2026 21:07:03 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca8ba3cf3478b65119c83a29589a00047e96bcd2028f63d0a2d377f3100fbb8`  
		Last Modified: Wed, 21 Oct 2026 21:07:03 GMT  
		Size: 4.8 MB (4770943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af92f7f45ed09546df5b7d303a3f65529a5ea04047d8632bee2ae7a26ff939cb`  
		Last Modified: Wed, 21 Oct 2026 21:07:03 GMT  
		Size: 2.7 MB (2736914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa0c9b1d8e38d00dd5cfbb1eb62697447d958b00d8d5feb00074e4e7520b2d57`  
		Last Modified: Wed, 21 Oct 2026 21:07:03 GMT  
		Size: 1.9 KB (1946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8dda2bbcd3a855835baff2ab849522f0f3112866ff7cd6993a2e3e804e0361`  
		Last Modified: Wed, 21 Oct 2026 21:07:04 GMT  
		Size: 1.1 KB (1127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:stable` - unknown; unknown

```console
$ docker pull eggdrop@sha256:f6b75b4f1b0eabda8988fabddbd14061a2d15177b77a1f8b0acc91f800d8c682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **756.2 KB (756215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c384579315657b14a35085e2a7b7bdf85ed5d98fd4bc06e44a62032fd6f8cb`

```dockerfile
```

-	Layers:
	-	`sha256:067a15bd2d8ef8920827278ec2f930be22c4d94083c2139d076d87870c7eb461`  
		Last Modified: Wed, 21 Oct 2026 21:07:03 GMT  
		Size: 739.1 KB (739121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a27b90ec5e3f288a798f7ab104214d32743b953534fc1c172870b110ea6e847`  
		Last Modified: Wed, 21 Oct 2026 21:07:03 GMT  
		Size: 17.1 KB (17094 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:stable` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:8f3be52054602c2c80e7f901cc8109b144ec91d920fd177d11a255c6ea220bb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11042506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c27069cb2510c4f05d7555e40d95cb7a9daebb7db05146278454f337582f838c`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:10:52 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Wed, 21 Oct 2026 21:10:52 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Wed, 21 Oct 2026 21:10:53 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Wed, 21 Oct 2026 21:11:16 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Wed, 21 Oct 2026 21:11:16 GMT
ENV NICK=
# Wed, 21 Oct 2026 21:11:16 GMT
ENV SERVER=
# Wed, 21 Oct 2026 21:11:16 GMT
ENV LISTEN=3333
# Wed, 21 Oct 2026 21:11:16 GMT
ENV USERFILE=eggdrop.user
# Wed, 21 Oct 2026 21:11:16 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 21 Oct 2026 21:11:16 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 21 Oct 2026 21:11:16 GMT
EXPOSE map[3333/tcp:{}]
# Wed, 21 Oct 2026 21:11:16 GMT
COPY entrypoint.sh ./ # buildkit
# Wed, 21 Oct 2026 21:11:16 GMT
COPY docker.tcl ./scripts/ # buildkit
# Wed, 21 Oct 2026 21:11:16 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 21 Oct 2026 21:11:16 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f5a469dbbe51952d6cb5469e2af7ce1291c20893d1f8ebdd71f47387d786f9`  
		Last Modified: Wed, 21 Oct 2026 21:11:20 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9929e8ff8fd493bf9bfb5a78b4211853260b3702be0e468c3a570917477aa307`  
		Last Modified: Wed, 21 Oct 2026 21:11:20 GMT  
		Size: 4.7 MB (4726976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f869fa5e19b1c0f02d9b532772f4b33b87687298e1d5322334887ab8de1cd6`  
		Last Modified: Wed, 21 Oct 2026 21:11:20 GMT  
		Size: 2.8 MB (2753275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7060ec7d2f1986da5a602e909af020adb59dc65a78373a7dab54db3bea36f10`  
		Last Modified: Wed, 21 Oct 2026 21:11:20 GMT  
		Size: 1.9 KB (1950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc58665046234e5733835672b483679232c8d55119f2cd626cefa21c0bad7492`  
		Last Modified: Wed, 21 Oct 2026 21:11:21 GMT  
		Size: 1.1 KB (1131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:stable` - unknown; unknown

```console
$ docker pull eggdrop@sha256:94f1e86f003d6d78f2c7761654d92346f39d89eab9f65b45bc50fcf934555a45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 KB (16985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3039d4a66f8606ba79aa460b04e9f50ff6c7a7744b4991f38284d126254d89ff`

```dockerfile
```

-	Layers:
	-	`sha256:e58d6e27e93fb1fa78b6510473277d123f4ae1e4c2d115d10004f2067e0d9177`  
		Last Modified: Wed, 21 Oct 2026 21:11:20 GMT  
		Size: 17.0 KB (16985 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:stable` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:dbd9f8610ed13b032353af1690cb2d4b59ee4affe8ebc33f6a8f6c8ad06003d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11788491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c06f9770378008968201db806d4c1a51223466a7ff351ab2609173fd247e80`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:01 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Wed, 21 Oct 2026 21:06:01 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Wed, 21 Oct 2026 21:06:02 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Wed, 21 Oct 2026 21:06:22 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Wed, 21 Oct 2026 21:06:22 GMT
ENV NICK=
# Wed, 21 Oct 2026 21:06:22 GMT
ENV SERVER=
# Wed, 21 Oct 2026 21:06:22 GMT
ENV LISTEN=3333
# Wed, 21 Oct 2026 21:06:22 GMT
ENV USERFILE=eggdrop.user
# Wed, 21 Oct 2026 21:06:22 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 21 Oct 2026 21:06:22 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 21 Oct 2026 21:06:22 GMT
EXPOSE map[3333/tcp:{}]
# Wed, 21 Oct 2026 21:06:22 GMT
COPY entrypoint.sh ./ # buildkit
# Wed, 21 Oct 2026 21:06:22 GMT
COPY docker.tcl ./scripts/ # buildkit
# Wed, 21 Oct 2026 21:06:22 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:22 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebd99435419cc9862a4eaade757aa7a29382bf543ebe286624ec693b56b791a`  
		Last Modified: Wed, 21 Oct 2026 21:06:28 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffb989a6439ac8292aae89bde87db35b04bb5a5f60ae709a390cfc72a4aeba7b`  
		Last Modified: Wed, 21 Oct 2026 21:06:28 GMT  
		Size: 4.8 MB (4844891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:909fc0a1e5823b0879d1ea5be14f1f6b6942a27bb7b2fcb4628dcfe3f66515c2`  
		Last Modified: Wed, 21 Oct 2026 21:06:28 GMT  
		Size: 2.8 MB (2750047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fda2d40ca92cf3c21ea3a255916456fdc202f8585b7a3d087d87a9b959136b5`  
		Last Modified: Wed, 21 Oct 2026 21:06:28 GMT  
		Size: 1.9 KB (1946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0273c2c69dc10971432592a27f6f439057f7ca09ae22fd5a1e0d7c91964407`  
		Last Modified: Wed, 21 Oct 2026 21:06:29 GMT  
		Size: 1.1 KB (1127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:stable` - unknown; unknown

```console
$ docker pull eggdrop@sha256:76aaaf261522efee44fa5e9f1162e8a2a8d1a0eade3fa9ebd82f438c87efbde7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.8 KB (755755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d858f9aa4161bb7095ee50db407df7c2cb77b34f0981ae77406c34be664b2de`

```dockerfile
```

-	Layers:
	-	`sha256:2e4897eadd75b4c761ed8a54ffb2ab53f7c5637b3fb184efd7d1f0aee6fcb786`  
		Last Modified: Wed, 21 Oct 2026 21:06:28 GMT  
		Size: 738.5 KB (738527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c266eb6530a1021b9714b251f2fab39d2499f60bc1fb38ec530b5f64768a4b19`  
		Last Modified: Wed, 21 Oct 2026 21:06:28 GMT  
		Size: 17.2 KB (17228 bytes)  
		MIME: application/vnd.in-toto+json
