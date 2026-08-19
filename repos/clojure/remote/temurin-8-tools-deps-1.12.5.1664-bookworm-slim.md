## `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm-slim`

```console
$ docker pull clojure@sha256:82e9f57971a8a161e8c9ae11626e88360c1892c0870d17e5d0b93a6eb1b86b07
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:bd065605f3ce41a40b870e442011377c8715fe34a56dc889c6058850cfcc6e2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150113903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39aa071790bd1d47f3b03796e491383d8dd51d744e7d95bf8d7122ed4108018d`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:40:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:40:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:40:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:40:11 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:40:11 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:40:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:40:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:40:27 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b99e6e8e68d167fedeeadca95fb94bac865f4495d7939cac66abb178356b058`  
		Last Modified: Tue, 18 Aug 2026 20:40:45 GMT  
		Size: 55.2 MB (55198722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ddc2ac2157789b1ebeee673c6d633db0e85bf2ec324d570059b02b926114ee0`  
		Last Modified: Tue, 18 Aug 2026 20:40:45 GMT  
		Size: 66.7 MB (66681946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de1cc094137461acbae8e0138039f1a251d9d689d7f5aa25bef89d170c256de0`  
		Last Modified: Tue, 18 Aug 2026 20:40:42 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e7636899e8d51b2d600978b444062aca340913c9e99edc33f11152a2dd61c3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f3d74b11dfda918b83d1c4e3ac0308efbc69d03ce5b704845e21fae243e60a9`

```dockerfile
```

-	Layers:
	-	`sha256:dff50639625675e188f6f7937864ac8a78b882404011b5ed8c6db47f0a921f06`  
		Last Modified: Tue, 18 Aug 2026 20:40:42 GMT  
		Size: 5.2 MB (5239598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b84b68178dd4475160399df597f0f44c938e27ed21dd7c1953db7ff52184583`  
		Last Modified: Tue, 18 Aug 2026 20:40:41 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:58ab314fcbbbcddc41282bc84468a93ed582e02f5c6508ce3517847144de6b76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.1 MB (149059734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad5bb43330d466af7106992e96807c45d0ce46fca96b31086538c91a9d7bf2b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:40:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:40:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:40:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:40:12 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:40:12 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:40:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:40:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:40:27 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529f2e756aa74cac52096f62f5c13895cb346e279ab4d92e3588218cdaa009f4`  
		Last Modified: Tue, 18 Aug 2026 20:40:45 GMT  
		Size: 54.3 MB (54272926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f02a689923b9e680658ad6af69772fff75c21cfe1de2242fda60cb0f5fc0a33b`  
		Last Modified: Tue, 18 Aug 2026 20:40:45 GMT  
		Size: 66.7 MB (66668961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1f423a37d0272dcd56b8573f155c7d2c13acee48c0d8a213d5b86c5d1d42ff`  
		Last Modified: Tue, 18 Aug 2026 20:40:42 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:591498cc64f4c1ce5125f3410475aaf9bc5f1ccbd27371c8b81dffbd40b285eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5260579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:999aa0d097ed9650fe89c21f1a44ef60dfc29c05934fc127abcf15db62fd77f0`

```dockerfile
```

-	Layers:
	-	`sha256:a253188f5c643d3aa83f86d32cbd8daef906f4f763b1f4d1e663e0bea14ef475`  
		Last Modified: Tue, 18 Aug 2026 20:40:43 GMT  
		Size: 5.2 MB (5246059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc742f95545bf0abafb9591e242fed8b58e15e1ad0046aa98d058b3322817d44`  
		Last Modified: Tue, 18 Aug 2026 20:40:42 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:cd1a0654f2f6cd680022b7baf8fd540dc45d6504cea8d031a030cc2d3a319372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157232871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e3399602926d8f6f688c00f1e48fe566ec32c81a7421dcda1b42207f6f6a25`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:23:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:23:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:23:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:23:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 03:23:05 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:23:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 03:23:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 03:23:41 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3791cdbb4f3c86c7e414e26203827c5bd2b4057f1a1a27211c9054e949aed55f`  
		Last Modified: Wed, 05 Aug 2026 03:24:20 GMT  
		Size: 52.7 MB (52669138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7db94f89b91834ae735240c83af261f1818136b2a299a13c8c3adf8e8b1de1c`  
		Last Modified: Wed, 05 Aug 2026 03:24:20 GMT  
		Size: 72.5 MB (72486764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dced886c5455610755e7ed703ce7e48bc2dc5960b21535a2bd7902162ae78bd0`  
		Last Modified: Wed, 05 Aug 2026 03:24:17 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f3d8fa06f9c33a3d0b4ec9b07f104b20e601a5ae8fc21ef5b6f78a3b77ecd90f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b112d20d7f58d8d5917c5f7d50322cd05c3bff3dd2252704013887e5babc93dd`

```dockerfile
```

-	Layers:
	-	`sha256:c36fcaa9c838a8221dce3df1b2f0771ebe5205cb2091ba01b183726edbbd2a2b`  
		Last Modified: Wed, 05 Aug 2026 03:24:18 GMT  
		Size: 5.2 MB (5240148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e74a919406b679a9ac6a787ead0185977a133eaedbd0e47d1d068cff2b8ee3e9`  
		Last Modified: Wed, 05 Aug 2026 03:24:17 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
