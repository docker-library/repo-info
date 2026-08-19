## `clojure:temurin-25-bullseye`

```console
$ docker pull clojure@sha256:5ea5bf070a0d5d9ae6efad99ed5d384d5993a9bf7bf1600cec93a2b58e967a77
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:a1e2de7f875a5aae215cdffcd134c440749ef987f72298bca7679ea9fedb0b83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.9 MB (212879303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c610a3c74ac5885db62400970a00b640e1842180258a782ca52405bf73cee566`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:49:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:49:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:49:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:49:02 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:49:02 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:49:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:49:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:49:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:49:16 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:49:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83dcbab2e2b64146caa381fac10b66c211e1977364cea6c10e6e28be6dc6d549`  
		Last Modified: Tue, 18 Aug 2026 20:49:39 GMT  
		Size: 92.6 MB (92574599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5fe6a8c8fe8eec972ad301c9a522fdd32c023353f588b835262d5de6cf8c4f0`  
		Last Modified: Tue, 18 Aug 2026 20:49:38 GMT  
		Size: 66.5 MB (66526644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1bf58ff415e9674584c70454d4364f27746b1ecf6525f50a9c0debf2d27d1c`  
		Last Modified: Tue, 18 Aug 2026 20:49:35 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7102a1b30baf846ec9e805efa8547fc52e164a1d4d25264af956fd60f747a7bc`  
		Last Modified: Tue, 18 Aug 2026 20:49:35 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:d1d0872051268ac8b45e2d070085691e1d431b9ce52872298a1a6cc7a4a3f27f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7395323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:220ed684b8e6a322bdb6a0a8783c73797a84b6a8e919ba0b72888bdef360bb8e`

```dockerfile
```

-	Layers:
	-	`sha256:ebb474dea4610a9314feda5763b426e26369c78cd9cfeb0955ad76d8b0e7a17b`  
		Last Modified: Tue, 18 Aug 2026 20:49:36 GMT  
		Size: 7.4 MB (7378722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b12761f118eb419fa47e87b5df6395301dcb1b5fb7bbf429e53f959542dd45b`  
		Last Modified: Tue, 18 Aug 2026 20:49:36 GMT  
		Size: 16.6 KB (16601 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:494d49b39f73c7e775295154ab08ddd1a1d7c9632e369441087fe0fd113d3934
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.5 MB (210494720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb126d519cd8d1aff8a29991e16bf4b5fe3e1ffba8549c28caee8a9f9ea48202`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:48:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:48:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:48:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:48:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:48:30 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:48:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:48:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:48:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:48:44 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:48:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:139e90c65bc44a7655d2c16af145a77cdca4560f3f629ceb61257fb4f5618caa`  
		Last Modified: Tue, 18 Aug 2026 20:49:06 GMT  
		Size: 91.5 MB (91542296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74433d4455e034adb8dff9cfa639dcce924bec89ad36dfeb703edcf1e53e3b8c`  
		Last Modified: Tue, 18 Aug 2026 20:49:06 GMT  
		Size: 66.7 MB (66690482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a912856dde9ad865a8a9f88cd01a61a3d9e86d3e5c450c2ef63b812dfcda9be4`  
		Last Modified: Tue, 18 Aug 2026 20:49:02 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:103f4b506170f745134c98427a0de49c6f71198459b42b0feb10c15a92ec25e9`  
		Last Modified: Tue, 18 Aug 2026 20:49:02 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:5607d070342d1018f28359aa64f5fadc074b158c544423eeeba3cb9c161c896e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9b5204ac352bac0c08d76b7a0f3ee0f2c02f0f5c8fae92c2bf206a93e634a8`

```dockerfile
```

-	Layers:
	-	`sha256:1227d08634bd8114b6b43a621e7d88dc06cdb54c7e2ff8e66a8ba29fa61a4139`  
		Last Modified: Tue, 18 Aug 2026 20:49:03 GMT  
		Size: 7.4 MB (7383842 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64a01cbd50094e440eefc95450e014fe6752c1ce5a2803474fb95c800d784492`  
		Last Modified: Tue, 18 Aug 2026 20:49:02 GMT  
		Size: 16.7 KB (16743 bytes)  
		MIME: application/vnd.in-toto+json
