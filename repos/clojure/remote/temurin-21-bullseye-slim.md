## `clojure:temurin-21-bullseye-slim`

```console
$ docker pull clojure@sha256:a84d22a6dc8267f5c7fb414af887591eace4821811ccfc506f5722e2b6ee52a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-bullseye-slim` - linux; amd64

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

### `clojure:temurin-21-bullseye-slim` - unknown; unknown

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

### `clojure:temurin-21-bullseye-slim` - linux; arm64 variant v8

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

### `clojure:temurin-21-bullseye-slim` - unknown; unknown

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
