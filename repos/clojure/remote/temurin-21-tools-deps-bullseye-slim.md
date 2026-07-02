## `clojure:temurin-21-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:d682b7571c235a1efc064261e6ccf3f4d8549a7fbc18dc6f1b8f9468f3d46021
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:bd192f6827c4a31babc693ee22b707e2a08faa31b32610aa970c82f3427ddaca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244527804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2707e35354d1df2b258d20da897d9f347c4bd5776999bad1bedca99dd58584ea`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:53:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:53:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:53:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:53:37 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:53:37 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:53:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:53:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:50 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0251c4232e4025b51352f0bb7119fd866d4a6a62861f09baea6fe5af4c6eee59`  
		Last Modified: Wed, 24 Jun 2026 00:28:14 GMT  
		Size: 30.3 MB (30259447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa17e47465e905356e1965cfb0756b2fe1c1b6289b4bbee7753f445ecf104e9c`  
		Last Modified: Thu, 02 Jul 2026 05:54:15 GMT  
		Size: 158.2 MB (158166951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b7a37d7a76eae503aeae7ef4431860fad698ac42a3eb79ad3934c71fe0e3c9`  
		Last Modified: Thu, 02 Jul 2026 05:54:13 GMT  
		Size: 56.1 MB (56100364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e82962e38437a51e1d3c3c91be0373255eaabbb56d8cb0ad2f7a30d7cb21160b`  
		Last Modified: Thu, 02 Jul 2026 05:54:10 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a05836848de084a1e0d283d2c1c78942469fc5ce67b8ac31cbc8d3c6dfb4d00`  
		Last Modified: Thu, 02 Jul 2026 05:54:10 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e4a2fd77ce23279b59c4b549c8703ec817adf4a1e2433db5328b9504eedf476c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5335691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86445fdbad0c2207b2453f8d9ff95ccce3bb53c04e55e15bd16997a4b78f1618`

```dockerfile
```

-	Layers:
	-	`sha256:0431eeae43bdf12b54e074d5d96501a282ad5dc1e7b287fdd123baf6cf648c88`  
		Last Modified: Thu, 02 Jul 2026 05:54:10 GMT  
		Size: 5.3 MB (5319701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ebd7723e5590acc8f249027c043ca724ecbfba5e72373d4196704d4a9f2445e`  
		Last Modified: Thu, 02 Jul 2026 05:54:09 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e3767ee0b034e76991508891f787f54349d8e666646569e6822d2f5f30c0bce7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241476621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:772cf2aab9526cf43a66b440d9a04491ebff68f43b6d76c43505fccba0c6ec56`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:54:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:54:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:54:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:54:04 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:54:04 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:54:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:54:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:54:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:54:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:54:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:58009b48fe731a10341c4f5f98dfa280afd10fa34cc71961411d37e306120dd0`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 28.7 MB (28746926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbcf98af5275e3661fe1660a4594a4c04b83a9a88bc4a640dd168199ed7ebe12`  
		Last Modified: Thu, 02 Jul 2026 05:54:44 GMT  
		Size: 156.5 MB (156461290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba779d199dc6e21cfc5ba89d16ee438891c7a83109e53e787d6c264f12a075f`  
		Last Modified: Thu, 02 Jul 2026 05:54:40 GMT  
		Size: 56.3 MB (56267361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d970f3e4e61905d99a4d320b18fc5a5c936346ca64fd0af785e6ad9225f42fb4`  
		Last Modified: Thu, 02 Jul 2026 05:54:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f711276a3e8a599a4679cd73aa64ee933c1c7876caf8f3c5763791a66f23cd38`  
		Last Modified: Thu, 02 Jul 2026 05:54:36 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d98d093099575918306c7d6774e7a4868a96701b7d8dcb7e1718e13af7b3a4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5341541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e3b1b18718a3d972dbed217573045738879d5d1e71907d33aa886c838e284b8`

```dockerfile
```

-	Layers:
	-	`sha256:2b93dcc337cb1cb519b05a5ed553f13ba37ba2a79e760d973336f9b44c0c37b2`  
		Last Modified: Thu, 02 Jul 2026 05:54:37 GMT  
		Size: 5.3 MB (5325433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff657787f5eb2c212d334f5c7fe374e3645e2f648d5699d3edf3f60d60f7070b`  
		Last Modified: Thu, 02 Jul 2026 05:54:36 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json
