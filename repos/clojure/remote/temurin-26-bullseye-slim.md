## `clojure:temurin-26-bullseye-slim`

```console
$ docker pull clojure@sha256:e280f2a8774779e27df3f231b0c43d6a8e3df2b5cb8ff25b861dbd326d0fdc35
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a1d5693257e42f4b84d7b576f4373967b2cd09cdb51bb96ea5563202f38bd8e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180890970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:170129cc3d22b888fa4bbea467db31a54fdfd329202b4e47ac7357db49caf0de`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:56:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:56:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:56:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:56:32 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:56:32 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:56:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:56:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:56:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:56:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:56:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154cdfbd2a50865623864ffe5669fff9d239ca5f9c75bb1c02a80b36bf411f27`  
		Last Modified: Tue, 04 Aug 2026 02:57:09 GMT  
		Size: 94.5 MB (94524345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff4e9ce712388877703e1fcc1c635142a6c8ec8f47d22c084595dbc144d96e82`  
		Last Modified: Tue, 04 Aug 2026 02:57:08 GMT  
		Size: 56.1 MB (56105828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1ea2fd6f2855fd19e1606536928f11fe19f24de374c640b65e4b55680b24496`  
		Last Modified: Tue, 04 Aug 2026 02:57:05 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:757a89d7b41b84f585c105d979586c77052229f2156bb5d4da8edfc4e27c3c0b`  
		Last Modified: Tue, 04 Aug 2026 02:57:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:285634bea584e4217966473518dcabaeb4702dd3a1e2139a9594b05902dbd4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5298723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877f560b8b32e4f9b81628473c91b7f22b6755dcde66b575fa1ba1da7e9f0d49`

```dockerfile
```

-	Layers:
	-	`sha256:1309d1b982127ee4b8c897181353188189ec85fef75b3a55668d142c54faf707`  
		Last Modified: Tue, 04 Aug 2026 02:57:06 GMT  
		Size: 5.3 MB (5282740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:092059884a3acae4b6c81b0b05edd992b226b3e41dc89a0716cd70bdc76f04b3`  
		Last Modified: Tue, 04 Aug 2026 02:57:05 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f4d320fbc193ddb1bd8787334f193eeaf22e19fd5e3b69db5864820fa9d82d27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.5 MB (178530453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ef3c423ecda7a89275814ec02a5799b93dcdce55029c75be4301e769cb156fb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:56:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:56:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:56:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:56:50 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:56:50 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:57:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:57:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:57:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:57:04 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:57:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21138630eac94875133b492f247bd87c1b4f45d9beab35daafbf8c6c6f5ec9da`  
		Last Modified: Tue, 04 Aug 2026 02:57:25 GMT  
		Size: 93.5 MB (93504370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e5346fca2c26209ceb7e46aa079e6078c4dfdeecef0a7ebcd0819395cd19d8`  
		Last Modified: Tue, 04 Aug 2026 02:57:24 GMT  
		Size: 56.3 MB (56276057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfb167de0e2c64e609922c69c4ba6bef7f729c16c04564d5b02a2a1ecda31d0d`  
		Last Modified: Tue, 04 Aug 2026 02:57:21 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb2fc05a397222a8695cb56a26ea65ba0e20345d630e64875e5e06bd9f13445`  
		Last Modified: Tue, 04 Aug 2026 02:57:22 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f026d23a6f6ce642abe09d01e2a4065c493e2097dcd9550841ef87436bf06e0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5304570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59328e889150858c4e152431b198de05f8174de6cd14137c7250d6abe67a7603`

```dockerfile
```

-	Layers:
	-	`sha256:8c881d69da41e0fd5a45bec2171a83f8d12ec0a9825cfc3464b02c3f3332e235`  
		Last Modified: Tue, 04 Aug 2026 02:57:22 GMT  
		Size: 5.3 MB (5288469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9b178fbcafdfaac290c03a97bdbefa623215578862cbac6e2283a18e681e8b6`  
		Last Modified: Tue, 04 Aug 2026 02:57:22 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json
