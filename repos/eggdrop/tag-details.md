<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:1.10`](#eggdrop110)
-	[`eggdrop:1.10.2`](#eggdrop1102)
-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:latest`](#eggdroplatest)
-	[`eggdrop:stable`](#eggdropstable)

## `eggdrop:1.10`

```console
$ docker pull eggdrop@sha256:27491f03154703ff245de5c387077eda6329aff61271d755fc4b62d92c1ca6f1
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
$ docker pull eggdrop@sha256:89f50e93e0b8751865faec217378fef34e39edfef57d89fbdb77e93f4ea7bcd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11362137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44070294318d061838e38f699162a8b570748e65fc6463d48dc17a5b95babd6e`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:37 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 17 Sep 2026 21:15:37 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 17 Sep 2026 21:15:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
ENV NICK=
# Thu, 17 Sep 2026 21:15:58 GMT
ENV SERVER=
# Thu, 17 Sep 2026 21:15:58 GMT
ENV LISTEN=3333
# Thu, 17 Sep 2026 21:15:58 GMT
ENV USERFILE=eggdrop.user
# Thu, 17 Sep 2026 21:15:58 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 17 Sep 2026 21:15:58 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 17 Sep 2026 21:15:58 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 17 Sep 2026 21:15:58 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:58 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22ee7a8755b43fff40d5a36a999d7fde75eb8a11f12eb7ccdd3156de4f22651`  
		Last Modified: Thu, 17 Sep 2026 21:16:03 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d4f9dd8f330c261d6e2254d37e15ec709d811fb0a0fc3497d13396a8af388cf`  
		Last Modified: Thu, 17 Sep 2026 21:16:04 GMT  
		Size: 4.8 MB (4770943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857be3aaf26f1e6ab29535932c6752956175a27f2a78e470a4ed80669eb97b02`  
		Last Modified: Thu, 17 Sep 2026 21:16:04 GMT  
		Size: 2.7 MB (2738628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b494546eec16277e08de62697cee7637da43936149e675f7bbb1a4b6ebe80d56`  
		Last Modified: Thu, 17 Sep 2026 21:16:03 GMT  
		Size: 1.9 KB (1945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d21b1a006db8f19fffc14b47d3cde9957a9910fdf4c264ff5372021ef41c032`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 1.1 KB (1127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10` - unknown; unknown

```console
$ docker pull eggdrop@sha256:139368d889ad6d2f846eb2591601cf89ce4beb67ad0e982f06eb90103e8c40ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **756.2 KB (756215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3efd12679b229ac5393627ece10b92b89c6af2f644b6c4ae6f588e143fdb486d`

```dockerfile
```

-	Layers:
	-	`sha256:e7179e1b1775e7c962ef3ac9578b945194669ed3220a8210a3599136e8e78d47`  
		Last Modified: Thu, 17 Sep 2026 21:16:03 GMT  
		Size: 739.1 KB (739121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85a0d9044a05329a545784f229dc3edd8539b0d5d595d45db14d6d0edd58a78a`  
		Last Modified: Thu, 17 Sep 2026 21:16:03 GMT  
		Size: 17.1 KB (17094 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:1.10` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:6a7e6d0170eea11f68d7eed571daa1edc24599b572399ae1f15aff2a92f5dc57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11039137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c26d13032d32cf6bddf240e2afeac48d6c3e8fcd070111dcd53e9cbec294de4c`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:22 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 17 Sep 2026 21:19:22 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 17 Sep 2026 21:19:23 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 17 Sep 2026 21:19:47 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 17 Sep 2026 21:19:47 GMT
ENV NICK=
# Thu, 17 Sep 2026 21:19:47 GMT
ENV SERVER=
# Thu, 17 Sep 2026 21:19:47 GMT
ENV LISTEN=3333
# Thu, 17 Sep 2026 21:19:47 GMT
ENV USERFILE=eggdrop.user
# Thu, 17 Sep 2026 21:19:47 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 17 Sep 2026 21:19:47 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 17 Sep 2026 21:19:47 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 17 Sep 2026 21:19:47 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:19:47 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 17 Sep 2026 21:19:47 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:47 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f6037266a1ded308e3b8d158a939090af51a783c31267bee4698b61d38e7bcb`  
		Last Modified: Thu, 17 Sep 2026 21:19:51 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36730a59f36c5e3c2a8362e8ae7dba5df81fef6a4531e95d97fc0c4e11573600`  
		Last Modified: Thu, 17 Sep 2026 21:19:52 GMT  
		Size: 4.7 MB (4726948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8dbe3fbc824bb91beeb02d9096f93dbbe7e98a2ed22725b26e15ae185dff9c5`  
		Last Modified: Thu, 17 Sep 2026 21:19:52 GMT  
		Size: 2.8 MB (2753199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b7f0bfd1b0dc0217c4b0c998f94248f524d18c5d12b547621fa5c6e1469e48`  
		Last Modified: Thu, 17 Sep 2026 21:19:51 GMT  
		Size: 1.9 KB (1949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076ea4ff8d0e77ff4ac263ad24556ebc720846ad5d611690b7a66cadfed7ba11`  
		Last Modified: Thu, 17 Sep 2026 21:19:52 GMT  
		Size: 1.1 KB (1129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10` - unknown; unknown

```console
$ docker pull eggdrop@sha256:68b775c5868c324df970068f875850e1067af90aea77a0b00c79e077c60c53d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 KB (16985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9463a961cf71e75447c79d188327c22dfb683a88835b700b5414ccf2a07ea35a`

```dockerfile
```

-	Layers:
	-	`sha256:9abe6cf591f0cc2618229571f3d8f6fa8e9c8d757ca8fbc846c11c6434f13cd7`  
		Last Modified: Thu, 17 Sep 2026 21:19:51 GMT  
		Size: 17.0 KB (16985 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:1.10` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:65f4331a273084cd2051eaf63473c979557b9516862c3f1a450d956dde2b0699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11786481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ecae7262987aca5ee71a47ada317d9ecded5febe616b361fba11c88470dd7ca`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:09 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 17 Sep 2026 21:15:09 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 17 Sep 2026 21:15:30 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 17 Sep 2026 21:15:30 GMT
ENV NICK=
# Thu, 17 Sep 2026 21:15:30 GMT
ENV SERVER=
# Thu, 17 Sep 2026 21:15:30 GMT
ENV LISTEN=3333
# Thu, 17 Sep 2026 21:15:30 GMT
ENV USERFILE=eggdrop.user
# Thu, 17 Sep 2026 21:15:30 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 17 Sep 2026 21:15:30 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 17 Sep 2026 21:15:30 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 17 Sep 2026 21:15:30 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:15:30 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 17 Sep 2026 21:15:30 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:30 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7e4a40e91546b60b3f3a389d3213c0a522f3832d2bf54f926f6b2abb2285c6`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7be3504bcc28ed67c9bb2fb4d80ac5797e41903632626d3bad6f4b8c5cb8c1`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 4.8 MB (4844836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be3bf5c4b2fc0c93c6de48ca7c960b7031b9831890168c33624dc0df648a2c9`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 2.8 MB (2751529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cacd16b8917870cc889e4ef5ceef0f44946f41d50f58e55003f3295919af4f3`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 1.9 KB (1945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294ceb67be201650aa2831c82266ce27090fe9b4be30ca370eefa7b778d7cd1b`  
		Last Modified: Thu, 17 Sep 2026 21:15:37 GMT  
		Size: 1.1 KB (1127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10` - unknown; unknown

```console
$ docker pull eggdrop@sha256:c3ab745bc11d0b2f5391efae49c76f30837d95129110773caa65976d4e3438b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.8 KB (755754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a25b8317039fe43174e9eefd7e4312fce4b4232a95a95476f9228e1e61f04dc`

```dockerfile
```

-	Layers:
	-	`sha256:7ef4abf76e6a8f2fc859a5ebb8a1867f0a89f3ab15e3c0c409e718f9c46cf27c`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 738.5 KB (738527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8935676e9d23566232becca2f790a69168d8481bc408b33713e7ea7d65bba019`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 17.2 KB (17227 bytes)  
		MIME: application/vnd.in-toto+json

## `eggdrop:1.10.2`

```console
$ docker pull eggdrop@sha256:27491f03154703ff245de5c387077eda6329aff61271d755fc4b62d92c1ca6f1
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
$ docker pull eggdrop@sha256:89f50e93e0b8751865faec217378fef34e39edfef57d89fbdb77e93f4ea7bcd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11362137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44070294318d061838e38f699162a8b570748e65fc6463d48dc17a5b95babd6e`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:37 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 17 Sep 2026 21:15:37 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 17 Sep 2026 21:15:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
ENV NICK=
# Thu, 17 Sep 2026 21:15:58 GMT
ENV SERVER=
# Thu, 17 Sep 2026 21:15:58 GMT
ENV LISTEN=3333
# Thu, 17 Sep 2026 21:15:58 GMT
ENV USERFILE=eggdrop.user
# Thu, 17 Sep 2026 21:15:58 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 17 Sep 2026 21:15:58 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 17 Sep 2026 21:15:58 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 17 Sep 2026 21:15:58 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:58 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22ee7a8755b43fff40d5a36a999d7fde75eb8a11f12eb7ccdd3156de4f22651`  
		Last Modified: Thu, 17 Sep 2026 21:16:03 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d4f9dd8f330c261d6e2254d37e15ec709d811fb0a0fc3497d13396a8af388cf`  
		Last Modified: Thu, 17 Sep 2026 21:16:04 GMT  
		Size: 4.8 MB (4770943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857be3aaf26f1e6ab29535932c6752956175a27f2a78e470a4ed80669eb97b02`  
		Last Modified: Thu, 17 Sep 2026 21:16:04 GMT  
		Size: 2.7 MB (2738628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b494546eec16277e08de62697cee7637da43936149e675f7bbb1a4b6ebe80d56`  
		Last Modified: Thu, 17 Sep 2026 21:16:03 GMT  
		Size: 1.9 KB (1945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d21b1a006db8f19fffc14b47d3cde9957a9910fdf4c264ff5372021ef41c032`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 1.1 KB (1127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10.2` - unknown; unknown

```console
$ docker pull eggdrop@sha256:139368d889ad6d2f846eb2591601cf89ce4beb67ad0e982f06eb90103e8c40ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **756.2 KB (756215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3efd12679b229ac5393627ece10b92b89c6af2f644b6c4ae6f588e143fdb486d`

```dockerfile
```

-	Layers:
	-	`sha256:e7179e1b1775e7c962ef3ac9578b945194669ed3220a8210a3599136e8e78d47`  
		Last Modified: Thu, 17 Sep 2026 21:16:03 GMT  
		Size: 739.1 KB (739121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85a0d9044a05329a545784f229dc3edd8539b0d5d595d45db14d6d0edd58a78a`  
		Last Modified: Thu, 17 Sep 2026 21:16:03 GMT  
		Size: 17.1 KB (17094 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:1.10.2` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:6a7e6d0170eea11f68d7eed571daa1edc24599b572399ae1f15aff2a92f5dc57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11039137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c26d13032d32cf6bddf240e2afeac48d6c3e8fcd070111dcd53e9cbec294de4c`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:22 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 17 Sep 2026 21:19:22 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 17 Sep 2026 21:19:23 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 17 Sep 2026 21:19:47 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 17 Sep 2026 21:19:47 GMT
ENV NICK=
# Thu, 17 Sep 2026 21:19:47 GMT
ENV SERVER=
# Thu, 17 Sep 2026 21:19:47 GMT
ENV LISTEN=3333
# Thu, 17 Sep 2026 21:19:47 GMT
ENV USERFILE=eggdrop.user
# Thu, 17 Sep 2026 21:19:47 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 17 Sep 2026 21:19:47 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 17 Sep 2026 21:19:47 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 17 Sep 2026 21:19:47 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:19:47 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 17 Sep 2026 21:19:47 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:47 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f6037266a1ded308e3b8d158a939090af51a783c31267bee4698b61d38e7bcb`  
		Last Modified: Thu, 17 Sep 2026 21:19:51 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36730a59f36c5e3c2a8362e8ae7dba5df81fef6a4531e95d97fc0c4e11573600`  
		Last Modified: Thu, 17 Sep 2026 21:19:52 GMT  
		Size: 4.7 MB (4726948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8dbe3fbc824bb91beeb02d9096f93dbbe7e98a2ed22725b26e15ae185dff9c5`  
		Last Modified: Thu, 17 Sep 2026 21:19:52 GMT  
		Size: 2.8 MB (2753199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b7f0bfd1b0dc0217c4b0c998f94248f524d18c5d12b547621fa5c6e1469e48`  
		Last Modified: Thu, 17 Sep 2026 21:19:51 GMT  
		Size: 1.9 KB (1949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076ea4ff8d0e77ff4ac263ad24556ebc720846ad5d611690b7a66cadfed7ba11`  
		Last Modified: Thu, 17 Sep 2026 21:19:52 GMT  
		Size: 1.1 KB (1129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10.2` - unknown; unknown

```console
$ docker pull eggdrop@sha256:68b775c5868c324df970068f875850e1067af90aea77a0b00c79e077c60c53d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 KB (16985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9463a961cf71e75447c79d188327c22dfb683a88835b700b5414ccf2a07ea35a`

```dockerfile
```

-	Layers:
	-	`sha256:9abe6cf591f0cc2618229571f3d8f6fa8e9c8d757ca8fbc846c11c6434f13cd7`  
		Last Modified: Thu, 17 Sep 2026 21:19:51 GMT  
		Size: 17.0 KB (16985 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:1.10.2` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:65f4331a273084cd2051eaf63473c979557b9516862c3f1a450d956dde2b0699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11786481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ecae7262987aca5ee71a47ada317d9ecded5febe616b361fba11c88470dd7ca`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:09 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 17 Sep 2026 21:15:09 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 17 Sep 2026 21:15:30 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 17 Sep 2026 21:15:30 GMT
ENV NICK=
# Thu, 17 Sep 2026 21:15:30 GMT
ENV SERVER=
# Thu, 17 Sep 2026 21:15:30 GMT
ENV LISTEN=3333
# Thu, 17 Sep 2026 21:15:30 GMT
ENV USERFILE=eggdrop.user
# Thu, 17 Sep 2026 21:15:30 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 17 Sep 2026 21:15:30 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 17 Sep 2026 21:15:30 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 17 Sep 2026 21:15:30 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:15:30 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 17 Sep 2026 21:15:30 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:30 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7e4a40e91546b60b3f3a389d3213c0a522f3832d2bf54f926f6b2abb2285c6`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7be3504bcc28ed67c9bb2fb4d80ac5797e41903632626d3bad6f4b8c5cb8c1`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 4.8 MB (4844836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be3bf5c4b2fc0c93c6de48ca7c960b7031b9831890168c33624dc0df648a2c9`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 2.8 MB (2751529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cacd16b8917870cc889e4ef5ceef0f44946f41d50f58e55003f3295919af4f3`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 1.9 KB (1945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294ceb67be201650aa2831c82266ce27090fe9b4be30ca370eefa7b778d7cd1b`  
		Last Modified: Thu, 17 Sep 2026 21:15:37 GMT  
		Size: 1.1 KB (1127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:1.10.2` - unknown; unknown

```console
$ docker pull eggdrop@sha256:c3ab745bc11d0b2f5391efae49c76f30837d95129110773caa65976d4e3438b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.8 KB (755754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a25b8317039fe43174e9eefd7e4312fce4b4232a95a95476f9228e1e61f04dc`

```dockerfile
```

-	Layers:
	-	`sha256:7ef4abf76e6a8f2fc859a5ebb8a1867f0a89f3ab15e3c0c409e718f9c46cf27c`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 738.5 KB (738527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8935676e9d23566232becca2f790a69168d8481bc408b33713e7ea7d65bba019`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 17.2 KB (17227 bytes)  
		MIME: application/vnd.in-toto+json

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:452246d5853acd3e2d5b818e0d29675e86ceb855bef0ba93b1f6f0197fb2faac
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
$ docker pull eggdrop@sha256:956ed966349e8b200e9771c703e5cdf75170ae7eec3a396474717e67f3c4e084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11359335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5295f6bbf3df552d144441776e994a602a05200d16c89e093ca7d0bd90ccb345`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:36 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 17 Sep 2026 21:15:36 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 17 Sep 2026 21:15:37 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 17 Sep 2026 21:15:37 GMT
ENV EGGDROP_SHA256=fdfc2d08c17f6318b351981a64b193228852bb740ad94d2b43d3cd5585067c4b
# Thu, 17 Sep 2026 21:15:37 GMT
ENV EGGDROP_COMMIT=d93dbd7444d2519b83f613fe4d21e36ae4cc5797
# Thu, 17 Sep 2026 21:15:52 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256 *develop.tar.gz" | sha256sum -c -   && tar -zxf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 17 Sep 2026 21:15:52 GMT
ENV NICK=
# Thu, 17 Sep 2026 21:15:52 GMT
ENV SERVER=
# Thu, 17 Sep 2026 21:15:52 GMT
ENV LISTEN=3333
# Thu, 17 Sep 2026 21:15:52 GMT
ENV USERFILE=eggdrop.user
# Thu, 17 Sep 2026 21:15:52 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 17 Sep 2026 21:15:52 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 17 Sep 2026 21:15:52 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 17 Sep 2026 21:15:52 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:15:52 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 17 Sep 2026 21:15:52 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:52 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceba0e970887f9423fd1e675140593cfb7b3dcc74805a6b511394a29c8aef69c`  
		Last Modified: Thu, 17 Sep 2026 21:15:57 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c294df342c4a21744dfab239e9aaffd08730711adec92087f738039dd834ac2e`  
		Last Modified: Thu, 17 Sep 2026 21:15:57 GMT  
		Size: 4.8 MB (4770946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718e2a97d6cd2f79c6decd27ad0f603db339fbc61f0bf2c0069dfe5abea4413a`  
		Last Modified: Thu, 17 Sep 2026 21:15:57 GMT  
		Size: 2.7 MB (2735795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7527c9ef69df67139df509434509b4e26974e5a0481af2a29821eb52c1475111`  
		Last Modified: Thu, 17 Sep 2026 21:15:57 GMT  
		Size: 2.0 KB (1970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c8e391aa9297da8375363c1e1d998602f886cc9f98cdeefa307b7de379ff0b7`  
		Last Modified: Thu, 17 Sep 2026 21:15:58 GMT  
		Size: 1.1 KB (1130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:develop` - unknown; unknown

```console
$ docker pull eggdrop@sha256:bb3432ec1a73143164843c1d10ec04928952e155e25ce45fa364b232f0407348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **754.0 KB (754019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b71a322e48f67479c8e6f65edd3e5859848833ce5132c79d3dea2886da44f865`

```dockerfile
```

-	Layers:
	-	`sha256:c98501d05e907244161016cd13ad9b49e949a408e79ec19a5b88156127901204`  
		Last Modified: Thu, 17 Sep 2026 21:15:57 GMT  
		Size: 738.2 KB (738227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b96227b58373c985c18d101d9f818b6216db499f202647f9303e432f138cc44b`  
		Last Modified: Thu, 17 Sep 2026 21:15:57 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:develop` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:2272c1d154fba89e62b739ebc87eafa01c874d7ec9c567ce03f5f139f1a89e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11035904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f12b42c91e44b9f94a94cb4ea62a0cd4d774bae05eb1b9ae5f752fc26096778`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:17 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 17 Sep 2026 21:19:17 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 17 Sep 2026 21:19:19 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 17 Sep 2026 21:19:19 GMT
ENV EGGDROP_SHA256=fdfc2d08c17f6318b351981a64b193228852bb740ad94d2b43d3cd5585067c4b
# Thu, 17 Sep 2026 21:19:19 GMT
ENV EGGDROP_COMMIT=d93dbd7444d2519b83f613fe4d21e36ae4cc5797
# Thu, 17 Sep 2026 21:19:39 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256 *develop.tar.gz" | sha256sum -c -   && tar -zxf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 17 Sep 2026 21:19:39 GMT
ENV NICK=
# Thu, 17 Sep 2026 21:19:39 GMT
ENV SERVER=
# Thu, 17 Sep 2026 21:19:39 GMT
ENV LISTEN=3333
# Thu, 17 Sep 2026 21:19:39 GMT
ENV USERFILE=eggdrop.user
# Thu, 17 Sep 2026 21:19:39 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 17 Sep 2026 21:19:39 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 17 Sep 2026 21:19:39 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 17 Sep 2026 21:19:39 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:19:39 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 17 Sep 2026 21:19:39 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:39 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b4f31b380ecafe7c22254e5b6933cb25347d7cfc28e0dc0c39084447e83ddf6`  
		Last Modified: Thu, 17 Sep 2026 21:19:44 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8be2c1f13845f3ca7e3534c2eb9b8c7b4f248dde6625738645f4102811fb48`  
		Last Modified: Thu, 17 Sep 2026 21:19:44 GMT  
		Size: 4.7 MB (4726979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b376409b719f6bad82a0493e3a5c3fc2e39304382b2ea517ec31301a938da2`  
		Last Modified: Thu, 17 Sep 2026 21:19:44 GMT  
		Size: 2.7 MB (2749920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24cfa8fb2bd832b48c17691e7fce0b5743320691e14acdf6539647f2ca3bcce7`  
		Last Modified: Thu, 17 Sep 2026 21:19:44 GMT  
		Size: 2.0 KB (1965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b303916c15c983cd4c4a57302282bcb62a7a991974b9cc21e02d13b3edb6adb4`  
		Last Modified: Thu, 17 Sep 2026 21:19:45 GMT  
		Size: 1.1 KB (1127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:develop` - unknown; unknown

```console
$ docker pull eggdrop@sha256:f81cc764be342b5421c8f072f875e6ec81913e065a2e1b2ce39f952d7898df2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 KB (15659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73efb3616ac1ba5207f46071a9f52a9bb4e9589b99961272eaebff3a3665e09b`

```dockerfile
```

-	Layers:
	-	`sha256:f3b4fbaeadf0bf83d7c59f9eb33d119ec56c12f0d48b5a0e05a85e4a3098ce24`  
		Last Modified: Thu, 17 Sep 2026 21:19:43 GMT  
		Size: 15.7 KB (15659 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:develop` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:8cec224cad92bbd3222e636227c0b9d8cbf589bb48b0599bb33a4a7ac235d80b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11783517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c4d095f38116aa16e03573ab298656b2df7088ff50b149388341d0b24a038c`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:14:54 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 17 Sep 2026 21:14:54 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 17 Sep 2026 21:14:55 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 17 Sep 2026 21:14:55 GMT
ENV EGGDROP_SHA256=fdfc2d08c17f6318b351981a64b193228852bb740ad94d2b43d3cd5585067c4b
# Thu, 17 Sep 2026 21:14:55 GMT
ENV EGGDROP_COMMIT=d93dbd7444d2519b83f613fe4d21e36ae4cc5797
# Thu, 17 Sep 2026 21:15:13 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256 *develop.tar.gz" | sha256sum -c -   && tar -zxf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV NICK=
# Thu, 17 Sep 2026 21:15:13 GMT
ENV SERVER=
# Thu, 17 Sep 2026 21:15:13 GMT
ENV LISTEN=3333
# Thu, 17 Sep 2026 21:15:13 GMT
ENV USERFILE=eggdrop.user
# Thu, 17 Sep 2026 21:15:13 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 17 Sep 2026 21:15:13 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 17 Sep 2026 21:15:13 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 17 Sep 2026 21:15:13 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:13 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42cd8c2792d0c566c731739e891bd2331307355d88489cca228d8b4619013cde`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b011b83763fd35568fad636b79498747c323a31e65c1efe4780067810f2c30`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 4.8 MB (4844836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb057707210dcfd484e32a672c27d7bd37f065358a4a89767c98b110da6f5c9e`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 2.7 MB (2748538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5cd095a15b0013c6aad68631b5d7d17f59e01f10c8c6c00f9b5f8641e43c476`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 2.0 KB (1968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ccf31ab369cca0f638b577e789c1a0a1fadb4a2a7901cdd07fbcebab88e46ce`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 1.1 KB (1131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:develop` - unknown; unknown

```console
$ docker pull eggdrop@sha256:96edac1af17019152afc64abadc850257a765ede4a8cffcce8643363f5c47909
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.5 KB (753487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8b017cc3e7b33845ca9c54b522d8da25c0a47234e00279ab363404cdbe8131`

```dockerfile
```

-	Layers:
	-	`sha256:4f6410b7f85d65b1254f170f53d0c2cb8e72b6463050999a2f4d55aa48c7b892`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 737.6 KB (737597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bd88825b1916fec87baefbb1f2988f46d66e7ebbde377401adb54c244b1ffdc`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 15.9 KB (15890 bytes)  
		MIME: application/vnd.in-toto+json

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:27491f03154703ff245de5c387077eda6329aff61271d755fc4b62d92c1ca6f1
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
$ docker pull eggdrop@sha256:89f50e93e0b8751865faec217378fef34e39edfef57d89fbdb77e93f4ea7bcd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11362137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44070294318d061838e38f699162a8b570748e65fc6463d48dc17a5b95babd6e`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:37 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 17 Sep 2026 21:15:37 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 17 Sep 2026 21:15:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
ENV NICK=
# Thu, 17 Sep 2026 21:15:58 GMT
ENV SERVER=
# Thu, 17 Sep 2026 21:15:58 GMT
ENV LISTEN=3333
# Thu, 17 Sep 2026 21:15:58 GMT
ENV USERFILE=eggdrop.user
# Thu, 17 Sep 2026 21:15:58 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 17 Sep 2026 21:15:58 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 17 Sep 2026 21:15:58 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 17 Sep 2026 21:15:58 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:58 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22ee7a8755b43fff40d5a36a999d7fde75eb8a11f12eb7ccdd3156de4f22651`  
		Last Modified: Thu, 17 Sep 2026 21:16:03 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d4f9dd8f330c261d6e2254d37e15ec709d811fb0a0fc3497d13396a8af388cf`  
		Last Modified: Thu, 17 Sep 2026 21:16:04 GMT  
		Size: 4.8 MB (4770943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857be3aaf26f1e6ab29535932c6752956175a27f2a78e470a4ed80669eb97b02`  
		Last Modified: Thu, 17 Sep 2026 21:16:04 GMT  
		Size: 2.7 MB (2738628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b494546eec16277e08de62697cee7637da43936149e675f7bbb1a4b6ebe80d56`  
		Last Modified: Thu, 17 Sep 2026 21:16:03 GMT  
		Size: 1.9 KB (1945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d21b1a006db8f19fffc14b47d3cde9957a9910fdf4c264ff5372021ef41c032`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 1.1 KB (1127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:latest` - unknown; unknown

```console
$ docker pull eggdrop@sha256:139368d889ad6d2f846eb2591601cf89ce4beb67ad0e982f06eb90103e8c40ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **756.2 KB (756215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3efd12679b229ac5393627ece10b92b89c6af2f644b6c4ae6f588e143fdb486d`

```dockerfile
```

-	Layers:
	-	`sha256:e7179e1b1775e7c962ef3ac9578b945194669ed3220a8210a3599136e8e78d47`  
		Last Modified: Thu, 17 Sep 2026 21:16:03 GMT  
		Size: 739.1 KB (739121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85a0d9044a05329a545784f229dc3edd8539b0d5d595d45db14d6d0edd58a78a`  
		Last Modified: Thu, 17 Sep 2026 21:16:03 GMT  
		Size: 17.1 KB (17094 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:latest` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:6a7e6d0170eea11f68d7eed571daa1edc24599b572399ae1f15aff2a92f5dc57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11039137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c26d13032d32cf6bddf240e2afeac48d6c3e8fcd070111dcd53e9cbec294de4c`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:22 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 17 Sep 2026 21:19:22 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 17 Sep 2026 21:19:23 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 17 Sep 2026 21:19:47 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 17 Sep 2026 21:19:47 GMT
ENV NICK=
# Thu, 17 Sep 2026 21:19:47 GMT
ENV SERVER=
# Thu, 17 Sep 2026 21:19:47 GMT
ENV LISTEN=3333
# Thu, 17 Sep 2026 21:19:47 GMT
ENV USERFILE=eggdrop.user
# Thu, 17 Sep 2026 21:19:47 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 17 Sep 2026 21:19:47 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 17 Sep 2026 21:19:47 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 17 Sep 2026 21:19:47 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:19:47 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 17 Sep 2026 21:19:47 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:47 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f6037266a1ded308e3b8d158a939090af51a783c31267bee4698b61d38e7bcb`  
		Last Modified: Thu, 17 Sep 2026 21:19:51 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36730a59f36c5e3c2a8362e8ae7dba5df81fef6a4531e95d97fc0c4e11573600`  
		Last Modified: Thu, 17 Sep 2026 21:19:52 GMT  
		Size: 4.7 MB (4726948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8dbe3fbc824bb91beeb02d9096f93dbbe7e98a2ed22725b26e15ae185dff9c5`  
		Last Modified: Thu, 17 Sep 2026 21:19:52 GMT  
		Size: 2.8 MB (2753199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b7f0bfd1b0dc0217c4b0c998f94248f524d18c5d12b547621fa5c6e1469e48`  
		Last Modified: Thu, 17 Sep 2026 21:19:51 GMT  
		Size: 1.9 KB (1949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076ea4ff8d0e77ff4ac263ad24556ebc720846ad5d611690b7a66cadfed7ba11`  
		Last Modified: Thu, 17 Sep 2026 21:19:52 GMT  
		Size: 1.1 KB (1129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:latest` - unknown; unknown

```console
$ docker pull eggdrop@sha256:68b775c5868c324df970068f875850e1067af90aea77a0b00c79e077c60c53d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 KB (16985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9463a961cf71e75447c79d188327c22dfb683a88835b700b5414ccf2a07ea35a`

```dockerfile
```

-	Layers:
	-	`sha256:9abe6cf591f0cc2618229571f3d8f6fa8e9c8d757ca8fbc846c11c6434f13cd7`  
		Last Modified: Thu, 17 Sep 2026 21:19:51 GMT  
		Size: 17.0 KB (16985 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:latest` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:65f4331a273084cd2051eaf63473c979557b9516862c3f1a450d956dde2b0699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11786481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ecae7262987aca5ee71a47ada317d9ecded5febe616b361fba11c88470dd7ca`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:09 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 17 Sep 2026 21:15:09 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 17 Sep 2026 21:15:30 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 17 Sep 2026 21:15:30 GMT
ENV NICK=
# Thu, 17 Sep 2026 21:15:30 GMT
ENV SERVER=
# Thu, 17 Sep 2026 21:15:30 GMT
ENV LISTEN=3333
# Thu, 17 Sep 2026 21:15:30 GMT
ENV USERFILE=eggdrop.user
# Thu, 17 Sep 2026 21:15:30 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 17 Sep 2026 21:15:30 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 17 Sep 2026 21:15:30 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 17 Sep 2026 21:15:30 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:15:30 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 17 Sep 2026 21:15:30 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:30 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7e4a40e91546b60b3f3a389d3213c0a522f3832d2bf54f926f6b2abb2285c6`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7be3504bcc28ed67c9bb2fb4d80ac5797e41903632626d3bad6f4b8c5cb8c1`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 4.8 MB (4844836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be3bf5c4b2fc0c93c6de48ca7c960b7031b9831890168c33624dc0df648a2c9`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 2.8 MB (2751529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cacd16b8917870cc889e4ef5ceef0f44946f41d50f58e55003f3295919af4f3`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 1.9 KB (1945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294ceb67be201650aa2831c82266ce27090fe9b4be30ca370eefa7b778d7cd1b`  
		Last Modified: Thu, 17 Sep 2026 21:15:37 GMT  
		Size: 1.1 KB (1127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:latest` - unknown; unknown

```console
$ docker pull eggdrop@sha256:c3ab745bc11d0b2f5391efae49c76f30837d95129110773caa65976d4e3438b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.8 KB (755754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a25b8317039fe43174e9eefd7e4312fce4b4232a95a95476f9228e1e61f04dc`

```dockerfile
```

-	Layers:
	-	`sha256:7ef4abf76e6a8f2fc859a5ebb8a1867f0a89f3ab15e3c0c409e718f9c46cf27c`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 738.5 KB (738527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8935676e9d23566232becca2f790a69168d8481bc408b33713e7ea7d65bba019`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 17.2 KB (17227 bytes)  
		MIME: application/vnd.in-toto+json

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:27491f03154703ff245de5c387077eda6329aff61271d755fc4b62d92c1ca6f1
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
$ docker pull eggdrop@sha256:89f50e93e0b8751865faec217378fef34e39edfef57d89fbdb77e93f4ea7bcd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11362137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44070294318d061838e38f699162a8b570748e65fc6463d48dc17a5b95babd6e`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:37 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 17 Sep 2026 21:15:37 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 17 Sep 2026 21:15:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
ENV NICK=
# Thu, 17 Sep 2026 21:15:58 GMT
ENV SERVER=
# Thu, 17 Sep 2026 21:15:58 GMT
ENV LISTEN=3333
# Thu, 17 Sep 2026 21:15:58 GMT
ENV USERFILE=eggdrop.user
# Thu, 17 Sep 2026 21:15:58 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 17 Sep 2026 21:15:58 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 17 Sep 2026 21:15:58 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 17 Sep 2026 21:15:58 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:58 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22ee7a8755b43fff40d5a36a999d7fde75eb8a11f12eb7ccdd3156de4f22651`  
		Last Modified: Thu, 17 Sep 2026 21:16:03 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d4f9dd8f330c261d6e2254d37e15ec709d811fb0a0fc3497d13396a8af388cf`  
		Last Modified: Thu, 17 Sep 2026 21:16:04 GMT  
		Size: 4.8 MB (4770943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857be3aaf26f1e6ab29535932c6752956175a27f2a78e470a4ed80669eb97b02`  
		Last Modified: Thu, 17 Sep 2026 21:16:04 GMT  
		Size: 2.7 MB (2738628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b494546eec16277e08de62697cee7637da43936149e675f7bbb1a4b6ebe80d56`  
		Last Modified: Thu, 17 Sep 2026 21:16:03 GMT  
		Size: 1.9 KB (1945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d21b1a006db8f19fffc14b47d3cde9957a9910fdf4c264ff5372021ef41c032`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 1.1 KB (1127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:stable` - unknown; unknown

```console
$ docker pull eggdrop@sha256:139368d889ad6d2f846eb2591601cf89ce4beb67ad0e982f06eb90103e8c40ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **756.2 KB (756215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3efd12679b229ac5393627ece10b92b89c6af2f644b6c4ae6f588e143fdb486d`

```dockerfile
```

-	Layers:
	-	`sha256:e7179e1b1775e7c962ef3ac9578b945194669ed3220a8210a3599136e8e78d47`  
		Last Modified: Thu, 17 Sep 2026 21:16:03 GMT  
		Size: 739.1 KB (739121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85a0d9044a05329a545784f229dc3edd8539b0d5d595d45db14d6d0edd58a78a`  
		Last Modified: Thu, 17 Sep 2026 21:16:03 GMT  
		Size: 17.1 KB (17094 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:stable` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:6a7e6d0170eea11f68d7eed571daa1edc24599b572399ae1f15aff2a92f5dc57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11039137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c26d13032d32cf6bddf240e2afeac48d6c3e8fcd070111dcd53e9cbec294de4c`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:22 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 17 Sep 2026 21:19:22 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 17 Sep 2026 21:19:23 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 17 Sep 2026 21:19:47 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 17 Sep 2026 21:19:47 GMT
ENV NICK=
# Thu, 17 Sep 2026 21:19:47 GMT
ENV SERVER=
# Thu, 17 Sep 2026 21:19:47 GMT
ENV LISTEN=3333
# Thu, 17 Sep 2026 21:19:47 GMT
ENV USERFILE=eggdrop.user
# Thu, 17 Sep 2026 21:19:47 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 17 Sep 2026 21:19:47 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 17 Sep 2026 21:19:47 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 17 Sep 2026 21:19:47 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:19:47 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 17 Sep 2026 21:19:47 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:47 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f6037266a1ded308e3b8d158a939090af51a783c31267bee4698b61d38e7bcb`  
		Last Modified: Thu, 17 Sep 2026 21:19:51 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36730a59f36c5e3c2a8362e8ae7dba5df81fef6a4531e95d97fc0c4e11573600`  
		Last Modified: Thu, 17 Sep 2026 21:19:52 GMT  
		Size: 4.7 MB (4726948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8dbe3fbc824bb91beeb02d9096f93dbbe7e98a2ed22725b26e15ae185dff9c5`  
		Last Modified: Thu, 17 Sep 2026 21:19:52 GMT  
		Size: 2.8 MB (2753199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b7f0bfd1b0dc0217c4b0c998f94248f524d18c5d12b547621fa5c6e1469e48`  
		Last Modified: Thu, 17 Sep 2026 21:19:51 GMT  
		Size: 1.9 KB (1949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076ea4ff8d0e77ff4ac263ad24556ebc720846ad5d611690b7a66cadfed7ba11`  
		Last Modified: Thu, 17 Sep 2026 21:19:52 GMT  
		Size: 1.1 KB (1129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:stable` - unknown; unknown

```console
$ docker pull eggdrop@sha256:68b775c5868c324df970068f875850e1067af90aea77a0b00c79e077c60c53d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 KB (16985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9463a961cf71e75447c79d188327c22dfb683a88835b700b5414ccf2a07ea35a`

```dockerfile
```

-	Layers:
	-	`sha256:9abe6cf591f0cc2618229571f3d8f6fa8e9c8d757ca8fbc846c11c6434f13cd7`  
		Last Modified: Thu, 17 Sep 2026 21:19:51 GMT  
		Size: 17.0 KB (16985 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:stable` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:65f4331a273084cd2051eaf63473c979557b9516862c3f1a450d956dde2b0699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11786481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ecae7262987aca5ee71a47ada317d9ecded5febe616b361fba11c88470dd7ca`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:09 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Thu, 17 Sep 2026 21:15:09 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Thu, 17 Sep 2026 21:15:30 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.10/eggdrop-1.10.2.tar.gz.asc   && gpg --batch --keyserver keyserver.ubuntu.com --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.10.2.tar.gz.asc eggdrop-1.10.2.tar.gz   && gpgconf --kill all   && rm eggdrop-1.10.2.tar.gz.asc   && tar -zxvf eggdrop-1.10.2.tar.gz   && rm eggdrop-1.10.2.tar.gz   && ( cd eggdrop-1.10.2     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.10.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Thu, 17 Sep 2026 21:15:30 GMT
ENV NICK=
# Thu, 17 Sep 2026 21:15:30 GMT
ENV SERVER=
# Thu, 17 Sep 2026 21:15:30 GMT
ENV LISTEN=3333
# Thu, 17 Sep 2026 21:15:30 GMT
ENV USERFILE=eggdrop.user
# Thu, 17 Sep 2026 21:15:30 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 17 Sep 2026 21:15:30 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 17 Sep 2026 21:15:30 GMT
EXPOSE map[3333/tcp:{}]
# Thu, 17 Sep 2026 21:15:30 GMT
COPY entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:15:30 GMT
COPY docker.tcl ./scripts/ # buildkit
# Thu, 17 Sep 2026 21:15:30 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:30 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7e4a40e91546b60b3f3a389d3213c0a522f3832d2bf54f926f6b2abb2285c6`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7be3504bcc28ed67c9bb2fb4d80ac5797e41903632626d3bad6f4b8c5cb8c1`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 4.8 MB (4844836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be3bf5c4b2fc0c93c6de48ca7c960b7031b9831890168c33624dc0df648a2c9`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 2.8 MB (2751529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cacd16b8917870cc889e4ef5ceef0f44946f41d50f58e55003f3295919af4f3`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 1.9 KB (1945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294ceb67be201650aa2831c82266ce27090fe9b4be30ca370eefa7b778d7cd1b`  
		Last Modified: Thu, 17 Sep 2026 21:15:37 GMT  
		Size: 1.1 KB (1127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:stable` - unknown; unknown

```console
$ docker pull eggdrop@sha256:c3ab745bc11d0b2f5391efae49c76f30837d95129110773caa65976d4e3438b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.8 KB (755754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a25b8317039fe43174e9eefd7e4312fce4b4232a95a95476f9228e1e61f04dc`

```dockerfile
```

-	Layers:
	-	`sha256:7ef4abf76e6a8f2fc859a5ebb8a1867f0a89f3ab15e3c0c409e718f9c46cf27c`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 738.5 KB (738527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8935676e9d23566232becca2f790a69168d8481bc408b33713e7ea7d65bba019`  
		Last Modified: Thu, 17 Sep 2026 21:15:36 GMT  
		Size: 17.2 KB (17227 bytes)  
		MIME: application/vnd.in-toto+json
