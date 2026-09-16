## `clojure:temurin-25-trixie-slim`

```console
$ docker pull clojure@sha256:9e6d89cc7bb8ecc63d118d56e5b7daffff46cb88f2aa5e075877a5b411992c69
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f32c4e82196b1110dde501fd78b42c7c3837e71a553e3fad573125aa189714e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196738882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8312bde48db9ace0f98885f1860b7f7bb141471810ac2c464b04b1554682c04d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:37:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:37:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:37:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:37:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:37:36 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:37:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:37:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:37:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:37:57 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:37:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:badcfcef95339e014e0849f1f89892deaa7171aad7af7bc57ecc6e0a84f9fb1b`  
		Last Modified: Wed, 16 Sep 2026 04:38:20 GMT  
		Size: 92.6 MB (92615106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e96c0b9294b9c47fd885061d8dd32feb651efb888e4f907bb4410ee58c38244`  
		Last Modified: Wed, 16 Sep 2026 04:38:20 GMT  
		Size: 74.3 MB (74330077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488ab8f35a34856731c2765006baf98872bafeca4e713abfb6e3d1947b48075c`  
		Last Modified: Wed, 16 Sep 2026 04:38:17 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f55da3c7b1c51fd202d71682cf5d98ad0a3e4c15e91aaa47bbabd96baf955918`  
		Last Modified: Wed, 16 Sep 2026 04:38:17 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7bbbcefd3cbf699e72ae4851ee59b8269fb0850f81847390a387c416e2b6dcb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7406ec1e03e7168aa1dab0d9e7cf3ac53447346c22da7efe938c4532c39a5aba`

```dockerfile
```

-	Layers:
	-	`sha256:172dbfcfb032a04321ee710eb3fc5942f20813dfababd27982b11a6636fc5983`  
		Last Modified: Wed, 16 Sep 2026 04:38:17 GMT  
		Size: 5.2 MB (5225716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:176f5ab1d03d68e5e7aa0c87e16428b4d6a12c042b54abba2e85383910c1bfa6`  
		Last Modified: Wed, 16 Sep 2026 04:38:17 GMT  
		Size: 16.6 KB (16646 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:acb41e6c8bf40c965b8093cddb0dc60b9ffc2d6947a808977263437b998aabe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.2 MB (196167931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8935bff57b5adf28989263eba69aa8701db9aa2eca68406ba94b2a1dd2f4bd46`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:38:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:38:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:38:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:38:11 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:38:11 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:38:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:38:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:38:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:38:32 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:38:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2aabd3b91882dddfbf6d2c2da7a9b516943d8ef897efc9952efef720cb99d32`  
		Last Modified: Wed, 16 Sep 2026 04:38:52 GMT  
		Size: 91.5 MB (91532227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3326a4de30ba955882d3d069ef08bf0adaee30265a3757d8f28e8b058d896460`  
		Last Modified: Wed, 16 Sep 2026 04:38:52 GMT  
		Size: 74.5 MB (74475080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1370282d9589df3535205bef684f30448b64e4cd47f1b2b3ee140c3dc82f713`  
		Last Modified: Wed, 16 Sep 2026 04:38:49 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c421f530cfc3f7d76cede65c9776da5d8ff635c6af3185b489978353afaf01f2`  
		Last Modified: Wed, 16 Sep 2026 04:38:49 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2351f02633225b27336ea45091770195194ae071d85e93ea74cb414e89acd9e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31e25a1376dc63a03d74a22255d3ba413eeaabd2e9ce931f76642d5971e2f66f`

```dockerfile
```

-	Layers:
	-	`sha256:7b09caa4b9d242108d092becd538ff661b2cadc7457f0d36f393211359ee5bfe`  
		Last Modified: Wed, 16 Sep 2026 04:38:49 GMT  
		Size: 5.2 MB (5231498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4abd7683704242e2c0eb7058c64e3c8a9408f6636af573f3cc14b89cea4fead5`  
		Last Modified: Wed, 16 Sep 2026 04:38:49 GMT  
		Size: 16.8 KB (16789 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:af73fa4ffe5296127deee6d6052180bc940c8d5c108668f2b02fb1faf9f39cf7
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

### `clojure:temurin-25-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8f32ccb7e1e56076afb37636c264ddd3b6998a390e69e074e6d80a549e4e01a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad0312d104a88feb803d0bf0850423e17ea18bee749f9d8b091f0d18ca533ab`

```dockerfile
```

-	Layers:
	-	`sha256:d5b14b1d9326359be37c1848e83e157c0bf2cc2ce692cbcd150230dd64164b99`  
		Last Modified: Wed, 16 Sep 2026 10:59:57 GMT  
		Size: 5.2 MB (5213339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e60f89922da5bf76b90653538d5871689ca5ae1908136d244fa039b3dd3beca7`  
		Last Modified: Wed, 16 Sep 2026 10:59:57 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json
