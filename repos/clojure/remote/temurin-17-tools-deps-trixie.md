## `clojure:temurin-17-tools-deps-trixie`

```console
$ docker pull clojure@sha256:a5b08fa8077085a12f302c5a82efadf930f05c64283eae31892d48f45161a4d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:98cdc066acfba5c7743ead67c6ae0ce1abad9a80246456f81340f6ed4656414c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277796600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:113c4903ac01c30f9d3b7176f6dd6f1c9ffc740127f8efa6388cf5ad6e80af83`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:49:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:49:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:49:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:49:43 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:49:43 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:49:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:49:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:49:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:49:58 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:49:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e29c38e34a64413f86ace98b51f81f299d5fbbf51acb4ed6eaba028a6a1a98`  
		Last Modified: Sat, 17 Oct 2026 01:50:20 GMT  
		Size: 145.8 MB (145825469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42cf4136b3ac9dc2edbec8eb9a7532bf361894140a6ab210a70eca0fa8ae6daa`  
		Last Modified: Sat, 17 Oct 2026 01:50:19 GMT  
		Size: 82.6 MB (82576888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfd00000789235556e73f9ade28285434d8850240fa16f8cbf8409bb06776e2`  
		Last Modified: Sat, 17 Oct 2026 01:50:16 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b46be10c7f30ca42e808f5e2f7479b6fe4811128fb26e410a60e31e386a9af7`  
		Last Modified: Sat, 17 Oct 2026 01:50:15 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f99d3ee9e9f6b43c904169b4a4bea5c95557b0c82adabc0a146a9181506e8e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7494727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa8414dd7aa08e57984c634b5dd24e3dd17d2e5bf378a2c93fbaa3a9e236f18c`

```dockerfile
```

-	Layers:
	-	`sha256:614355a587f8fb84bdd55c0a6e46a92c58def0ca33ae1d27824461aa7a6d45f3`  
		Last Modified: Sat, 17 Oct 2026 01:50:16 GMT  
		Size: 7.5 MB (7478820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:216d0e8f917b9576c7d7d947ca374ff73963a31e3c3b13b25b8048ecc6ac09fa`  
		Last Modified: Sat, 17 Oct 2026 01:50:15 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:180610a9d973777f674a905dc57dcc4d9fa3972ce0f469f68801d6e3a0a7444a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.8 MB (276806452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac09181656fa266c26c7efae9532723f166ad30ee99dd70a366cd708f9e4eda0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:49:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:49:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:49:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:49:54 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:49:54 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:50:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:50:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:50:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:50:12 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:50:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f0e5ed41a86049b607854b0d71affe01b4f9b9a52cdfd6c4008cc73704564d`  
		Last Modified: Sat, 17 Oct 2026 01:50:36 GMT  
		Size: 144.6 MB (144648303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dda84c056fd23ad9b20c219c74fdfaae5b3a6b2fb28b897c08cd04896d50759d`  
		Last Modified: Sat, 17 Oct 2026 01:50:35 GMT  
		Size: 82.4 MB (82396007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a55c3c6072424d00037fbe0439cd15afbb8cd6fbd45f507b99cc18fad2638ae`  
		Last Modified: Sat, 17 Oct 2026 01:50:31 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c323bd7cdee34859ea25709562156ecc301c3cfb1840e501f413025ba2e69f5`  
		Last Modified: Sat, 17 Oct 2026 01:50:31 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fba426de02f6e8edabc1c9d931c743bebf103835952eb810d0b2d8cdb86379de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b1cb2425cdcdc15505fca237cfe0632870f8c8c43547b00e8e1697312846c9`

```dockerfile
```

-	Layers:
	-	`sha256:deddb1aee4912861bb0652abdbf94022664e717dfbc35bf7a981235469872a6d`  
		Last Modified: Sat, 17 Oct 2026 01:50:31 GMT  
		Size: 7.5 MB (7485213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2360af099a1fa2fdf2210e0645f2fc2491f77d5014393c0098081f187f13571`  
		Last Modified: Sat, 17 Oct 2026 01:50:31 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:0432280dfd9589e0df380cb0018785edfe1d64c2042133965df0d0ea6db083d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286875594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0062e62278181819f69800ffb16ae4e5143cae073a477eaa53f6e58d58062c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 05:41:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:41:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:41:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:41:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:41:32 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:52:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 05:52:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 05:52:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 05:52:16 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 05:52:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfb5c47cfb27db05d0aaed926eee151bb64866390720e23d9a7fb266bfd4452b`  
		Last Modified: Sat, 17 Oct 2026 05:46:11 GMT  
		Size: 145.7 MB (145671515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a217f1194ee02fe0eaf0ff44a40717019bb6980b7772819fdc8acb78e0b4cbeb`  
		Last Modified: Sat, 17 Oct 2026 05:53:02 GMT  
		Size: 88.0 MB (87995913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:175e6c4f21fcd7b726a5b8dfe4a8577d45294a89ad9a4c6a6b1884eaf397accd`  
		Last Modified: Sat, 17 Oct 2026 05:53:00 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33563df4f3dfdf745a4dbd17c74904ab91e217f42a302459ba02a344667a6e97`  
		Last Modified: Sat, 17 Oct 2026 05:52:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:669ecf5feb8eb1a7c80f89add500fe4185c4df18c8d49434d168851f80f2c920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b7e94fa77b2556464509024a9ad70d6823fb77f695aa520160d76b2375b372`

```dockerfile
```

-	Layers:
	-	`sha256:34658e548fd523c9ca197867f953e7b4bfba37414f0e8bcaedb81af05058722e`  
		Last Modified: Sat, 17 Oct 2026 05:53:00 GMT  
		Size: 7.5 MB (7483239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e381ccd0d9d9f2f166cf8d313d14ad964734854be362a87c0f4b1cc8b14edc77`  
		Last Modified: Sat, 17 Oct 2026 05:52:59 GMT  
		Size: 16.0 KB (15955 bytes)  
		MIME: application/vnd.in-toto+json
