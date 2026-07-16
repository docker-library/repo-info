## `clojure:temurin-8-tools-deps-trixie`

```console
$ docker pull clojure@sha256:6e0fc330099dc79bfc5cb392c10e7df754705d1c30ccb2df0d8886aa78835d19
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:faf2730e13446f640355236ee4e0d2fba0b342e4451adf099aa8d0a59bc7002a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187045646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eec3a8f79179d5075f64b9ac35968c9db19ece57702e0991c6d3fcac1837373`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:27:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:27:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:27:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:27:43 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:27:43 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:28:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:28:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:28:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d0396ee1b04613b4bcab04eedc015c012d3763cb45c4711cb947d75fa0fdee`  
		Last Modified: Thu, 16 Jul 2026 01:28:20 GMT  
		Size: 55.2 MB (55198721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:840bfb2aaaaf7daeb7991252ae0d5ce85193a279d1aff5a9c305383ce9ae2530`  
		Last Modified: Thu, 16 Jul 2026 01:28:21 GMT  
		Size: 82.5 MB (82533709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1f54116a9925761d1f6dfc19251ad130f7edce3771ca9ecd8e07c70ae08e87`  
		Last Modified: Thu, 16 Jul 2026 01:28:17 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f3f2e4fb3ad6ef6b8cc2efbf73ae585e43981e50967b786c49de34163585e046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7603545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c635ec341681722419cf79518878ba855cba752949da17c66c25cd04605bfe1`

```dockerfile
```

-	Layers:
	-	`sha256:a2a319c92dc7b768067d003d49c1e42e3ae5109f5ce230c61c5ff71328eaf305`  
		Last Modified: Thu, 16 Jul 2026 01:28:18 GMT  
		Size: 7.6 MB (7589221 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d4bec9e142aeb5479e6ed94f1f25c37b494afff0b6d8375fff419491a708b94`  
		Last Modified: Thu, 16 Jul 2026 01:28:18 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2bcbc5a7dbaacc6ad36490719dd47b6e2754fe2a35da29318690637eadecf254
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186291894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9f8185fbe689b8b247db01009481415d488de7ee424e974e3d9faef3196621e`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:19:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:19:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:19:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:19:51 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:19:51 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:20:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:20:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:20:08 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3504351949e4fae0840875fd758a6eb8d0d3a547aedb0c0f882b2d985dab1cca`  
		Last Modified: Thu, 16 Jul 2026 01:20:28 GMT  
		Size: 54.3 MB (54272926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fb6041cba2652868298072706c0741965370099f60afdb17531a26407c7f9c`  
		Last Modified: Thu, 16 Jul 2026 01:20:29 GMT  
		Size: 82.3 MB (82344139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8324e60ae7aaea1065bc9fe5ab106afee83ff7fa46d19efe71b8e0b3e12108a`  
		Last Modified: Thu, 16 Jul 2026 01:20:25 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2771b4b6d2530439f0e794b44581893c79288abfbdb4fe80198e21d9d9ad7f3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7610756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c28f2f220f4b6a6b5201a4f7515f5c8e1f35d86599b67fdb1ce68944f5ec2dc`

```dockerfile
```

-	Layers:
	-	`sha256:3ca7d5bd85798523cff3dc55ffa0f49f64eb9dbb37a1e6dca904d01682416908`  
		Last Modified: Thu, 16 Jul 2026 01:20:26 GMT  
		Size: 7.6 MB (7596314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34c934688f5a35ea49a041a69bc3730311c45a7205451467f3905e93c1b50e65`  
		Last Modified: Thu, 16 Jul 2026 01:20:25 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:c594c2716aa43827a3642ece2ec7388a2559375253fad2e4852bbc8a6517ccd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193743153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a09138dd7f16ee1e50cf93eb68c3d81df49482c6542f114bd619e6dca8c28aa6`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 08:08:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:08:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:08:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:08:45 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:08:46 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:09:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 08:09:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 08:09:48 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98de14463b033902c972737f0843fe5b7ada892cac80e596b3b57ba96cd62348`  
		Last Modified: Tue, 14 Jul 2026 08:10:27 GMT  
		Size: 52.7 MB (52669153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:830cc77ae4ca5ecd716a926d0475f7f1d7db80a9ca64a3bfbc9bb85f2fa2d00f`  
		Last Modified: Tue, 14 Jul 2026 08:10:28 GMT  
		Size: 87.9 MB (87939344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a85c88e4053cba24e57b72b6808312cd2eb1ee9bcbc8cae48687223f9d2a37f`  
		Last Modified: Tue, 14 Jul 2026 08:10:25 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:dc0681e1b104fec7d346092f401857ae0233bad71ee1d7f48ff43018d6040be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7608608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f046e62e78a187757c58a381440cff6a98c07dfad4103cfe6e359da5a5646e2e`

```dockerfile
```

-	Layers:
	-	`sha256:44ae6f14e06d8e7ade7c8ceb4f6df417dc961ddfde1385aa0557a700401680ff`  
		Last Modified: Tue, 14 Jul 2026 08:10:26 GMT  
		Size: 7.6 MB (7594237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:347a4577e8f112e05edd552ae8400e618e69e1fb0759169635266e09eb4b483a`  
		Last Modified: Tue, 14 Jul 2026 08:10:25 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json
