## `clojure:temurin-11-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:73dc144c348ac6f67b35518ab08460ee8e3f853c18a52a1967fe063541e8ad48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:e0d1dfdb2dfdd178e44e4a84d7498cf9215741e9f7c2e21964a2069595666691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272546271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2209927041ba666c84db97156a8eabf40ef3b9140174abbcd99cb09dabb851a6`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:41:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:41:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:41:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:41:00 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:41:00 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:43:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:43:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:43:02 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57ec8ae03317a3d88002002c93023d62b1f20c303709e9af5b7d5ea7b9098bb`  
		Last Modified: Tue, 18 Aug 2026 20:42:32 GMT  
		Size: 145.9 MB (145884905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54304dc8d6ce19c152143639fde20c99e04c9a0ac91230e094984fcc2f3ecbc2`  
		Last Modified: Tue, 18 Aug 2026 20:43:21 GMT  
		Size: 78.2 MB (78163628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c24220033e59e5bf96e76b6dfc0b6e2d25de0dcfb0639968e5b9b3388e5d704`  
		Last Modified: Tue, 18 Aug 2026 20:43:19 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5f6da20c40a2bc0f7146b4df82df6f8bd7019e6d01dfad3ddc764615c0b13f26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6d6f8a438622a3d1aa072075c012e1e7ad15faefff55e37c57843eb569dd96`

```dockerfile
```

-	Layers:
	-	`sha256:766c6205d544878577bfa9be7800132eaab1f7d62d91bff9a1929dd3d5729db0`  
		Last Modified: Tue, 18 Aug 2026 20:43:19 GMT  
		Size: 7.4 MB (7400889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba20e19a5c026d92cc06d8116253e2c8339064013bd1aaafdf98b08ee4852d29`  
		Last Modified: Tue, 18 Aug 2026 20:43:19 GMT  
		Size: 13.4 KB (13408 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4a1621226e326ce5c8326d8354484623403dd0b06df6b5e632a7abfdc9f8686b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269112452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04011d5593fe86bb40db33ac480586f354b24f2254d43657d9fa308af60119c3`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:41:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:41:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:41:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:41:13 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:41:13 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:43:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:43:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:43:12 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1967eeb678839f15f3e6cb9fe655ae4915030f645b069fa8c942f3b4dabd7e0`  
		Last Modified: Tue, 18 Aug 2026 20:42:44 GMT  
		Size: 142.6 MB (142582129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1a5899ffb1a30a08b69ea5e967e8a4dcf7b3a9f3e5888020560f8b584ae8a8`  
		Last Modified: Tue, 18 Aug 2026 20:43:31 GMT  
		Size: 78.1 MB (78146298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0bdb6ce61fb9d70112e3201fa98b9231ac6d68c901e65c22ae715cfd75f106b`  
		Last Modified: Tue, 18 Aug 2026 20:43:29 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:85e922c301d2e062e155dda9f711461c42ab7d1150b3474c323bec3d953e80bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7420796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b9ebeda312b45737740ecb144220a6007933d10e9b4fed885debf070616469`

```dockerfile
```

-	Layers:
	-	`sha256:f16ee046af3a4400e06903923f66199598d99353b53ae57e3c03e26375f05791`  
		Last Modified: Tue, 18 Aug 2026 20:43:29 GMT  
		Size: 7.4 MB (7407270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe9a2b14fa7e8673961e6c9844e4921cbdd768335d918c09e4634a84b0fd2e03`  
		Last Modified: Tue, 18 Aug 2026 20:43:29 GMT  
		Size: 13.5 KB (13526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:b083fbe02c725b2fb858274e054fd80b3a4e249dfeed0fc6fabf94c00c6f104d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269430692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33601826a34b2e463980a8532950f48bd285eed10d83b5a7ee5d903f03b4bb01`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 00:52:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:52:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:52:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:52:32 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 00:52:33 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:01:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:01:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:01:06 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd376ff5969191bcbaf61490685b98edf392cffee3d7a499070089f169927e2`  
		Last Modified: Thu, 20 Aug 2026 00:56:04 GMT  
		Size: 133.1 MB (133110153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47302b4a70ef07c3dc86ede54361faebf3df8751637ee10ba85b16118d61a9b2`  
		Last Modified: Thu, 20 Aug 2026 01:01:47 GMT  
		Size: 84.0 MB (83978416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f217ce0e0a15384209d8d2996bedb8c949cfee96369cd83010589f342828642a`  
		Last Modified: Thu, 20 Aug 2026 01:01:44 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:25c56f1c298792be2696958820a48a70004a2139218c68e31cd5cca00f6b15c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad9eccd9d8f0edb0d15c698ec1711478c613f61e2f08f8b4f8cdf48e62ba858b`

```dockerfile
```

-	Layers:
	-	`sha256:c1ec806d05b05518a6858bdeba7e17a3b5eac03a8ce14131dc77a55c02884f01`  
		Last Modified: Thu, 20 Aug 2026 01:01:44 GMT  
		Size: 7.4 MB (7405490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e939bfd7808ff03d70d2716d621a3a05daa1ee6b19e3c16212c56f0193cfe1f2`  
		Last Modified: Thu, 20 Aug 2026 01:01:44 GMT  
		Size: 14.4 KB (14411 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:4248e133e81faf5dd1520a0ffbc1a28116e3687f9f5587d8a2b5ca4cb7107cf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250746753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87af54917799532ff71d7325d247f7997a571fa11f51f1f156d825c46086cba6`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:50:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:50:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:50:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:50:13 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:50:13 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:50:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:50:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:50:27 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27e8ab673b3e926ea338a092a3731e2e2335eb2073c4222b400c50e0e33bc9fd`  
		Last Modified: Tue, 04 Aug 2026 02:50:57 GMT  
		Size: 126.7 MB (126652412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06c03c969ca1c89c3a86920198986d0e5b8c7c69863b7fe149f5c216aa47f7f`  
		Last Modified: Tue, 04 Aug 2026 02:50:56 GMT  
		Size: 76.9 MB (76936415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd61632dd00f52120bce035d2760c92317babaec125f405dcdd0d863b776396`  
		Last Modified: Tue, 04 Aug 2026 02:50:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6ae67e43a87d712349ed2d61f304e34d05823c3a7a4012e47646b898439a174a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf8abbefc237043673897ac02227d8c04b6ae7fa8a331afa21f894e890290945`

```dockerfile
```

-	Layers:
	-	`sha256:5f5fb3bf2947fb78d920a2308f7cf7b5800ecf221a622b953bae41e6e8046c2f`  
		Last Modified: Tue, 04 Aug 2026 02:50:54 GMT  
		Size: 7.4 MB (7387009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7d0f1b14748d277f1b6fa30c311c115cc9c6cd8949b844b8c4a585da78526a5`  
		Last Modified: Tue, 04 Aug 2026 02:50:54 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json
