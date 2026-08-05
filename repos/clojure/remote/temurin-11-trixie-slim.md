## `clojure:temurin-11-trixie-slim`

```console
$ docker pull clojure@sha256:35b4ab4ada1433cb59a21f53ef81e511c2830c8da08dae775a939ce50a93065a
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

### `clojure:temurin-11-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:31d0bf178ac7721df6572303a8dcccbd9c6fd98421f0bd388f2c0a7053625c51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244632423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0c6b7909f540f2d54d1bb73b631dfc1452b7b40f2f4057a8a13ca936a24807`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:20:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:20:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:10 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:20:10 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:20:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:20:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:20:25 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ae2c8094f2372c781c0653e8400b52bfc0d3766380e2f3af5d65af9905a2c5`  
		Last Modified: Wed, 05 Aug 2026 01:20:46 GMT  
		Size: 145.9 MB (145886290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5122d0dcaddcf53c57eb9062a7fc66e7eef75fd7f60f5947a5a884bf5debe04`  
		Last Modified: Wed, 05 Aug 2026 01:20:45 GMT  
		Size: 69.0 MB (68964723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613dfd8b1102774ec281cc03c8c6ebd4ba62c74c26d72a8ba4b4610a030058d2`  
		Last Modified: Wed, 05 Aug 2026 01:20:42 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:be4ef02c8ba72229995384c3cb94102567e6359183f5c133c1e9e627017a27d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5291277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a898e44d0e8289c616bd73ad09c040ef546053de400740753eb28987d6a65c`

```dockerfile
```

-	Layers:
	-	`sha256:7bc111d09e50b9ebf1e1cf3a31b8c580d59869c3788e49e7f134d680e516fd9c`  
		Last Modified: Wed, 05 Aug 2026 01:20:42 GMT  
		Size: 5.3 MB (5276880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2215835aad34cde19a545983b8c34f573f62aa49d73b77c480cce3832a72d669`  
		Last Modified: Wed, 05 Aug 2026 01:20:42 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:51f223e00698681b8f5d24e765489e2cf3f95beaf3423fd3c9c531a2970ade4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241512788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33b2a2ee25acb3f9bab210daaba729465586250832641befa47eb958693c8417`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:26:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:26:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:26:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:26:03 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:26:04 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:26:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:26:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:26:21 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78dcbb9b1f2640b142503967231097905fa4960c053ac3d7d2f4d0dc7f36f35`  
		Last Modified: Wed, 05 Aug 2026 01:26:43 GMT  
		Size: 142.6 MB (142582297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7f8a369285680521b33028c21c40fe10232985d470672d13ddfe9f5e20b542e`  
		Last Modified: Wed, 05 Aug 2026 01:26:42 GMT  
		Size: 68.8 MB (68786240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e3147ade87308a1d0e3822a0a6f296b8b5c05aa615d3f6761cf3e6a0bc3613e`  
		Last Modified: Wed, 05 Aug 2026 01:26:39 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bf48867673ddcbbf7b5cca1f0a32599eb0aed820c7d44bd6ed9412b9b4675470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5297774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0097535a208c658bb1364277668be7c15f345bcb9d8bc6e4ac0481d9f6a67ed7`

```dockerfile
```

-	Layers:
	-	`sha256:50e55ac04fd700262fe491a1b3f7e240e108a8d30029cdd1480f1583af97c5de`  
		Last Modified: Wed, 05 Aug 2026 01:26:39 GMT  
		Size: 5.3 MB (5283259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecaa20fa88fbde880d442482d7729503fe2af3e7b18a720bc96fba33fc5151af`  
		Last Modified: Wed, 05 Aug 2026 01:26:39 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:9d383c62d87f40ae8a9b6dfae6c76589a9bfa146b20eb28f455e2ccad7de9931
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241087117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b705f2327e918de529a19b45ec9f6174a591e13a5986cb85a9c2a363bd18768`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:38:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:38:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:38:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:38:54 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 07:38:55 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:42:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 07:42:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 07:42:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f1fa50994192341729fa2a84fe83ea806e228e6161f7355a8cce95ef6641bf`  
		Last Modified: Wed, 05 Aug 2026 07:41:55 GMT  
		Size: 133.1 MB (133109642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad552c5b9023ff7817f0061b82b59aad770f9bc46b5a14e99fd24fc4641c3c7`  
		Last Modified: Wed, 05 Aug 2026 07:43:22 GMT  
		Size: 74.4 MB (74375487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69d85416eb36ed7e8ed1e1340af0d0f24b456323bffd6d51e57805784a69712f`  
		Last Modified: Wed, 05 Aug 2026 07:43:20 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a9aace4bb585462d71b06e7fc45fc50a8455d97af1bdc56f50ce34ae89d83794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d00153237b61b9bb6354180e762c00cbb9070df620fb41782b9fb4209424e25`

```dockerfile
```

-	Layers:
	-	`sha256:5349262db7240ffd5298315a8ba74d0aca6ce9d5146d6e58aec54fa7c6d488fa`  
		Last Modified: Wed, 05 Aug 2026 07:43:20 GMT  
		Size: 5.3 MB (5280636 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:622546e71540888c443f69f2c93f76c2f19a2eafe9f6ead478712b738bca4c72`  
		Last Modified: Wed, 05 Aug 2026 07:43:20 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:171086bc3d6737018fa8e5326203ce2e39ef96f59242c41557b87bac30d09dec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226445070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4ccc538d54beb3cbebadb203ad3f77af174efe9e59fe0cc4c052f1973ad55f4`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:44:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:44:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:44:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:44:27 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:44:27 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:46:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:46:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:46:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32bcac27d4284e15c917725b631091e0199626857deee62b199d2d71969df6f`  
		Last Modified: Wed, 05 Aug 2026 01:46:20 GMT  
		Size: 126.7 MB (126652412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04d9876d00f0605ae1a8fb6a2cc687606a6d06fc445d731f2ec22ef6324a9300`  
		Last Modified: Wed, 05 Aug 2026 01:46:43 GMT  
		Size: 69.9 MB (69945443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c324270158fe1f641e1b43e31142e46f171aad380227ab6bc09b4db967684465`  
		Last Modified: Wed, 05 Aug 2026 01:46:40 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:74e76496169ef8c6bc3308c435ff4ac3933a23dc4caf2003006444c3d981339f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5287205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:126c426336f375c717f8eeb2fc2af4a24bebe778efd9bea508104b96e2e578ee`

```dockerfile
```

-	Layers:
	-	`sha256:14b6e08a88ebf4a25b476d6d72b06fa9e5beb2beeadfe6a4974d716bd37fc525`  
		Last Modified: Wed, 05 Aug 2026 01:46:41 GMT  
		Size: 5.3 MB (5272808 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7142b0f4819c6573004cf004e6785cdd9e4f8511d13f58da7f1abd010a173bb`  
		Last Modified: Wed, 05 Aug 2026 01:46:40 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json
