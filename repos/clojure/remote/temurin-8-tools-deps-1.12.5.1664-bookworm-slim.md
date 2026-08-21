## `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm-slim`

```console
$ docker pull clojure@sha256:c5c370eea8b8011efbce3e5cb1f7625d653136ebce6c7c51013219c5f6fcb234
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
$ docker pull clojure@sha256:e14652fccd928b922e5d3b22d5fbcc6afa27df58eb45aa6c963b7f334b70c7f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150079487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6435a1df1cd8ffe3ee9c30bc0cd3f94416f000d1f9e590195b7a44b29d223f66`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:08:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:08:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:08:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:08:37 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:08:37 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:08:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:08:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:08:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b066dd80efa85ead5ce57b4e6785273463c0a2a086c6240eb42668b82bc59f`  
		Last Modified: Fri, 21 Aug 2026 19:09:05 GMT  
		Size: 55.2 MB (55164403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ba0ee1f1592fb9a5f6eb94725c38483c968cfdc278607f1c818e018aa861ce`  
		Last Modified: Fri, 21 Aug 2026 19:09:05 GMT  
		Size: 66.7 MB (66681849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc90f52f2d0798dec28e6dce63466e1732c190fea8a50415cd28ed8c819a8365`  
		Last Modified: Fri, 21 Aug 2026 19:09:02 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d54dd94bd309f0c3f59fe87571ab71dd7728157c809b20f3dc0dcddaf208d8c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652d57a862813369fcd3552241f18c25149325b87b3a83e5cadf384df97b6812`

```dockerfile
```

-	Layers:
	-	`sha256:657b6aae43f8d32fa578a9ff33e83b2836a5cf2c9588cec3d04973e463993fa2`  
		Last Modified: Fri, 21 Aug 2026 19:09:03 GMT  
		Size: 5.2 MB (5239598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99b2f8d64b784cb37ac5a1326e1fc1f2b36748f30b8275fd92cf0737e4bfac2e`  
		Last Modified: Fri, 21 Aug 2026 19:09:02 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1362a7a91aa3c5f1e533e4d461918f7d613536dbc400cb64e0b732a1e5d97d6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149048316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8c1ede4ed08801095d9eb581a9ce3dcbbc76ce8b0ecda74beff6fb03413d1d8`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 18:59:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:59:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:59:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:59:43 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 18:59:43 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 18:59:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 18:59:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 18:59:59 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45fe5665c880471b2fb9e95c69894e979743cff49a958ac4a206937973b29f6a`  
		Last Modified: Fri, 21 Aug 2026 19:00:21 GMT  
		Size: 54.3 MB (54262742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98f7b6b00e312bc0dba5ef0ed7081aed6333461fcff5b6fa373f49f23be45a8`  
		Last Modified: Fri, 21 Aug 2026 19:00:21 GMT  
		Size: 66.7 MB (66667728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d25d2459b310656ec590175615447af039511b4c1e4cbbfac232876793e3053`  
		Last Modified: Fri, 21 Aug 2026 19:00:19 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:30f143618cec1af56d3a6bcbe275c5ba35ba64d162492b9d3273cbe7f093d271
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5260579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c669fc3d2b7095c6ad78032bdb53d130e3053b3c19cc34c40af00077f49e4a7d`

```dockerfile
```

-	Layers:
	-	`sha256:da2605fee5ca634a77ce2c8f857b52c08d73d71775622989ceeb6906cf9b5a4d`  
		Last Modified: Fri, 21 Aug 2026 19:00:18 GMT  
		Size: 5.2 MB (5246059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:beda9b5bbb9a7c9218609761a2fe34fe67732ecc8f2875ec06798c32ee8e4797`  
		Last Modified: Fri, 21 Aug 2026 19:00:19 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm-slim` - linux; ppc64le

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

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

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
