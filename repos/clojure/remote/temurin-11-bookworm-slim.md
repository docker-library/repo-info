## `clojure:temurin-11-bookworm-slim`

```console
$ docker pull clojure@sha256:c5a3a215845185455909689c3f4cd8ea98c987cd327e37a913c644868bed49e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f30a6811da78e8b56025ee2dff6ed488095dd06c00609780f8fa87092bfed84f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240785414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18953d4d2597aebad4ae9519088e106cf683195b4fd32d18dc6e81dd46fc6454`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:14:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:14:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:14:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:14:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:14:12 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:14:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:14:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:14:26 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a2a3e4d3ba2f51c676cc8f386ff941b69cc65b85f381e46d000b604d212239f`  
		Last Modified: Sat, 19 Sep 2026 01:14:46 GMT  
		Size: 145.9 MB (145861440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8320bec8ce9700d555ffbf3bb7228c13e1168b93b975f87ded2c1610edeb813`  
		Last Modified: Sat, 19 Sep 2026 01:14:45 GMT  
		Size: 66.7 MB (66684886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f7342c051f9f3b3b452335c0f8ef08bbad67b11b90b226b1ec109f3a63e3f52`  
		Last Modified: Sat, 19 Sep 2026 01:14:42 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1024de319200b992cd3e8c105de9be0c4c8050ef0007c431d23803dd6e40cc1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5153237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ee76122f18807bc0b7efb54e88a1a9e04e90d5acdaaf503b26d396befa91b9`

```dockerfile
```

-	Layers:
	-	`sha256:956eabfc17fd66492ec87733692a7f1dedc1bc8eddc1b7facb957846fd8336fc`  
		Last Modified: Sat, 19 Sep 2026 01:14:42 GMT  
		Size: 5.1 MB (5138816 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99e32754e72d2bffa8dcb3d39ea30120195581f4141086600e5e2266ceb43a9c`  
		Last Modified: Sat, 19 Sep 2026 01:14:42 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4b7e7fb5b9cf68bf240f6f8012b9d3d268547b0a7ee3ca7692790880ccefd026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237374211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b8b119429324862be1d8bf43adcdaa4a2f072aed1f35eeb347374b6f5403d4`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:21:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:21:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:21:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:21:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:21:12 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:21:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:21:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:21:26 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85bf9971e57b62e68141e04bfb0b2c25d8c7cc4aa71a7b1956ee046e664014ca`  
		Last Modified: Sat, 19 Sep 2026 01:21:48 GMT  
		Size: 142.6 MB (142566278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074022a1757bd7a751bb20fe6dc25288862fa5bad81dfed7216b2949c2bd311f`  
		Last Modified: Sat, 19 Sep 2026 01:21:47 GMT  
		Size: 66.7 MB (66683608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d285462d6a910fa3e60d48351e0b1960b22cb0197ffb5f135254e97e7220110b`  
		Last Modified: Sat, 19 Sep 2026 01:21:44 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ccb0b4bdf31bce169eae3c6b647a5d79f07fb57371d3a4aa06afd2df53566142
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5159734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac246028f2cd932edfa9e8198ed04e8024e191268a33026f070a56366ab69da`

```dockerfile
```

-	Layers:
	-	`sha256:70367e2bdbb3533a95643cfe9228fb4e6f19845400629012d65c8e0ba86a4f76`  
		Last Modified: Sat, 19 Sep 2026 01:21:45 GMT  
		Size: 5.1 MB (5145195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c738671d29642216ee707199ce1deca68030bed5a32124027cb74529f231329`  
		Last Modified: Sat, 19 Sep 2026 01:21:44 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:0d0b064d333b9685cd2b70554bb8365bd503339e0687c3fa28e6fff3b47b4b01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237673545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ecb7aa0f220642323145fc78d088b69bf6fb2718267b57c435aeee2f4af142`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:39:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:39:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:39:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:39:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:39:50 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:49:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 07:49:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 07:49:21 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7832be33f5be5ca91512a73659985bd243d53c718017818675483432c66cc8c6`  
		Last Modified: Sat, 19 Sep 2026 07:43:38 GMT  
		Size: 133.1 MB (133090146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b0f5b2499696cc4389699a3b5ee41d6bd94893d3a8aa30216c701077aa3c5c`  
		Last Modified: Sat, 19 Sep 2026 07:49:53 GMT  
		Size: 72.5 MB (72499193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b817c9887fb427e4e30254111f8f12e46d378de2c6432e4127eb73226a4a7d`  
		Last Modified: Sat, 19 Sep 2026 07:49:51 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4fc4311fd09262646f2efe86bf0a0209d5f7a1f57221a83b61d2cb13c1af8721
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5157828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c301045795527d64e0c75010a7da9944b764901a8ab8e692626e147da8b31b05`

```dockerfile
```

-	Layers:
	-	`sha256:e09893d8e6deae0f56f5da06845c9f31ebbbb4d93e7b38838f137c24d73d8dc3`  
		Last Modified: Sat, 19 Sep 2026 07:49:51 GMT  
		Size: 5.1 MB (5143359 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89a95adfd93da90419e5cc1b1ce5d1519c270a85aa0dcfefd9d1c04695b0b89a`  
		Last Modified: Sat, 19 Sep 2026 07:49:51 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json
