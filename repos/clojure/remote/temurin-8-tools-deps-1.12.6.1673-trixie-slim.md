## `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:6e951b3c63b7a310ceae49058cf2d3f4d82884ab53f26c8a359c92371215d67a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4923bf7bbc75046fbd3aca8baacf4c398aa1e39fe843aa1fa77b74db7e468ffb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.1 MB (154054058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2dc61e46a81dbf9ab573178402cd9046e6eb268f905bed18c9d73979f03ba7b`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:34:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:34:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:34:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:34:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:34:30 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:34:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:34:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:34:45 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b8e7d4388c984a063fa25b89011234bf15938b9f4a06e0a7d0ffc6700aeedf7`  
		Last Modified: Tue, 10 Nov 2026 00:35:03 GMT  
		Size: 55.2 MB (55207904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c98df7260ed788d312ca37122ac2d9df2094a13ea72aac540c372754d23bc6`  
		Last Modified: Tue, 10 Nov 2026 00:35:03 GMT  
		Size: 69.0 MB (68989374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f8e60da7fb73f4926bf6ebdeeae61afb2dfabb7c8be747883924dbd5561646`  
		Last Modified: Tue, 10 Nov 2026 00:35:00 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5826a5d219010a178e054ea7d890c80c37365b68f7fa578bf7559c858089583c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5396801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e54defba3b6e1b6fad935cd4cf4eac703a99a9564a044f728ad9593858f28c9`

```dockerfile
```

-	Layers:
	-	`sha256:f8c7bb5c59cfec275b96719a108de201ede0ba0218dac8899a2da74b77ba5c5a`  
		Last Modified: Tue, 10 Nov 2026 00:35:00 GMT  
		Size: 5.4 MB (5382419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d68093f5ac4883c359f5db82bebc0f07f5de5b9bfc4213b93e5ea7c7ff097c5d`  
		Last Modified: Tue, 10 Nov 2026 00:35:00 GMT  
		Size: 14.4 KB (14382 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6316c9396153f072fe3922329f2ce1e553e41387f73668aa3434a68738434283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153290105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c134d1f25b1bb1e05d979e4f3bc9f100e7ac48538b171a9c5775400a9ff57a6`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:33:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:33:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:33:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:33:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:33:51 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:34:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:34:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:34:09 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ffdb489042a7cfd32cf12cc12538b583c7367d4be0bd07093712b8449199d4`  
		Last Modified: Tue, 10 Nov 2026 00:34:26 GMT  
		Size: 54.3 MB (54270339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee417247cf2239f567d67c83d9a0e546e72babdeb33a4a2620e030572259e4ac`  
		Last Modified: Tue, 10 Nov 2026 00:34:26 GMT  
		Size: 68.8 MB (68805084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46d570163157b2966118ddf79eaef711b208765a8ac16cc2e29ee61bd86be6ae`  
		Last Modified: Tue, 10 Nov 2026 00:34:24 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5e6cd56f14f3b2965461f46da3180ce525a1f1b0d4147b20a68cee8d300068f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5403380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc4a36712db8d8e4af180afde072be5a46fae0109dbb0c5ebecf17b99bef323b`

```dockerfile
```

-	Layers:
	-	`sha256:99a27a1d472b0d644433bfe74f98ce3d50d1acf7ea7d0f79fa315d5140bde987`  
		Last Modified: Tue, 10 Nov 2026 00:34:24 GMT  
		Size: 5.4 MB (5388880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04f12183f879c7e21345bdf42e13a788a63260f379c8cb8db73bcd3f7ff923bd`  
		Last Modified: Tue, 10 Nov 2026 00:34:24 GMT  
		Size: 14.5 KB (14500 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2d2e0ea55bbfd44ca1401f461e15ccaba79060fba02bb5c2f9a8f33313c03987
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.8 MB (160776193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06721a67eeefc8066af239c92752f801558bd75010df597b3da1aae16e685894`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:14:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:14:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:14:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:14:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:14:37 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:15:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:15:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:15:37 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a678a29c3391f1fe465bf4edbc3af04ab3026e2582e9c3650840c938aab8f6`  
		Last Modified: Tue, 10 Nov 2026 00:16:17 GMT  
		Size: 52.7 MB (52689141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76244afe1b5a9b43fbe0e82edf48e384c99e91bb2f21acd89099048cc6b7ff50`  
		Last Modified: Tue, 10 Nov 2026 00:16:18 GMT  
		Size: 74.4 MB (74418759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:007d25c090a2ecc6741026cac6d1ae66caf4500cd0bfb808e1d8d8f0305b70d9`  
		Last Modified: Tue, 10 Nov 2026 00:16:14 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:487b14d2fcc0cc4f2f803152fb4b6db34c692ad99d7e085413e3870946dc2f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5401815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6308566227569ee4f4a728569a1d138459d7ae694a8965031e783bb6d6a955f`

```dockerfile
```

-	Layers:
	-	`sha256:eb370b960891597ae418600fdf2eca0d8f7b57e91bbba8760701e9b9d924a2a9`  
		Last Modified: Tue, 10 Nov 2026 01:51:21 GMT  
		Size: 5.4 MB (5387385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0bc5ea0a5e434760def566ccb6bf272a277997c16fc2273c83c3e57e0a2344b`  
		Last Modified: Tue, 10 Nov 2026 01:51:20 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
