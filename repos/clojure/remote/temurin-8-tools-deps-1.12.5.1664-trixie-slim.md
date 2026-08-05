## `clojure:temurin-8-tools-deps-1.12.5.1664-trixie-slim`

```console
$ docker pull clojure@sha256:086c826d55220ae7616c3cab761dd66c450acee80d452fe8a7e0b4a8134ce105
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.5.1664-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2179822288abd29d3d4883e393de8cfb292f4f2c8dfb9886c6e34980e35900d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.9 MB (153945102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03a8e25cc10b4c9fe0580ec15048fcf0b79fa439b831f6ee4ea6d01c72d58d4b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:17:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:17:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:17:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:17:55 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:17:55 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:18:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:18:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:18:11 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0469fecf0cc6c37107e52d8bdb88d1852abd7ddeec3c99bb84749dae0f53a2cd`  
		Last Modified: Wed, 05 Aug 2026 01:18:29 GMT  
		Size: 55.2 MB (55198686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d30f01c67b03ad82c2effbd035a79aa1f2fb1f6444a7c2b5b262bfe219947a`  
		Last Modified: Wed, 05 Aug 2026 01:18:29 GMT  
		Size: 69.0 MB (68965006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a33c1db2cd527e7edbf064152a81075f5c6027c8c17b8e8388dc3fcbb2a27fa`  
		Last Modified: Wed, 05 Aug 2026 01:18:26 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3c6e384ea7683b876b7a10a72d1e1366f2d8ccc348ab02337f495bc595dfde5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5392105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2b3ea0c01a383ac3b042f1fe243bf7a210278c383db24e7cb473fdc479696c`

```dockerfile
```

-	Layers:
	-	`sha256:b5b8aa3a233416d1ef2524532377373fba7096939d5b5c3b2febae381f66f2c4`  
		Last Modified: Wed, 05 Aug 2026 01:18:27 GMT  
		Size: 5.4 MB (5377724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26ffb8099cc1b41fdae727e855c83a74b7d2a1d156f94ddb47d800fe4fb0220d`  
		Last Modified: Wed, 05 Aug 2026 01:18:26 GMT  
		Size: 14.4 KB (14381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1664-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:298e29b994f3a7d106ecafa5fe2303ac15a121382fc8cd8fa1d0da6c2d6739c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153203461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a198925cb9475b97c26cf0078ffa773340d12fc9ca33a1bc5035ff2d8496125`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:23:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:23:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:23:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:23:58 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:23:58 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:24:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:24:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:24:16 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e27e3534dc1a2bb43afb4948ae8596954b41f00bb8890cd8bccf858474a05c2`  
		Last Modified: Wed, 05 Aug 2026 01:24:34 GMT  
		Size: 54.3 MB (54272904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6e7baadd711810d2b14f5274d1a8c6b3a50c38ffe944406763cc5698c66c7b`  
		Last Modified: Wed, 05 Aug 2026 01:24:34 GMT  
		Size: 68.8 MB (68786305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b2ce9d42170519bc8983bee0a73929a5dccbfdb13c2233078cfd310ff484691`  
		Last Modified: Wed, 05 Aug 2026 01:24:32 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:faacccde4f2fcfadec07501a7484f9ae686567d2016d8eeb65a296fdbe8d652d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5398684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33a4ec63396e60b4ce4cb511df18596d1239a2d33661e850d10e1b17434039fe`

```dockerfile
```

-	Layers:
	-	`sha256:8d34439795ce67346f0233f882e0fa91c32b1d418956af17a6bf07b63a96ffd3`  
		Last Modified: Wed, 05 Aug 2026 01:24:32 GMT  
		Size: 5.4 MB (5384185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d10ccac4d472c4cf1b0352c02faa7e2abdac302c986d431887d09936b22476d`  
		Last Modified: Wed, 05 Aug 2026 01:24:32 GMT  
		Size: 14.5 KB (14499 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1664-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e47ca5a0f1cc2f0571e29566d839ccf9b503fa9a55578aa13768dc5f739e7e29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160646881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4121f5cd29029774fa7316eab439b23be69e3f7f1418fa64e295910bda19c03`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:37:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:37:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:37:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:37:26 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 07:37:27 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:38:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 07:38:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 07:38:07 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b5e1829cebcac90133601efa909370f24e6418282f82c40c22410e1c5a22f3`  
		Last Modified: Wed, 05 Aug 2026 07:38:42 GMT  
		Size: 52.7 MB (52669140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490ba064e473ef9c1bf5f25007048dc8535259df7130c2a7651f6fa96e4fe637`  
		Last Modified: Wed, 05 Aug 2026 07:38:43 GMT  
		Size: 74.4 MB (74375753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbdf15a3d82223ce2d9217c6527f735fc90b6459f84a0dd9baa49e9e7579cdb5`  
		Last Modified: Wed, 05 Aug 2026 07:38:40 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4961b3aa7c530ed33aa11ba3895faaaac350e3022fb1a905ec41c6f98e1d230a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5397120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e350849eb55423a9be5db1d1186925677bf126a9050de1eb4372e17f97e0f2`

```dockerfile
```

-	Layers:
	-	`sha256:4f5429d7f5ddbe8d8430b545ba83378d8281a4d79a2f874fe3efb2e270956f27`  
		Last Modified: Wed, 05 Aug 2026 07:38:40 GMT  
		Size: 5.4 MB (5382690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1231cdc7f4154292764ac4fa91ae789e68f84d4a1589a2694db44ee4dc30f6f8`  
		Last Modified: Wed, 05 Aug 2026 07:38:40 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
