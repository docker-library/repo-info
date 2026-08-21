## `clojure:temurin-21-tools-deps-1.12.5.1664-bullseye-slim`

```console
$ docker pull clojure@sha256:ca75e73d5d911e468cc91ab2776dde7a94a3bc528ecbb6370eb24d109c159e89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.5.1664-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:6a4feeae903f0a0e2766d0c34d77639a02b62eb7a4b96088d7ce3f3f7633ce7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244495641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f9e2bddb281f4ad2c1b74b7e35ab4045265f68b493347a3cd81cd3e7725ecd8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:16:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:16:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:16:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:16:42 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:16:42 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:18:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:18:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:18:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:18:38 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:18:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1357a2aa386175afd5df024fa62a99b935508c40cfaf23f46094db7247b0542`  
		Last Modified: Fri, 21 Aug 2026 19:18:11 GMT  
		Size: 158.1 MB (158120314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edceb795c7e2fd0de117ca5604a066a27a6e8567774c33413c9f1e9f326c48f8`  
		Last Modified: Fri, 21 Aug 2026 19:18:53 GMT  
		Size: 56.1 MB (56114663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f1b888297a88e4b3598cf90a43ccc157750abb54bfb49c493ece22bc967e9c5`  
		Last Modified: Fri, 21 Aug 2026 19:18:52 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2121896fd288be46b9f3112d5293916b113cc7c0299e580e3b6c4bfcc2f52d20`  
		Last Modified: Fri, 21 Aug 2026 19:18:52 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f1af288cf578d37def1c1f62751aa356c3dcb61865f42b5ab13680dfe7e4ef3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5339937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1915cf7d0663373e9d88c653b66b93c577886b88173550fd76d3d9c77212ec9e`

```dockerfile
```

-	Layers:
	-	`sha256:1c4373dccf00bf23c069a7392b386e40249e6520deba7c4e7c00fed775490216`  
		Last Modified: Fri, 21 Aug 2026 19:18:52 GMT  
		Size: 5.3 MB (5324902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2b9a19e2d97e49d655ba833f8fe228a279bc6e801be03091005d3c51346eea7`  
		Last Modified: Fri, 21 Aug 2026 19:18:52 GMT  
		Size: 15.0 KB (15035 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:989ef190cf832aac7f2670ac1ef90ce5e7547b1f7e598e9c8e0b18087d8311fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.4 MB (241433212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f18e299f6eed5ce4356340f13886ce5aa074618c21a65142cbf9f36247772fc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:07:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:07:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:07:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:07:18 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:07:18 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:07:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:07:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:07:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:07:31 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:07:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f59aec63f525cd63bcfa7eaf412c64eda91e5b37194d9b8509c10f14d58c49e`  
		Last Modified: Fri, 21 Aug 2026 19:07:57 GMT  
		Size: 156.4 MB (156401989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486d468921861ebc1edb9c12f5ca010b46c6fc83e5a2a14072b63f5b9967e378`  
		Last Modified: Fri, 21 Aug 2026 19:07:55 GMT  
		Size: 56.3 MB (56281273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1563ac03e8bbed0999af89b8e7649040ed93997a5ef30cba2670bc633fa7f384`  
		Last Modified: Fri, 21 Aug 2026 19:07:53 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817eb7daf770d8bb4f7992c60451f25ffd27bbef6e17abd3ca5079fa8b42caf3`  
		Last Modified: Fri, 21 Aug 2026 19:07:53 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e509a5df269a47db192315e8827b018dd36284c0371705706e686bf4ecad6c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5346742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e707f3651b06d6dd0f3b41fbeb5e2dbe4f1d4b9dea8bbf070b05e6329db91536`

```dockerfile
```

-	Layers:
	-	`sha256:5a4bf62a89aae21e2c216fc80203df876bccc5c8ecc7940f2442cb2889caa84e`  
		Last Modified: Fri, 21 Aug 2026 19:07:53 GMT  
		Size: 5.3 MB (5330634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:040a28c348048c4d00152285ea9cc2d2a634117168521065d71c7bbadd2bd379`  
		Last Modified: Fri, 21 Aug 2026 19:07:53 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json
