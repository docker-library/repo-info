## `clojure:temurin-26-bullseye-slim`

```console
$ docker pull clojure@sha256:bae599ec0d5ddd592f8180c625121474ccb289db52d948c0896c86b9a8ef8df2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:171b22ab8f409278844eed74ad5eb8db391022af3b4f81e9f6317b4e7e9ce2f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180938990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d652fd57400324de5f6324d2c3dac632aeebd9268bca5d30f5a3e206e1bae186`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:33:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:33:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:33:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:33:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:33:24 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:33:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:33:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:33:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:33:37 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:33:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:237f59037d3c6c8dec15445acd8b9b90807cf631bf4d23eac527bfa4cdeef5a8`  
		Last Modified: Tue, 25 Aug 2026 01:33:59 GMT  
		Size: 94.6 MB (94563753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e696bfe754dbcfe12fac0298051c93998a9d8fdf94e33ffb95c93d9c531c8cbe`  
		Last Modified: Tue, 25 Aug 2026 01:33:57 GMT  
		Size: 56.1 MB (56114467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d71c974e5d974e010d0d5b007c39d832f8ae6343af1587b1e1f55644f34197a`  
		Last Modified: Tue, 25 Aug 2026 01:33:55 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:891da2ab14ebf697a1332eb5ac1cda0b13608c89bd6525f2dd76d5a63c722b29`  
		Last Modified: Tue, 25 Aug 2026 01:33:55 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:aaf5e46c08396c3a298aebb09cf067af1c64a509b76fc2ed8761aac40b099089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5303928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07748edb3ab6b4107dcfb54876aa46ceabc0180514cf9c98d9b9cbb5d513c6d7`

```dockerfile
```

-	Layers:
	-	`sha256:d958b52c74de6f74261141d5d65a32d2f7d63cc01543687c7ef6cce87c91f0b7`  
		Last Modified: Tue, 25 Aug 2026 01:33:55 GMT  
		Size: 5.3 MB (5287945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bbe7828b114535e641dc1b704c015e5f11ca2ed8a1464315082166dc28947d7`  
		Last Modified: Tue, 25 Aug 2026 01:33:55 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:46e2e7445faf1dd8747cbb845d732122e3d8e724ec09699a0d5ee2cbf0673af0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178572979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7bba157c641177d03ffef864e5f178060b6c965da14a86955803894d7af1bd0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:37:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:37:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:37:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:37:38 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:37:38 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:37:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:37:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:37:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:37:51 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:37:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:104799d4ff5b18bad31a13cbbc383730eebef29a1cac161b7905792a8dbe5bd3`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 28.7 MB (28749031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a38425ac1a3c3f32aa5afbe7304999e3fdf19421a74ec4c602c47d5d1b1cdbdc`  
		Last Modified: Tue, 25 Aug 2026 01:38:12 GMT  
		Size: 93.5 MB (93541552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d3e3ffba0a884f4208832358135aad11e8a382410e1d20e644f3d942eda317`  
		Last Modified: Tue, 25 Aug 2026 01:38:11 GMT  
		Size: 56.3 MB (56281353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cdaaf1c1ac41992ebf8ada8a67f46b4567c8010ccb46300c4adb65cf6a0bb9`  
		Last Modified: Tue, 25 Aug 2026 01:38:09 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0a62056675c63be8a02379f88d1554f97df0a5e97a7c6aa9d081d735ce7b63`  
		Last Modified: Tue, 25 Aug 2026 01:38:09 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:54e501e3826aa813104eedf9c88d2645e2064352655d8d1dd88e9493924e5233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5309774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e323ecc863c5f75560a15e725c6f2ac09efa207491a8ba7950351dd32777e898`

```dockerfile
```

-	Layers:
	-	`sha256:85c8c93e52b457299f370841ffd724dadc4427a19f7ca9bb86188c54c01bd0f0`  
		Last Modified: Tue, 25 Aug 2026 01:38:09 GMT  
		Size: 5.3 MB (5293674 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:552c61263e444830ac582106eaf6ab95bb8d72a50031bb2ab16ebda777ec212e`  
		Last Modified: Tue, 25 Aug 2026 01:38:08 GMT  
		Size: 16.1 KB (16100 bytes)  
		MIME: application/vnd.in-toto+json
