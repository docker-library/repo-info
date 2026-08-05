## `clojure:temurin-11-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:13dba3d218fa660f62c4cc82d00ee0e5942163b72ce68ba589c871aa0f746ce5
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
$ docker pull clojure@sha256:879bfbc1d2b72d1ed59290e9149f5b06fa8f1f58dc8e3265c6b72553e0dd5d1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272528166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e59703aa47b6baaf9f1718d1320aa4c0d4c0b368803596bd54d5ed98bce1dc97`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:19:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:19:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:19:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:19:34 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:19:34 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:19:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:19:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:19:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:705eb3f692ae35155e1f37925e245e77a5bc756a996250ea890fe5372f36812d`  
		Last Modified: Wed, 05 Aug 2026 01:20:12 GMT  
		Size: 145.9 MB (145886289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99a78149f6e881e8a9bc770f6e8897fde00fb3648cb6ce08df9582f3314b9c0`  
		Last Modified: Wed, 05 Aug 2026 01:20:11 GMT  
		Size: 78.1 MB (78144141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e6c31a1b22b057fb02e3c9fc6c7d4000e4f6ae30f2e7243046952e98bfb379`  
		Last Modified: Wed, 05 Aug 2026 01:20:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:690cfe3bdad5c33edeb7c1307cbac602ba2616c669feef6ed532de280ac6a89a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7410049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb314dd5c813e4f0c06a1a2326816d11f954570cbec3610a965a058452295311`

```dockerfile
```

-	Layers:
	-	`sha256:f31edd77d53d0f6c2a00bd8f8cad874b5e232c66cb90d92027818211392c145a`  
		Last Modified: Wed, 05 Aug 2026 01:20:08 GMT  
		Size: 7.4 MB (7395686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7998930c6453ce528b9e1c56159a2067968685404b4f699d2daa4ef52d63790`  
		Last Modified: Wed, 05 Aug 2026 01:20:08 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3aad32cfcc2a9c9483838ad27a6e26eb26f72d1097e6ef9af882e9b9f6b90a10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269095267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfe915e8f44988ae08e6b23fb8088b40f3f6884a6d110ed2d083b0f1b2f72c8c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:25:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:25:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:25:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:25:17 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:25:17 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:25:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:25:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:25:32 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9f3ff17a14ea7030d13261adf78029b55ab94475acd2a7a2b5b77beaa9ddaf5`  
		Last Modified: Wed, 05 Aug 2026 01:25:56 GMT  
		Size: 142.6 MB (142582306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f0910d7a8d4abaed2f1ae631773234c6ff8039314ff8ad20a2e9cd786d1278`  
		Last Modified: Wed, 05 Aug 2026 01:25:55 GMT  
		Size: 78.1 MB (78128937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c16f25580c81cb8b82967f897d32064b636a524bccd2d8cbc6576ecf86e9a5fe`  
		Last Modified: Wed, 05 Aug 2026 01:25:52 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5f03ef8f94bd90ff309ed61d52b2c3e7d658ffa1fb793fe45be5b61cca5f1790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7416548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c935db4df0ea2e2dd6aa8685292f718a0b1207e0eb260d6bbbac0abb7ddbb8`

```dockerfile
```

-	Layers:
	-	`sha256:9c694d0c499e6a2397c2a2e33129f12a91a39dc899995391040e42fe899bddf4`  
		Last Modified: Wed, 05 Aug 2026 01:25:52 GMT  
		Size: 7.4 MB (7402067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a18aae161030aea2a2b45f598fda5b5e757ef08e8ed5d5aff0b602c228d101a7`  
		Last Modified: Wed, 05 Aug 2026 01:25:51 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:5b179dbf360aa15029d828162cb16baff7e1814479b3408c34357b4b1240e59c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269425416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5bad4219661be3e1790ecff1275dfb857fb343849a7c864b06073f0f1bfca19`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:24:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:24:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:24:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:24:26 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 03:24:26 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:28:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 03:28:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 03:28:55 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c04b8b0dda244314f9e2399ea50364990437cb5f1ebb9c1a5f46f12f68b63a1`  
		Last Modified: Wed, 05 Aug 2026 03:27:43 GMT  
		Size: 133.1 MB (133109636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d935cae4e3166bba9c97ce95c60c1350bb00851de618a31d40dcb1d123db8a5`  
		Last Modified: Wed, 05 Aug 2026 03:29:34 GMT  
		Size: 84.0 MB (83973658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:510c35d40ffcd96f2ce8dcce2f12b7d78dc189f457b832db37721758a3869d82`  
		Last Modified: Wed, 05 Aug 2026 03:29:32 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7c9e8fc1b1d0d7f9bdbbda88b63348249be2a861b183e3ea2309551fa22c9e25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f333ddaf0218b53973bd9dd91708ca169ad97fe1b71043aec5589a4b743d79be`

```dockerfile
```

-	Layers:
	-	`sha256:1089e76e1f3aa5614f62b36c7b8533708bf2baa4165daff5e34caa8c5912cef8`  
		Last Modified: Wed, 05 Aug 2026 03:29:32 GMT  
		Size: 7.4 MB (7400287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d00b8f9515e20f6ddd28a145106597901aad79ae1c49aad7777bb5ddd5c9b5fb`  
		Last Modified: Wed, 05 Aug 2026 03:29:32 GMT  
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
