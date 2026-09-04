## `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:5ff12647033da4f18116e008118b958e3b89ea289e63d90fa7818b90980f38e0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:98620408c6324cbe21b427779c39b0d343a056122820e15b37c4f26b8fbc27bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.3 MB (194336427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad4deeb7f0276baa0c36baf118a5bad04148cbde28a2fe0aafdbb128e767292a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:04:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:04:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:04:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:04:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:04:03 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:04:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:04:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:04:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:04:20 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:04:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e04aae50bd396c38eebe8708ded7948484fe51337369969492cd8f358e958d`  
		Last Modified: Fri, 04 Sep 2026 00:04:42 GMT  
		Size: 92.6 MB (92615082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a94ca0cef5dc0d56cf6b1c7a08f11aa6aadb7db751f224d82ec07cc3139a6225`  
		Last Modified: Fri, 04 Sep 2026 00:04:41 GMT  
		Size: 71.9 MB (71927643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d069c4785382657456615e56159fa16165d850773a0016c5ec947b90610344`  
		Last Modified: Fri, 04 Sep 2026 00:04:38 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e87406b02b30296fb1846acab73d5895988520b0967bf7d4077db283d08a94a8`  
		Last Modified: Fri, 04 Sep 2026 00:04:38 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e2f3a83b3070b5128a8b530108d14abd74f3972c7a8540287ab8c9c2d9162eaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e782906809237fe43f5892f58af20cf514baa9006ebbcdb0945edf2e9e172e`

```dockerfile
```

-	Layers:
	-	`sha256:d4603a1aa7afaf70bf16b28ddd646945493915495cfff7c264878ffd3f11f58c`  
		Last Modified: Fri, 04 Sep 2026 00:04:39 GMT  
		Size: 5.2 MB (5225644 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c78961f6dc3c1485758e7827694e40527ff7d7d4c43fafd3ab76e64449b855bc`  
		Last Modified: Fri, 04 Sep 2026 00:04:38 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:aab4bcb87bf960e16a4420f1f1a02835cd9ae948e5adde23ae3f7990d5829184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.8 MB (193822912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b39244c4dacd9a6204c8cbe9b21e60c2e7ac8f46c94393f484ccf054a25bcb1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:08:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:08:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:08:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:08:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:08:06 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:08:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:08:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:08:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:08:24 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:08:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c2d3156a40cc578ec7d0488ad3d1b52c083de01237fcbd3c667525f7f1ec674`  
		Last Modified: Fri, 04 Sep 2026 00:08:45 GMT  
		Size: 91.5 MB (91532202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c73cbd351a0a9dd66e91ac7d2e07109a6e4493f04e50eb31a57e2ab1e62e3b`  
		Last Modified: Fri, 04 Sep 2026 00:08:45 GMT  
		Size: 72.1 MB (72130090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f55691bd2342af74b417cb8a32f66324ee4aa7b58ae046c2bffa67cd0e36ce`  
		Last Modified: Fri, 04 Sep 2026 00:08:42 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218019f99d17fa053b90052857f4fc178d0e45c0316b7ed8cb89c80abcbfca55`  
		Last Modified: Fri, 04 Sep 2026 00:08:42 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:686c1d54b0270b25eec618f1c4c62cfa98e88c29c9d0cd9d790d487312232910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39f0769a93e3cbf2c6cb881431c71115c0e3386f94b3b03c374d9621076b60c8`

```dockerfile
```

-	Layers:
	-	`sha256:04851dbcae863d6f35da471a1b1d54ae84e6a300e592a5800f49ea89c9daab47`  
		Last Modified: Fri, 04 Sep 2026 00:08:42 GMT  
		Size: 5.2 MB (5231426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd902362a5de1d0e4c8f5f6966b3ea18aeeaf2c6b49aaa2ac96dc46453443f16`  
		Last Modified: Fri, 04 Sep 2026 00:08:42 GMT  
		Size: 16.8 KB (16787 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:ffdbfd137a350527cbe77e98a8a9b848f17854c73caa8b7a9867a9b2ad84a19f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.4 MB (202447952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:576acf1e7c3a31e4cc25c17a5ebf3e68a353723865b3691851919105b25b1338`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:30:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:30:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:30:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:30:39 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:30:39 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:31:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:31:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:31:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:31:34 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:31:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8084f28e02f46493ed99594a968a5e403aed0d99dd596c6994e2e5a127d449cb`  
		Last Modified: Fri, 04 Sep 2026 00:32:39 GMT  
		Size: 91.3 MB (91255818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415951b2fe17e08d183e3c0f3de1b6ebf6c5c127666f9ea90b17b3d985945584`  
		Last Modified: Fri, 04 Sep 2026 00:32:37 GMT  
		Size: 77.6 MB (77575630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03334e80eacd235ccb795c09aa39e62a1d9ac2f8597242f91b2ef4df3e48e13`  
		Last Modified: Fri, 04 Sep 2026 00:32:07 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a18ddc509d1aafa1664c0241b14448d67030e49da4ca20ede821a98b7513c9a0`  
		Last Modified: Fri, 04 Sep 2026 00:32:07 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:de0ef4ab462fd079bb5c0b4d89bbfb4ed3cb8ba2c3b0b7b4f1becff71e50cbd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b164622a6f8c4473ef75d6ac979f76abd7702c22de49a0476ffe2a2f4653c1f9`

```dockerfile
```

-	Layers:
	-	`sha256:7eb15647acddd9f4bee1f43ff6e6099095dc31364ff33055445ee1a589426f84`  
		Last Modified: Fri, 04 Sep 2026 00:32:07 GMT  
		Size: 5.2 MB (5213339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c337adf774ec2e0ce50e4ba7178a57b133e6d4163f675210f74f84f9f6c757ef`  
		Last Modified: Fri, 04 Sep 2026 00:32:07 GMT  
		Size: 16.7 KB (16706 bytes)  
		MIME: application/vnd.in-toto+json
