## `clojure:temurin-26-bullseye-slim`

```console
$ docker pull clojure@sha256:24f6d821054d6fe9ac84b054474afc53d14b79136ede5524b43779ccc16b34d1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ea1d88f5cf48492dcdc2ad3976583c787c2f7f48ac57ea2c3d722b3c49d004aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180885143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ebe56a444f7906f84fc66649bd830b9f9b13b97bbdef5a087e2d24fa71003c3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:57:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:57:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:57:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:57:42 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:57:42 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:57:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:57:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:54 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0251c4232e4025b51352f0bb7119fd866d4a6a62861f09baea6fe5af4c6eee59`  
		Last Modified: Wed, 24 Jun 2026 00:28:14 GMT  
		Size: 30.3 MB (30259447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7448a09651ae8c98b9419a1b11552f7cfea0c0ba9b87ca6f2791b2490bcb63`  
		Last Modified: Thu, 02 Jul 2026 05:58:14 GMT  
		Size: 94.5 MB (94524336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37ca3406008141736e48ad9fb5bb23f510080b1bed8f3a1b4f360e7b32eb86a`  
		Last Modified: Thu, 02 Jul 2026 05:58:14 GMT  
		Size: 56.1 MB (56100316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e116a0fd7d7b1ddb556317e9ca8be08f5411faa9d5286fbd69ddd2069de1797b`  
		Last Modified: Thu, 02 Jul 2026 05:58:11 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51bb13c8adfbdbcc5b493531592fdc81b2dba8f8f6121279d482c973ab132d1c`  
		Last Modified: Thu, 02 Jul 2026 05:58:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:25213e9a507b8057bf3a7499cfba99b6ab5cdb12eafec3b7f699070571eddaac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5298722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ade06005354d5f53c881c02105fddbc36e8497dfad35240b88e9178298711bcf`

```dockerfile
```

-	Layers:
	-	`sha256:ff0405475dcf0559317c4ad7118c12e108fe097914a696a7de57b2927cb67c23`  
		Last Modified: Thu, 02 Jul 2026 05:58:11 GMT  
		Size: 5.3 MB (5282740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35d98d0f95adbf0ccbf72aba2b7541128af9f0a76f9430f3b0be954a82554707`  
		Last Modified: Thu, 02 Jul 2026 05:58:11 GMT  
		Size: 16.0 KB (15982 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cbdc6ca42e321ef53ee1b83eb79fc981d4b0c7553a8c9c4f3abc62eba3f3fd9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.5 MB (178519239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:788fbc6856c77b590e39b8ef03fb6f9865833e636f87c6ca87f722bed6059e50`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:57:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:57:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:57:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:57:47 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:57:47 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:58:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:58:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:58:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:58:00 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:58:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:58009b48fe731a10341c4f5f98dfa280afd10fa34cc71961411d37e306120dd0`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 28.7 MB (28746926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d095974ef4f44bc06e56d42c3b3b1bfa8dc4e46af0f11d8d98a9d6cafaf589`  
		Last Modified: Thu, 02 Jul 2026 05:58:21 GMT  
		Size: 93.5 MB (93504350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8af467336a0799392ef31334270ffb98e0155d3fccb226abf15b75f3700fdd4`  
		Last Modified: Thu, 02 Jul 2026 05:58:20 GMT  
		Size: 56.3 MB (56266923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a14558a7789217f82d12a37dcc6a5d6930de01b82ea17371f5a912ee61a0860`  
		Last Modified: Thu, 02 Jul 2026 05:58:17 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153ff52f09e99f9602e3b0635a7158432a7987a66813060c399d2e61e26b2429`  
		Last Modified: Thu, 02 Jul 2026 05:58:18 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ce1c51339100d9d5c4032913bfa28af515dd27862b47a487e8cec4c69436bcc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5304570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19fc0391fd5244333faed7dd752262b6d4da9070bdc06160966b88d698ba3670`

```dockerfile
```

-	Layers:
	-	`sha256:8f122eac41c2fcba24e3ae25dc386f98480e7cc3616e8e0f23e8d97abda82b3f`  
		Last Modified: Thu, 02 Jul 2026 05:58:18 GMT  
		Size: 5.3 MB (5288469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54205e12fcedfb7c082149c6317e527405ae0b2d020e145f85e96e9d29f67e43`  
		Last Modified: Thu, 02 Jul 2026 05:58:18 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json
