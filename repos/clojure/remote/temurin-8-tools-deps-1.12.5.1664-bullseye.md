## `clojure:temurin-8-tools-deps-1.12.5.1664-bullseye`

```console
$ docker pull clojure@sha256:abe143f3337fd1075471d9a1ab199cf88d8b4dc813d6b78f5eeeeaeba869f665
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.5.1664-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:a06792fdc35ef9ca2160e944cd6e13e5ea6e86c9464ddd2608caf321a68a0d35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175468736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928f6dd3057592c213f01aef2c78ec91b751103bf5bb88bb4467815d50ccaca6`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:24:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:24:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:24:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:24:47 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:24:47 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:25:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:25:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:25:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236b95339dba9970b6fb90211b0173ab61ba54bbb5ac13753ab2ea417f76ee1d`  
		Last Modified: Tue, 25 Aug 2026 01:25:17 GMT  
		Size: 55.2 MB (55164391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1c7e6edf2385a1c5dbb3716d0e527621a063693a7d2c634da3fc48b93fff91`  
		Last Modified: Tue, 25 Aug 2026 01:25:17 GMT  
		Size: 66.5 MB (66526306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6c0405113f7843eaf14c3e2fd27c3a5926efaef6511834bfc8f9f68eb0542d`  
		Last Modified: Tue, 25 Aug 2026 01:25:14 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:ae559fcaf358233f7ce18b12b84c235cb1b8514fcad495939a2aafbdfd1b0506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7545359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a72f209544ed6b5c7bfa4bb19b584dcfa50d0ce529f4c3a39ded6bce2964c8d`

```dockerfile
```

-	Layers:
	-	`sha256:17793e2ef34cc0ed53d1635c477fa082feec1fb3af03f74c818d8bce4c8bb07c`  
		Last Modified: Tue, 25 Aug 2026 01:25:15 GMT  
		Size: 7.5 MB (7531012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d38fb00573804150ce7b7d62e740bbdd798ae0867c0321f3d6e0190e58ad82b`  
		Last Modified: Tue, 25 Aug 2026 01:25:14 GMT  
		Size: 14.3 KB (14347 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1664-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a4d1ca795a4adc6f82589b3d99f3fe07ba87b4bb3b0e232342035223ca7b94f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.2 MB (173214629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ce321cfe06a7a051afa0a7cc63fc3839808e43ab77ecdc5b60545f5d180de9`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 18:59:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:59:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:59:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:59:48 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 18:59:48 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:00:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:00:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:00:03 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935b6cc69d7f79c327fbfbeb3169cc2a603a6f7ee8b1c5ff1e6542ce31d5024a`  
		Last Modified: Fri, 21 Aug 2026 19:00:24 GMT  
		Size: 54.3 MB (54262764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3788e23dc0d5628bd2d6517c498b5ae03e18b2b529b79b0e2c36d3305290c14b`  
		Last Modified: Fri, 21 Aug 2026 19:00:31 GMT  
		Size: 66.7 MB (66690318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c141c6b23c280480bf9b8a3b9a95c07027555bc1350b3c81110d195298efa6a`  
		Last Modified: Fri, 21 Aug 2026 19:00:22 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:55ea73a9c2a4a5956061a8fef3afd1744b6b932dd6fdd8cddf22cb41189c06ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7551277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c300e4545eb044b43b1194a5a2bc5c5da6d4529b6da5ecdd88c2ff5ccaad77e`

```dockerfile
```

-	Layers:
	-	`sha256:243b88a59293a3884f7f34342ff407a9243731dbc42255dae7955c5c88d77441`  
		Last Modified: Fri, 21 Aug 2026 19:00:23 GMT  
		Size: 7.5 MB (7536811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dac85f8435d7af186d4affcf4006da9a6d57aa9e90d38f4b793d420b20a346d`  
		Last Modified: Fri, 21 Aug 2026 19:00:22 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json
