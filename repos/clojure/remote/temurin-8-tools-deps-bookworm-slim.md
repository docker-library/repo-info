## `clojure:temurin-8-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:8e44c10ee3af96a12258bd540a3e829e720ab784d5f659106d33e6a1a9932d35
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bookworm-slim` - linux; amd64

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

### `clojure:temurin-8-tools-deps-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-8-tools-deps-bookworm-slim` - linux; arm64 variant v8

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

### `clojure:temurin-8-tools-deps-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-8-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5125dbc912aa860e7658db9d97358a6f46d12fcfef246dcdb39e50f92bc3d8ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157243200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:535e8d496d8e7966745e754b833d310c1f717e2fe4701e45303fc119d58f3004`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 00:48:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:48:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:48:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:48:25 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 00:48:25 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 00:49:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 00:49:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 00:49:04 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b24822a8ea25d328a72c8efe36b7120103d42eed3e01f8a90fa9c62b1f2205`  
		Last Modified: Thu, 20 Aug 2026 00:49:37 GMT  
		Size: 52.7 MB (52669121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5f645abe82a2d256ad3cb7b07ebffa2d1d6fe4f58414968af9088a1ef98272`  
		Last Modified: Thu, 20 Aug 2026 00:49:37 GMT  
		Size: 72.5 MB (72497111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f071a78795925a98ba769b14074db3358d334a74fa3fc7662f4452ef1cfa2234`  
		Last Modified: Thu, 20 Aug 2026 00:49:34 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c06eb007bf149233a3dd46e464bed10be10cd29142826250f979fee6df8c7185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b16a3f46910952d714258bc9e9915057e1e912648da98ed4e0747c6934e0228`

```dockerfile
```

-	Layers:
	-	`sha256:a82f9e72f861795d335bcde09a65b6d5c8065ec579aade594713173e40a5d716`  
		Last Modified: Thu, 20 Aug 2026 00:49:34 GMT  
		Size: 5.2 MB (5245351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe47b566a7be6ce2e29745143d8744b698ad11e357d187c28829919909831625`  
		Last Modified: Thu, 20 Aug 2026 00:49:34 GMT  
		Size: 14.4 KB (14449 bytes)  
		MIME: application/vnd.in-toto+json
