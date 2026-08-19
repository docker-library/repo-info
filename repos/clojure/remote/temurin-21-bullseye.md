## `clojure:temurin-21-bullseye`

```console
$ docker pull clojure@sha256:d5b18a0aa4a5720cba016fa3f4c250043fb5b264b7e38034cb7ad0b398ff9d5e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:3864effa33165755cfc509204b8a8a85cbfe6d9f239d66b8c487035a78a999d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278471728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a0362e3a10957e693dc9f7edc524f72464345c0e6cad38729f589aa920d0dfa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:47:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:47:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:47:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:47:20 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:47:20 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:47:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:47:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:47:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:47:32 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:47:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b8d20babcc691bc9385dd6b53785f24a044b02c0b7d46c655e1e4e79078ba7`  
		Last Modified: Tue, 18 Aug 2026 20:47:59 GMT  
		Size: 158.2 MB (158166948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a801aabf6ecd6aed0e090a95f5feb8e430be6c4f8e1a1280ccee5b703d6b0af`  
		Last Modified: Tue, 18 Aug 2026 20:47:56 GMT  
		Size: 66.5 MB (66526722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efd6bcb46da80a4d39bb1e89a8142f4bf835beea0a504d453f1740054a42b9d`  
		Last Modified: Tue, 18 Aug 2026 20:47:52 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b5ef0959d9ea668ba7703fd147de5cea32ea0ccb139d623749a2f6dcfd0363`  
		Last Modified: Tue, 18 Aug 2026 20:47:52 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:a21d77a183933b131917ac308c6a947ac150289d2dc761f4bb560782130bf455
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7428436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a7ebb1c6fb5e7c6e393c6d4cc46be8a4f6c46fe08fea3350b2726af9e3cb22`

```dockerfile
```

-	Layers:
	-	`sha256:79ece84eca11de38584386ce5de4b5330213b8bdbdfcc41d0409227a1c9260ff`  
		Last Modified: Tue, 18 Aug 2026 20:47:53 GMT  
		Size: 7.4 MB (7412504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9f9898ee4be5262185e8fec21d6560c973d181f3bae0f82306fc363625c63a7`  
		Last Modified: Tue, 18 Aug 2026 20:47:52 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8444528235357fa35e08daee90155923d8692a3cd62596c47e2332e1163c6368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275413665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:599f8e305d19c37121fc69dc9a4a36e01d9784780aaf758af4ae554c56096436`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:47:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:47:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:47:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:47:16 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:47:16 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:47:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:47:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:47:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:47:29 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:47:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d36b8524b1f306043c7cab000ca4bd2c4f70727c1c60e8cd55b9f40f2b48b2bb`  
		Last Modified: Tue, 18 Aug 2026 20:47:52 GMT  
		Size: 156.5 MB (156461305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:054e36928cef9b5b20f90d47184a6fdb959e8c4dc6d45e8d7ef85d8d08bb87b1`  
		Last Modified: Tue, 18 Aug 2026 20:47:51 GMT  
		Size: 66.7 MB (66690418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c319271f2b0f52da4c7b9a830ac3b9dae16a068e0af4434c4adb8681735522`  
		Last Modified: Tue, 18 Aug 2026 20:47:48 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860d8d9feccc6f5efd8bad678d376c78cbbe3e08bd7e53146a4a056df66e43fc`  
		Last Modified: Tue, 18 Aug 2026 20:47:48 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:d60d4c2f4b4b6e8ff4ec5a15e326717d7e0359442837983944e851f149864a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7433653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fb9616d4c692bc9f07f298d031f7d8f00a4c1531f946ffb3058b603739c61c7`

```dockerfile
```

-	Layers:
	-	`sha256:a77d1ff795d8fbdfab48173af3fc5e012104f4b7e0218e7b879c708b64dfe8ce`  
		Last Modified: Tue, 18 Aug 2026 20:47:49 GMT  
		Size: 7.4 MB (7417603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:166013ea9c60759ed86fba9457c329ac5df347b977cc03d114aa7da89df06c0b`  
		Last Modified: Tue, 18 Aug 2026 20:47:48 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json
