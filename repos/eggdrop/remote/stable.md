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
