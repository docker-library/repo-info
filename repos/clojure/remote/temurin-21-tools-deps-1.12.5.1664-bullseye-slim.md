## `clojure:temurin-21-tools-deps-1.12.5.1664-bullseye-slim`

```console
$ docker pull clojure@sha256:24d0035ea4098731e13b33c035544b0d7c6c0fcffff7e248322132d91667af0c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.5.1664-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:30e2e1722c5f88894b300406929d0b3bed3ee528d10307b643e8dfc74a39f9c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244495720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc06a45e5d1ff0f56e88eab28ebf00e27b43374bca9c4f2edef0a26ae857f87`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:30:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:30:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:30:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:30:09 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:30:09 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:30:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:30:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:30:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:30:22 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:30:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbc087596108058f50ec1df9b8bec2fd401a9029a5ce010ca52cbf1e8508bf6d`  
		Last Modified: Tue, 25 Aug 2026 01:30:45 GMT  
		Size: 158.1 MB (158120300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b07beceb30bd147636825a22d39a4a30dcf2a5cff66f37ff3ce9ee2d198fc26`  
		Last Modified: Tue, 25 Aug 2026 01:30:43 GMT  
		Size: 56.1 MB (56114655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19762508b32123aeed0b5364d473f3812022d640a94a426fae241a29c0b5b8d`  
		Last Modified: Tue, 25 Aug 2026 01:30:41 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dca199ca3f8ae0576698cc8786d02a9789a9c3525cfa988f1cf4d65105d40c9`  
		Last Modified: Tue, 25 Aug 2026 01:30:41 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:00a1924e0a8868c4e1d5678dcfd759ea2ebacfa17d599614b1f78e48f5cb7923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5340892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ea8445fffff2aac60b268a7b32284be9ae1165245f036eaa1a5d67f190f2332`

```dockerfile
```

-	Layers:
	-	`sha256:7b8edf5aac99eef51ec6cb0d5d8cde8d82311ffeefab50895b67f566ef13e0f5`  
		Last Modified: Tue, 25 Aug 2026 01:30:41 GMT  
		Size: 5.3 MB (5324902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ce4b85a0ef30945ac935fb5e58e5c4222b267eafbc788c84b89b4702cf2bd53`  
		Last Modified: Tue, 25 Aug 2026 01:30:41 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4acdd64f8adbdfca25761f01760a7161e464b0fbd3cc95f1778430251b9a341e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.4 MB (241433311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:572882e4b31bc9a18a7c4ccd8e6286a5474bc4dd4f5413ab22131d2c89ae6249`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:34:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:34:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:34:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:34:29 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:34:29 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:34:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:34:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:34:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:34:42 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:34:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:104799d4ff5b18bad31a13cbbc383730eebef29a1cac161b7905792a8dbe5bd3`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 28.7 MB (28749031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc7002c3a568c1109afa57e1b067e5d1319e626e4b0b347fec509579ada11fc`  
		Last Modified: Tue, 25 Aug 2026 01:35:05 GMT  
		Size: 156.4 MB (156401921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34e6a05f3e966cefdd03afadf4bef52534aa7d4689345326adac18b9b2f8b9c`  
		Last Modified: Tue, 25 Aug 2026 01:35:04 GMT  
		Size: 56.3 MB (56281322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eabb1540aff0e3560ba86766ceaf691222d92e26d6b55323d2305389ec43b2e3`  
		Last Modified: Tue, 25 Aug 2026 01:35:01 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7c95105f92287ab8e3dbfc529218f4d0eb18d5fc3e29c81bc8b7c382cf3aaf`  
		Last Modified: Tue, 25 Aug 2026 01:35:01 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:88b5dceb78fd814cc5c81e8417a0cfbce1e5c287dae2556eabd9f5897e945ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5346742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb4f15472f55d98dfd805213582e4edbe08b33ed6cb09fd4073fcc3af7839d9`

```dockerfile
```

-	Layers:
	-	`sha256:f99c5d2b3462735a8a159f10b422662bf53fedba0f24846dd2ecbb1e412b3a68`  
		Last Modified: Tue, 25 Aug 2026 01:35:01 GMT  
		Size: 5.3 MB (5330634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35d5a4cc49aa2032555f395ee077f9af825d8f21420215cb1a50a0e8c715f988`  
		Last Modified: Tue, 25 Aug 2026 01:35:01 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json
