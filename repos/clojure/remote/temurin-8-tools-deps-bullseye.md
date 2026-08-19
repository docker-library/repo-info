## `clojure:temurin-8-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:4094fc5f141d0845e898d17eeff8c325edd7bbeaae42c9eb56897ffd11165c54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:ee19349b37b39863faae990641f1e081a0cc3c06530f262efb5b7d0cb9893439
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175503085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e802f1a91b163669be8b4e00f09b090b75dc35ad54de3a2b87a123ffc0f9636`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:40:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:40:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:40:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:40:15 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:40:15 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:40:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:40:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:40:29 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2ed1d565e4a80c3c0548e191896e9211f121a5d03fc6515374b436313e05dd2`  
		Last Modified: Tue, 18 Aug 2026 20:40:47 GMT  
		Size: 55.2 MB (55198715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b5985bc143479c16667393026f121976b10d3d582f2c2cd7d7750920c8d761`  
		Last Modified: Tue, 18 Aug 2026 20:40:48 GMT  
		Size: 66.5 MB (66526707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c393cb794a257363ca3eb6bdd483f7386b1d10587d2512e482d54b9dbe7620d`  
		Last Modified: Tue, 18 Aug 2026 20:40:45 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:14c29dfd790a7b46063dc1b83702f492d57fedbcb02da7f9fba58b425849bceb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7545359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630df6e8a6ee8a1fe9e257f1039f1d7921ca8ea4d9b93fe3207aa171439f1733`

```dockerfile
```

-	Layers:
	-	`sha256:e38ab8390c6ae91e7e5480010825d644f2c8a0c33b4b5999a3b00b041cb587c0`  
		Last Modified: Tue, 18 Aug 2026 20:40:45 GMT  
		Size: 7.5 MB (7531012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:012aa37b87477efa46cd6fee38996d05a48286744a18751de8b12dbdd793ab8e`  
		Last Modified: Tue, 18 Aug 2026 20:40:45 GMT  
		Size: 14.3 KB (14347 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:704bec38944ee50f2625f48122bed8364404d6358cb9e95b25391eb219eb33b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.2 MB (173225029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dc13f958e6a7281d9e65aeb1ceb8b854a8d7f1b0367bd8a98832f6d19754ecb`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:40:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:40:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:40:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:40:26 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:40:26 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:40:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:40:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:40:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731ac591ecc304dc7b50579658704fa150835298692c18b45f3bdc06eda98e4f`  
		Last Modified: Tue, 18 Aug 2026 20:40:58 GMT  
		Size: 54.3 MB (54272922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711a5a4b886d3ce82dc20c1f16755c916ec3511ed173e01b6f140fd5813f4aa9`  
		Last Modified: Tue, 18 Aug 2026 20:40:58 GMT  
		Size: 66.7 MB (66690560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c493f079fb649de0b302460f64cc6dd40bac6f674dba545a0f62abba5396332d`  
		Last Modified: Tue, 18 Aug 2026 20:40:56 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:bae68fc3e8f67d12e96846909f1201d8fa06dbb79dbd7d50fa0c562c956f1bba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7551277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e5653e8c2074730845e90282749292979648c1a204c6895a47770a70220984`

```dockerfile
```

-	Layers:
	-	`sha256:78e9dae90e1597cbb01310d309130da6ea6c5395b7b72aa3abb442aeb49d8642`  
		Last Modified: Tue, 18 Aug 2026 20:40:56 GMT  
		Size: 7.5 MB (7536811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45216f6b761e277b038ccc7e35d3d4ba82ade34c147e6b0ce3517aef2ac996ef`  
		Last Modified: Tue, 18 Aug 2026 20:40:55 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json
