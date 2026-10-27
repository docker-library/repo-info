## `clojure:temurin-27-tools-deps-trixie`

```console
$ docker pull clojure@sha256:75106cdfa2b2febe686e846c1815e0ec49ec33234a18e9b041e108527a7d383f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:cae93868e00aba5ace9783e0712e2d6300212a76365d6158806548ee976cf8b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225586950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:314af9105f7573cfbb0d5fe61b17544ccf3298f93a1e6bd7f9ae8635d47ed5cd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:54:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:54:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:54:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:54:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:54:40 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:54:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:54:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:54:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:54:57 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:54:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa0eb1947e1a5761c2fba7d672dc8891b33ea0113bbedbb57f6402fa53d1e7c`  
		Last Modified: Tue, 27 Oct 2026 00:55:19 GMT  
		Size: 93.6 MB (93622514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d9a02b6136baa892f5f67b049986c42e8be3a9d950160e3cba0729503aaf9c7`  
		Last Modified: Tue, 27 Oct 2026 00:55:19 GMT  
		Size: 82.6 MB (82569770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3990e68b496937b56245212b09932bd09a85912c1ff1642d2d9313718199f429`  
		Last Modified: Tue, 27 Oct 2026 00:55:16 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236258137422433e0cea68ac3bbeb02ac17a654c41b46e2fbe878bfbdbd8b446`  
		Last Modified: Tue, 27 Oct 2026 00:55:16 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7c2de27b46655407f0c0ca039dada14ea34c8b01364a795406822b0f47cd330d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7bbb2cf067d27d93143badd993cbd672dd39ad5dfbd1ccbf2a11bb6393f208`

```dockerfile
```

-	Layers:
	-	`sha256:ae49c635b69bb591924e450ccc0470c6294ab110eb33a0a83d1c9f311375808c`  
		Last Modified: Tue, 27 Oct 2026 00:55:16 GMT  
		Size: 7.4 MB (7440391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e622c814d22e1e063e27edb3538dfd3b9e5b7d6eb4282b9fc3670b55458377d`  
		Last Modified: Tue, 27 Oct 2026 00:55:16 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e5a5b2ed4a7646c5d530f791f6ba9148663d68d3b59e932474f5103ca56ac8d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.8 MB (224788358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be12388233d41d64aab016dc75842e807caf38e650452ae98fe3a988d9e31e89`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:54:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:54:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:54:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:54:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:54:45 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:55:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:55:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:55:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:55:04 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:55:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61571cc895f125b9140e2c75f5bb050250bcb3876a4aa9e666a23b404f10a4d8`  
		Last Modified: Tue, 27 Oct 2026 00:55:27 GMT  
		Size: 92.6 MB (92633146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f542d30346a674a175a3313e3673e39fef18a00ad6c1b7d819a5c9dbcbbe84f`  
		Last Modified: Tue, 27 Oct 2026 00:55:26 GMT  
		Size: 82.4 MB (82392567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354eac84d346b107748b66b875b3a6228b2452175df4b35b5a860e780e12ca41`  
		Last Modified: Tue, 27 Oct 2026 00:55:24 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b99f9d7b2481b08b1ad688043b337062af9d09660e3688c90a41156e6a5241cd`  
		Last Modified: Tue, 27 Oct 2026 00:55:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6353129c039cedfc0ec5939672399ddeab83e845064a8b9492d57ce99ef0bda4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7462799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59a9cf63fcc33a53b35dd5b8b1aaa811d76548659fc0fe3def5bb15cd484b2c6`

```dockerfile
```

-	Layers:
	-	`sha256:77e433f2e0664374fa720705f6fb2da314c5e7af1090479784c194250d915d51`  
		Last Modified: Tue, 27 Oct 2026 00:55:24 GMT  
		Size: 7.4 MB (7446781 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5a816dddca3d2b9d08224a87088fc97b719e05b4520e3c22d3de066ca7d75fc`  
		Last Modified: Tue, 27 Oct 2026 00:55:23 GMT  
		Size: 16.0 KB (16018 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:360f1543f69ffba2d013e55d1d30f13a48aa2ef1c00eec045bde1628288c3cab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233461947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a650655533e448919f8df19dff4f67668eaa7cc3d75cc5c072561653ae2152f0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 11:19:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:19:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:19:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:19:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 11:19:58 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:27:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:27:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:27:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:27:27 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:27:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111adca601e00eaa2050db51193e634c29c863bee4fabc375f63ab9c17d0bc97`  
		Last Modified: Wed, 21 Oct 2026 11:24:32 GMT  
		Size: 92.3 MB (92255808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a9bf4b6c25bedb6eb476358d6af69f90506d0d53806b43770b07f3a2f97d3c`  
		Last Modified: Wed, 21 Oct 2026 11:28:10 GMT  
		Size: 88.0 MB (87997517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a59f8304a7e73c1c79470b2192d4527b56c4f9a4a8e25715db395559457971`  
		Last Modified: Wed, 21 Oct 2026 11:28:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd98c6536d602a2c53545bf07d0b8e835765b5da7d375376502e7cbd104c260`  
		Last Modified: Wed, 21 Oct 2026 11:28:07 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:748995685fc73208f30b971aba19c16632219981289a26971f3563ecde83e10d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7445471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1e3ad578530ec66b20183cfb96a9533cac678fe68688bd12de422b12ded55c`

```dockerfile
```

-	Layers:
	-	`sha256:223d66c7804b43abc779a287fe41022a31e14d98f42b9e497ba6a1e58381c0d9`  
		Last Modified: Wed, 21 Oct 2026 11:28:08 GMT  
		Size: 7.4 MB (7429522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7fe8a0fa42390f6bd89221f3d6e24be3fca81d2b746f40f5dd6fb46ccfdf8d9`  
		Last Modified: Wed, 21 Oct 2026 11:28:07 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json
