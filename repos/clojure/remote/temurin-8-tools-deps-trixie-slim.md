## `clojure:temurin-8-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:f6d22e87054605285d434e3cfb6df6ed9b2640446d5ed515768fbdbd616984ac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:01698553fa50a8be06f3c9be0a29e9ad8b4709b67e3bd22f4d690e1d5ec89e29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.9 MB (153910996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaf9ca6f3b81c289635f313131d47d4b51bc7fa80880dc4decf9b5cf74bdf8a1`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:09:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:09:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:09:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:09:41 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:09:41 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:09:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:09:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:09:58 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14ac7ab987fc1253b42bb650b1cab332515f941b758ef1799017c1b460b3556`  
		Last Modified: Fri, 21 Aug 2026 19:10:16 GMT  
		Size: 55.2 MB (55164403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39167e4b4b2aba4b9dfd91569dc8bb4455111886ee9744da99ae43be73510362`  
		Last Modified: Fri, 21 Aug 2026 19:10:17 GMT  
		Size: 69.0 MB (68965183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2304503b8a379a7019015c175144fd79b21111332642f6b3ae119ec5374029ea`  
		Last Modified: Fri, 21 Aug 2026 19:10:14 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a2dd36ce25d53280d5e16d116095a8ba2d93367a4cb4a9f8a4998cfb7430b786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5392106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51cc05af46a885a5b7a46ec91edf57032d67a35fbd1e0d4755d14c46435ad2a4`

```dockerfile
```

-	Layers:
	-	`sha256:b9faa8bb39af0fdb8511f4431f7c2a4a2f520a864fba6166dd3b1b702a4c42cb`  
		Last Modified: Fri, 21 Aug 2026 19:10:14 GMT  
		Size: 5.4 MB (5377724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:424c9f3dc5beb28fcb9acef75ec31c579d5f9aa9871923d3b72f24b1eca4ddc5`  
		Last Modified: Fri, 21 Aug 2026 19:10:14 GMT  
		Size: 14.4 KB (14382 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:36fd0ca7fa34497fe93bf1547ba50a7a534fb372ee3ee02cc17888ac71ed66f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153192735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3840b3979f32cc186525b8c95535b716217e42554ed0ee3efb0ca0a2bf018ee`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:00:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:00:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:00:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:00:40 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:00:40 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:00:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:00:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:00:57 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:832264a1a333dbf19c91a8bc8144613ded2b50eb29242e257bd37034b2b22ea6`  
		Last Modified: Fri, 21 Aug 2026 19:01:17 GMT  
		Size: 54.3 MB (54262741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd6cceda25558a8721e311806959534e2b95dd3ff4b52b2c44db81d66f9e4a2`  
		Last Modified: Fri, 21 Aug 2026 19:01:18 GMT  
		Size: 68.8 MB (68785742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9054926f891af94441887930df81388b483932e22fb0882d82f8cb5e2dc3d1b0`  
		Last Modified: Fri, 21 Aug 2026 19:01:14 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6f10cf149ebb57a4f2397192c7d53312c9fd0dec27574b65ccff9abaf4123e3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5398685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0ba9f5570f7bb9d8005a79886dbf0dfb4929c75d8a098859f2d07b292ce723c`

```dockerfile
```

-	Layers:
	-	`sha256:5ee4d713b8c75cefd5327c2a3c7af755cf6739d390541eb35cf8e01368685f44`  
		Last Modified: Fri, 21 Aug 2026 19:01:15 GMT  
		Size: 5.4 MB (5384185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5103103891ff663d09118c5843823063d18a040205d0ee6879b9d4499b8748b`  
		Last Modified: Fri, 21 Aug 2026 19:01:14 GMT  
		Size: 14.5 KB (14500 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d90248cab158d9734e824710d0009d2ea244f557cebbef112e0feb1c27d4ac9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160647537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:635e9c5befc0363d80b37a41eebb0c95656d451d5eef6a3f3e5149eac5c94618`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 00:51:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:51:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:51:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:51:02 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 00:51:02 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 00:51:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 00:51:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 00:51:44 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c312b13cb2d2dca39eb2eeba99f437ee512555460eb8d2bcad158da1218469`  
		Last Modified: Thu, 20 Aug 2026 00:52:20 GMT  
		Size: 52.7 MB (52669121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98da1bcc1c10419680da668114cc7a21748fb6a8e291b920730d2f925a84f7b3`  
		Last Modified: Thu, 20 Aug 2026 00:52:21 GMT  
		Size: 74.4 MB (74376427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e446f6747bcffbde23d78f3ac5ffbc67e923e4034454b915f3329276b668f26`  
		Last Modified: Thu, 20 Aug 2026 00:52:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5fc82a13013e5db39f1a6e1b36c4f6a3a329273aa5fb167b965d4f8d5940c6c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5397120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590b1a1f9f2de2fc2b3872186e16eacba9924fd5479820025a572901ba8d0852`

```dockerfile
```

-	Layers:
	-	`sha256:fb0efb521c7089ed51f80231ce01feabe20270b71d010b117e6565fad77d5ccd`  
		Last Modified: Thu, 20 Aug 2026 00:52:18 GMT  
		Size: 5.4 MB (5382690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbd0ca669cea277106d6799980f5c6b2d478c09ceb4fc6c6ba3185dba0968b7f`  
		Last Modified: Thu, 20 Aug 2026 00:52:18 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
