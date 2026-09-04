## `clojure:temurin-17-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:b928ca6d8ba4978147c97adfcf3bb07437d1f0c202fe958d2b1148b2813c2750
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:bd76bdc9caa7df9038e67888a566e570948f768357ed62ff9161fc93a8afffce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.5 MB (247544206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b879e1b8379f2db6f848b63e80d1ccb260083e876f0d231504d537a0607ab48`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:02:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:02:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:02:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:02:29 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:02:29 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:02:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:02:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:02:44 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:02:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07dceeca9f8825e3eaed867e5eca15782dc8598374ebb6dd592771c39ac7ff46`  
		Last Modified: Fri, 04 Sep 2026 00:03:05 GMT  
		Size: 145.8 MB (145822638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2ebc1f78d2cd3c9d24c1cba32eb714444da7f6703c1b0d575e1ab1cf7d8914`  
		Last Modified: Fri, 04 Sep 2026 00:03:04 GMT  
		Size: 71.9 MB (71927871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f8b8a309937e13fcfb3c3902c87e4989756e087062ffbe38dd1d0ee9c4a3c11`  
		Last Modified: Fri, 04 Sep 2026 00:03:00 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9060113a9bda5bf0b7173628b468f10a7c11696bcb090ae81e76e018a59e5ce`  
		Last Modified: Fri, 04 Sep 2026 00:03:00 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:dc342bf220ce3aa269a24094bc3c6ddd11ff69dd4760b2fadb0824c4c97c89f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5273526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9fbee3e460c20cb1a1f22fac4129565f696eeb5c607c443c21879b5ca9a5ed7`

```dockerfile
```

-	Layers:
	-	`sha256:96649679eae5a68c688e69169d7e4d326b6c010a463b56efa7303489175ad31e`  
		Last Modified: Fri, 04 Sep 2026 00:03:00 GMT  
		Size: 5.3 MB (5257560 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d33d01f68e49b69d3616e53f6eea65d10d5c52605172feb8631e378163520936`  
		Last Modified: Fri, 04 Sep 2026 00:03:00 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c3376aad1d8a5b336d4e407ddc4e6b024195f89204d15744d3b96ec88d356402
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246937982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f538e92c456a5eb7ab640724f20246ad7faa3d5e98147deca7a8a8b2c824420`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:07:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:07:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:07:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:07:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:07:07 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:07:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:07:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:07:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:07:24 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:07:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052501aca6105e5dd1e3d097ff8993454ba121168cad5c1600e939a228bfd59e`  
		Last Modified: Fri, 04 Sep 2026 00:07:47 GMT  
		Size: 144.6 MB (144647520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16f76e767ccdfd96e461a9c37c47c6b6b1412ff2e4731095e6a39ca2b12f594`  
		Last Modified: Fri, 04 Sep 2026 00:07:46 GMT  
		Size: 72.1 MB (72129836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf44c93bf2b07b5d58a6ebf4f7506ad82334c047b107f100acf65255073f2ddc`  
		Last Modified: Fri, 04 Sep 2026 00:07:43 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a552a9ace1081724e9e29469aea00773acbf79bff10cbb93eb9cb2eb0c539b`  
		Last Modified: Fri, 04 Sep 2026 00:07:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2f42df9c483c0f76845c8580d171eff193c7f60618b1f3dbc2d82aae0302d978
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f940bfa40970ec6cd41045e0c4d66090b779af0d673e19aa6f98e51b72c255`

```dockerfile
```

-	Layers:
	-	`sha256:deb2afebef93f093641448ca4dda642c608b33f63974ea6c9d84ca51e96b9772`  
		Last Modified: Fri, 04 Sep 2026 00:07:43 GMT  
		Size: 5.3 MB (5263321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aaba1c8a7ea280c67ad18dd778ccf870d3ce32790aed12a81274005454855a32`  
		Last Modified: Fri, 04 Sep 2026 00:07:42 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f3091d1d89f80e0b31677a7456b161fe0d044579fec8c4fd0bb6bf1ada78036c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256866561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:706691f8b3b22412488ae92830f5176eef09eadb2f3c36954d241e6980edafd7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:18:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:18:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:18:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:18:41 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:18:41 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:19:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:19:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:19:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:19:29 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:19:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c587e8c05e5833b4d45b74199cf9a651eab2e3f101ec5eaf37d8920fd8e3657`  
		Last Modified: Fri, 04 Sep 2026 00:20:11 GMT  
		Size: 145.7 MB (145674311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167b1e7f75540ebfc4a281c7ce7c97ce88297ec22ff5f3ecb6fbe80ebfd57bed`  
		Last Modified: Fri, 04 Sep 2026 00:20:10 GMT  
		Size: 77.6 MB (77575750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b95ad7c98c3c991990ce4be882bbb8ee11670817ad7c782f7fcd81ea111da83`  
		Last Modified: Fri, 04 Sep 2026 00:20:06 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9387992b763d2b01b0c6fdd30547085f855acd6dc772b9d716e012eeba3d9c7c`  
		Last Modified: Fri, 04 Sep 2026 00:20:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a649df973d9e4b8bd654c39d5b041b514b2d4cffa9a4590919517b37fd43ee47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5277945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05560f2d4843f1932c5343d683eb5aef41716a71e3378d33de8eb823461cda0a`

```dockerfile
```

-	Layers:
	-	`sha256:2dd95cb38dd86c5812eefb47aaa00401bd177eff4c2cbb47c0a60994da569d15`  
		Last Modified: Fri, 04 Sep 2026 00:20:07 GMT  
		Size: 5.3 MB (5261931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2f6d504cf70d3890c53ce60f4c2b4e9c27f91fe79b29b434bdebd32a790cd52`  
		Last Modified: Fri, 04 Sep 2026 00:20:06 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
