## `clojure:temurin-11-tools-deps-trixie`

```console
$ docker pull clojure@sha256:63d45f5ab955e0144620b8d27dea1441ae1576b541d4a7595ad7c3dc2f21ea44
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:6cf01e6d3ee17ed4875bfe87e7e939c5bd835712c3765fe816042d4e839ee16e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277904537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231efdd65597f6665990b250105e68357d75b6739ce6fecb6def34875c0d1981`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:37:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:37:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:37:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:37:19 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:37:19 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:37:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:37:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:37:35 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7a30bad674ad0dd3f9e2be365f37fb3c18a707c9234a797e078d16fd953ba7`  
		Last Modified: Tue, 10 Nov 2026 00:37:57 GMT  
		Size: 145.9 MB (145921726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c95c8b19f20f2e0477a7b54617621d4cada5c9e6f33c0cdc9b5b698c737ec83`  
		Last Modified: Tue, 10 Nov 2026 00:37:58 GMT  
		Size: 82.6 MB (82569656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfa7e93ca8c8234949b2ec583b722c45704beb8e46938dcd9d474a796330d87`  
		Last Modified: Tue, 10 Nov 2026 00:37:55 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:88a901a3f0fe4082c1236e0167f09e17e939feb58d1720779a9e2f80e1efc4b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7510616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa36758f035109a674ea0c0779e4c914f3ee9d8d830dfcb8e8c6dad6f4e51a65`

```dockerfile
```

-	Layers:
	-	`sha256:b0b1186de8ad824c1129d8f8b435a5de7d3683e2f8fda6ed8acb0a985a7e9721`  
		Last Modified: Tue, 10 Nov 2026 00:37:55 GMT  
		Size: 7.5 MB (7496277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79bf66594acebef22217a19bf0ade660dc78e9987bbc6d95fe435ecffc8a240c`  
		Last Modified: Tue, 10 Nov 2026 00:37:54 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f05f8808d8d8833611e283c7214720fe5e61b22ab69072bf6db4849de6b905fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274793215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:428b140def115c3af8a70a54d8ea6b8560dad1c6a3c9038ba213e50b07f807fe`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:36:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:36:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:36:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:36:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:36:31 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:36:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:36:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:36:48 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e65759fa0305bf7898b15cf784cbfe99c0f92ae77ee0eb58716d715d08984cc`  
		Last Modified: Tue, 10 Nov 2026 00:37:11 GMT  
		Size: 142.6 MB (142620967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3e9ef72f498b5993c825b01a8a26ace152c3a1b6941642c97106e5de86e91a5`  
		Last Modified: Tue, 10 Nov 2026 00:37:11 GMT  
		Size: 82.4 MB (82392998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c0e48c878944a36490079c07d06fbf53bedd74190e3ad38619dcbf982a91bc`  
		Last Modified: Tue, 10 Nov 2026 00:37:07 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c2f03e15fbe46f6621ef368769f73cf876ebc51f0c43084d42332db776bc7519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7517745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c62347a8cfe7a913c84e8b4c1a66f851b843a3eed7d52ecd3c7947ae5cf1506`

```dockerfile
```

-	Layers:
	-	`sha256:da9f9ae4edc663c7b4f8e89e81383a740ecaae5d56209331fa6e16adf210e230`  
		Last Modified: Tue, 10 Nov 2026 00:37:08 GMT  
		Size: 7.5 MB (7503288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:246acf7ee4f538d55f06eeb71cedc740429811ffeabc1d1a571c314a413f9658`  
		Last Modified: Tue, 10 Nov 2026 00:37:08 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:07bc482d0211215af94d86484fd89e9326d65328df08d9851d5560294cca92ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273495807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fb99844f15c90e198acd5efc4b5a3bd4d8eafb10a1abdaefbe44e2ac57e72ed`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 02:11:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 02:11:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 02:11:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 02:11:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 02:11:38 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 02:23:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 02:23:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:23:15 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e735e848f47e2379d271031644498682189f3d1be36f3a9a665e3f72936b6232`  
		Last Modified: Tue, 10 Nov 2026 02:17:05 GMT  
		Size: 132.3 MB (132272184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17c027412464f0d6fb5f4adc4759a7f53ebd1f0a76352ac61352b1a5c2a048f0`  
		Last Modified: Tue, 10 Nov 2026 02:24:04 GMT  
		Size: 88.0 MB (87997385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd798725688cf16e22ed86073a72bebec9b48771db161e5f7294e0399ac00028`  
		Last Modified: Tue, 10 Nov 2026 02:24:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5794bfed2e7334804853fea4be9c27fb0be9d6d1488d1580cabbba65ce739daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7513220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6089dd2f6988cf9f3650c61a9d4d6cb6a1cc0182179e39a2cf8e9200135dfa55`

```dockerfile
```

-	Layers:
	-	`sha256:b877e82fab42e5a3b2150b1dcdfb4bc1208f023716a2e3fe174269ab56ef44b2`  
		Last Modified: Tue, 10 Nov 2026 02:24:02 GMT  
		Size: 7.5 MB (7498833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:565c563f097ff77280072b5f5df8bb250dbbe9cfb7132276514d9d4d06897931`  
		Last Modified: Tue, 10 Nov 2026 02:24:02 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json
