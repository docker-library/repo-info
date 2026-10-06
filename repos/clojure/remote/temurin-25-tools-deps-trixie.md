## `clojure:temurin-25-tools-deps-trixie`

```console
$ docker pull clojure@sha256:55dd0a7fa23bf71931e74ea01a5428d9d3406674fb7ad7170c29d537dba157b6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:7af00243607b80d097cd283c1bc74c4d19f3fa7fbc4db5e59ab21ce0a3de5f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224579821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27d8ac85cc3a3101fdf7b2efe19b80fb89ec23c8afe7ac2b336754a0e94f3c9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:13:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:13:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:13:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:13:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:13:55 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:14:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:14:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:14:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:14:13 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:14:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c247920b6be04cb5bfcd35b7c7e49e22a11eb5238ac3f7aed89433d485d434`  
		Last Modified: Tue, 06 Oct 2026 02:14:35 GMT  
		Size: 92.6 MB (92618074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11d16d25499f79bb8e999a64a57dfe5f6f9331c9bcce7d446d658e57e912b28`  
		Last Modified: Tue, 06 Oct 2026 02:14:35 GMT  
		Size: 82.6 MB (82567505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:079391bd3cda8e2bd16a348b9386ac5361766f3b0099915b354ee92e683f426a`  
		Last Modified: Tue, 06 Oct 2026 02:14:32 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba98b47d759f459690e2bb1af779447a62b04214cbd2395f618f6c7159af770`  
		Last Modified: Tue, 06 Oct 2026 02:14:32 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:31ab58dea4194147ac0299f7ab3c84493ba055841ca47479dfd336cbed85800f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7463453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24041fffb396a34a3c354f9a4bbf21c9305ecf0a33fc8d114dec0d16a3f6389`

```dockerfile
```

-	Layers:
	-	`sha256:182f8933257058615df3b363d7ee5f7ce1973355179b76a6ac84959ae69cab8d`  
		Last Modified: Tue, 06 Oct 2026 02:14:32 GMT  
		Size: 7.4 MB (7446884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:785a70180f7e98ae03b8445c8044c4552ad123b146c9a5bf9266212e62a48f16`  
		Last Modified: Tue, 06 Oct 2026 02:14:32 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7b1be7ac3bbe88502f7aac5cf86ee80a2d47231f1bf7aefe208b0c4d6db69c9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223681885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8652e8be3c1474baf461ebcfa471e114d07860f2354fd14db4cad2ef7474c18`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:19:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:19:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:19:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:19:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:19:51 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:20:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:20:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:20:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:20:08 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:20:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93051b2f7dad4c3fbc1e62b1585ce869b0a886a7525b09738ef832bde3e058c`  
		Last Modified: Tue, 06 Oct 2026 02:20:26 GMT  
		Size: 91.5 MB (91528844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa636d1cc4b2c4efcfcdaf91ff54494322e13826c81aefa3e4daa5954020605c`  
		Last Modified: Tue, 06 Oct 2026 02:20:30 GMT  
		Size: 82.4 MB (82390895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eff069a80e4a56ab6e937b9c3bd4ac3b5ad06504d1377a8aaea3aec5831a678`  
		Last Modified: Tue, 06 Oct 2026 02:20:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:712f813802ce5234cc5f900b29d9ac52ab1de73fdc90315c151a86c75ef320e2`  
		Last Modified: Tue, 06 Oct 2026 02:20:27 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:300656335852fd00c25fc79b3cb562ce645f604bfe84b852e3952c4ef0249ab3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7470009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd198398fa99a8af63329cf3f33728b82b9a949d8f0a3707ee6faffc7fa71d69`

```dockerfile
```

-	Layers:
	-	`sha256:ceb921b23b4a4616a0027623207ad81e8b464ff26a3eba7e0df28a732467e344`  
		Last Modified: Tue, 06 Oct 2026 02:20:27 GMT  
		Size: 7.5 MB (7453298 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9df6aad3d0bd8aceeb0e723685f2810de7e6a44c6c97fcb61494448f1cab1541`  
		Last Modified: Tue, 06 Oct 2026 02:20:27 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:91a9806c0ac192242c5abd39310a7b44bf02c12b40d96f0e90099e7eebcce761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232453815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5100d076e1f699c08039a7951fd7df24b864f55afcdac3ea31b0d8415a753a02`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:34:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:34:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:34:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:34:41 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 10:34:42 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:43:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 10:43:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 10:43:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:43:42 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:43:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8fb7d66b8e5b0e5addef4c5314a040dc33a4b1394fde24c55b987c93d89f72`  
		Last Modified: Tue, 06 Oct 2026 10:39:08 GMT  
		Size: 91.3 MB (91256255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8711df5a24787116dd96ca1ef32cae5f0d445c36b598e51c53e560f67b2c9a96`  
		Last Modified: Tue, 06 Oct 2026 10:44:30 GMT  
		Size: 88.0 MB (87989392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a4f5c5a864e86371db33f05c780eb70c7b34fe84ce75b5af1e2cafeadff1d38`  
		Last Modified: Tue, 06 Oct 2026 10:44:27 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d8796d63915ba864d6876de2b29dab4f48b39ff0a0f6ded3fed26e9a1d598f2`  
		Last Modified: Tue, 06 Oct 2026 10:44:27 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1b3f4894b6aeb77ac312730991a0ce203a3594319872a79fb182389c0852019b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7451256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c860739c176daa0ddaa5b58758ed1268283d47627b29498f03817c748922c4c5`

```dockerfile
```

-	Layers:
	-	`sha256:8dc017f86ac45aca2ef393aa2f07b078210be29f253f4e595e322149fd474347`  
		Last Modified: Tue, 06 Oct 2026 10:44:28 GMT  
		Size: 7.4 MB (7434627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31c0599cffe5dbce88751ab6e2c96e8db66a4ac5712055618326a59c501ad9f1`  
		Last Modified: Tue, 06 Oct 2026 10:44:27 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json
