## `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:84927e7e17367b50b1b44a45b791b95a5cca10d62a6f732dc4832fceefb0acc7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:e122bb856233239d886947ad2b34543335a01b65f52f28bc5a6c93528c1a03fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272384022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044d6b555a751f7d7242b769954e12102f3ef75cb64b57a1548eb84f654b47af`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:46:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:46:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:46:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:46:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:46:44 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:46:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:46:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:46:59 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:818c2a8a3c767088566a7bfa555ff98e71e73b837fa5ac13c082275bc8767cc2`  
		Last Modified: Tue, 27 Oct 2026 00:47:21 GMT  
		Size: 145.9 MB (145864282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b135146ac1ceaba03a1c8db685e0f819c2d4cbe53fca6d2949e231348c24ba7a`  
		Last Modified: Tue, 27 Oct 2026 00:47:20 GMT  
		Size: 78.0 MB (77997009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b90d8d4426c513aafa41f8d62ce4f4267c70a6e3088f1eb54c3864b4265c74c`  
		Last Modified: Tue, 27 Oct 2026 00:47:17 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f24473becee314b30d615674f6101f5b528c4668c79b32905d229e3276ae6995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7412448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff40340be0f38e00d45436cc6120d6bd2c51a241f5f7dc22dae21e19ee21f21`

```dockerfile
```

-	Layers:
	-	`sha256:64f49d21c712edbb6cbcb4c77c2284e0e792efc3bcc595ed4ec400e0f5bfb2d0`  
		Last Modified: Tue, 27 Oct 2026 00:47:18 GMT  
		Size: 7.4 MB (7398085 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5bafce5bdd9ad9de97880da62336c3f9480994432f6f036b3e73dc5a0e50ff1`  
		Last Modified: Tue, 27 Oct 2026 00:47:17 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:51ae01baa7b70d10aa126f6827add7dea27108c08e052a45ea1aead99252745a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.0 MB (268972998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c240e59ee9d3069ab889db2a8c4221e3a2dc4de217898d4e1b703d89c6a2ead9`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:46:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:46:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:46:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:46:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:46:35 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:46:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:46:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:46:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4ab3c781bd423d5762b27a6999c616970f2481bbea253897a95dd8867c940e`  
		Last Modified: Tue, 27 Oct 2026 00:47:14 GMT  
		Size: 142.6 MB (142576571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e6b46f8bb049af4351ece7455e80e0cecbaa79dd30d836e3ba68e70904ec60`  
		Last Modified: Tue, 27 Oct 2026 00:47:13 GMT  
		Size: 78.0 MB (77992669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23fa554c0711d4ff3e364b54c16367dd2cb6d6a0c320736903d7df54e5b66493`  
		Last Modified: Tue, 27 Oct 2026 00:47:10 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f4a15547cb383d462c1b96151608c260591de7a24014fe25cd77c61958e3cfbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7418946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2985273438bf49323861cddb4ca71442d0e125fef9a48f8db44b4ed22e4d2d6c`

```dockerfile
```

-	Layers:
	-	`sha256:1a59cdae4a029893a128062f70191cc787c6011739bf11faf49ff6491efbe6ee`  
		Last Modified: Tue, 27 Oct 2026 00:47:10 GMT  
		Size: 7.4 MB (7404466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fc538e2884b0fbb20b3127d347da1d45a3d63675d894e785bb42987fb6b7e10`  
		Last Modified: Tue, 27 Oct 2026 00:47:09 GMT  
		Size: 14.5 KB (14480 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:96486b9ae1b89e3184fed603f995dec03b148c731e1775b3d2a8eed322656201
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.3 MB (269297292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:343978f43fb7f478d646ffdd9ae8b97f7093a4bce697842ab8b5c17bc92db355`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 09:58:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 09:58:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 09:58:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 09:58:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 09:58:09 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:12:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:12:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:12:19 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4acc757fca417d1cfc1b6862285d3cd733d26064b6cc3a074bc6ba8cdc16ae6`  
		Last Modified: Wed, 21 Oct 2026 10:03:59 GMT  
		Size: 133.1 MB (133095132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23864bf19a6eea5bf2dd0ba45abf5bac5efeb1be7d2f0cb5bf63a692aa35fcf`  
		Last Modified: Wed, 21 Oct 2026 10:13:14 GMT  
		Size: 83.8 MB (83836771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7f41695cd2ebbbbcca5aadacb7d25f8036211de899da8d215ca1f3b2bdc185b`  
		Last Modified: Wed, 21 Oct 2026 10:13:12 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8c6374cc31b4c10fd7f3dc2399aa0111c7051c68f3d2b7334324bb3ecf53b6ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7417870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e29d160d478acdc9c67a63bb00be93fab41f2b8d83a6a82b5418013d059adc7f`

```dockerfile
```

-	Layers:
	-	`sha256:1cbaf1d8241ab878e5a2e4dc9db84697a8adc5435357ee6ea26cd229a8341d6e`  
		Last Modified: Wed, 21 Oct 2026 10:13:12 GMT  
		Size: 7.4 MB (7403460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da4193f9b8db5c02c36823e7537e18ec6f5299f9bf8798f3ef739f531a105a78`  
		Last Modified: Wed, 21 Oct 2026 10:13:12 GMT  
		Size: 14.4 KB (14410 bytes)  
		MIME: application/vnd.in-toto+json
