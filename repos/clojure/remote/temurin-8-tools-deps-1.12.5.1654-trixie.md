## `clojure:temurin-8-tools-deps-1.12.5.1654-trixie`

```console
$ docker pull clojure@sha256:17afabdd1d8d99f757e7cfbc66e9bc99cd6063595357ec97d9405b544f225dd3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.5.1654-trixie` - linux; amd64

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

### `clojure:temurin-8-tools-deps-1.12.5.1654-trixie` - unknown; unknown

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

### `clojure:temurin-8-tools-deps-1.12.5.1654-trixie` - linux; arm64 variant v8

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

### `clojure:temurin-8-tools-deps-1.12.5.1654-trixie` - unknown; unknown

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

### `clojure:temurin-8-tools-deps-1.12.5.1654-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:9318a64b704bd17905635ad94eb58dd7122adb3a8d0944efcd146309f3a2671a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193742737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18a464035959bab3edecf00cc0b60b184b949ff93a1479a6a52337c7ba1ec00`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 02:25:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:25:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:25:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:25:08 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 02:25:14 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:25:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 02:25:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 02:25:57 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af2d7a51d99ecc177e562369fefca262190f47bb80845a20071705485a706ec`  
		Last Modified: Thu, 16 Jul 2026 02:26:39 GMT  
		Size: 52.7 MB (52669151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5da74f0bc6ccfd5ef20a670eb2c6d40ef8755ab55194f3b795a481ead57439af`  
		Last Modified: Thu, 16 Jul 2026 02:26:40 GMT  
		Size: 87.9 MB (87938929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b55ba5e1c76cdecc290141b1b27aebc3dee37f25279ed9df56ce9ca2d69c757`  
		Last Modified: Thu, 16 Jul 2026 02:26:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f98c9c71674007c68c55931644a5c57c491040981ce2fa1204a3e20cf2675424
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7608609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23003af32c7fb5555138b7c42347e6a8ea295ef875b427d31d3586bf735fd1ac`

```dockerfile
```

-	Layers:
	-	`sha256:251a5d8e17e9ad6ed261daebb71ef2ef4c75112daeb62263135baa39cebd34c9`  
		Last Modified: Thu, 16 Jul 2026 02:26:37 GMT  
		Size: 7.6 MB (7594237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d886bad4841310b785a54f81d443f8e44a707b36be8a0fdf321554f820f70ce`  
		Last Modified: Thu, 16 Jul 2026 02:26:36 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
