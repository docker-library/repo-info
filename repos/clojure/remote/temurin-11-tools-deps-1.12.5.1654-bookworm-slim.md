## `clojure:temurin-11-tools-deps-1.12.5.1654-bookworm-slim`

```console
$ docker pull clojure@sha256:ff991316b8b48eac846116e344cf73967dfdd10f2211fb37631315b72724630b
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

### `clojure:temurin-11-tools-deps-1.12.5.1654-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:6ddfa3c7a6daa61e311532e1d17e722edf0d815bcda7ec70b1585cedc29bbfd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240767154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19cebaa365788187047650aa0f1765e1bd82670a568834abd6aec8871f73a233`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:49:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:49:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:49:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:49:11 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:49:11 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:49:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:49:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:49:24 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf4cb5310bd7293c3a28f4abe081c36719cfe087ffefe2c79b56092741ec1371`  
		Last Modified: Thu, 02 Jul 2026 05:49:48 GMT  
		Size: 145.9 MB (145886124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b219d1fca60c6d0bf5df1a1da05c7fd8dabcf8c8d7b64c92303b6280e0d46abe`  
		Last Modified: Thu, 02 Jul 2026 05:49:46 GMT  
		Size: 66.6 MB (66642746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0712057698449be4e44537d99a438d5ee0dcf2f226a702293199daa39e07d3`  
		Last Modified: Thu, 02 Jul 2026 05:49:43 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1679dcac4d04847f8ad681119b84c08b16654d03a9d6d93a7d2d52642c9b6720
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5147935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31065a1a20c272e520545fc542bd60b82d11acaeb30587ec974979d574394ec0`

```dockerfile
```

-	Layers:
	-	`sha256:9a8838d78de0c668f5e43e766cdd2f7fb7a0ffebc9ce2c4f159cb66e43ce8536`  
		Last Modified: Thu, 02 Jul 2026 05:49:44 GMT  
		Size: 5.1 MB (5133515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a264c52eec4fbc7f0bf5c2ad669a33e8bb541ea74c6f9968eb474c0e7a131141`  
		Last Modified: Thu, 02 Jul 2026 05:49:43 GMT  
		Size: 14.4 KB (14420 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1654-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:494453c52abd0d3e4c069a616dea700f10fa53ca6ccef0cd96ca36dbaaf312cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237348608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f3d7f54b6c0799306531e4591521937507f9c4114c7f1fa7efae14d0e3da6c`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:49:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:49:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:49:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:49:34 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:49:34 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:49:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:49:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:49:48 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a271863a40300e2a2f3cbc4384f6fb44722e444bf0dd2f2e40a12fa5158693f`  
		Last Modified: Thu, 02 Jul 2026 05:50:11 GMT  
		Size: 142.6 MB (142582199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ac32c44f7e813650b3540680cb5e7a468d58cb8911e792b4e2edab45d10604a`  
		Last Modified: Thu, 02 Jul 2026 05:50:10 GMT  
		Size: 66.6 MB (66643346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:904e4b36691b5af8b7f066ecd0f9cc303e81b6d9a6fb3d6f415b41c81167c01d`  
		Last Modified: Thu, 02 Jul 2026 05:50:07 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:097d3f0600a58e58379abd1fcd7ced4b0bdc2f991055488223dd666be57b3781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5154433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5ce5114338ef44863bd344130541807c39e57db92b084e77ac69c9622df64c`

```dockerfile
```

-	Layers:
	-	`sha256:be57c7e6e320aaaa3aca8b911236dbcf71b44143b441e49fe9c97cc09b0c1106`  
		Last Modified: Thu, 02 Jul 2026 05:50:07 GMT  
		Size: 5.1 MB (5139894 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09a9007b0e9b8280d50e728637dce76c11137ca0ce2749852494fa0c9121a309`  
		Last Modified: Thu, 02 Jul 2026 05:50:07 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1654-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:99f7d48877b655d211fb9b712510498a03514cb421cb2ec0f20bd892884c8ed8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237668999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95255652d0230cb28780abde9ffa2d8f20fc6cf0458cf9afb95a7eee0ba895e2`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:51:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:51:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:51:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:51:03 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 06:51:03 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:02:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:02:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:02:09 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d0b5bd3194eb32290a07b0436278d5023813e2e3fc46f70375c080cff018c5`  
		Last Modified: Thu, 02 Jul 2026 06:54:24 GMT  
		Size: 133.1 MB (133110143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160638e5969146c9aa65634c0e72c5120049df7ce5075daeea1fd2c0e8a467ab`  
		Last Modified: Thu, 02 Jul 2026 07:02:41 GMT  
		Size: 72.5 MB (72476235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5696e47ff924d9b386d7f8254a91071d65f5dfc40b85aaddc2d2d7e4a4d1ab42`  
		Last Modified: Thu, 02 Jul 2026 07:02:39 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:18c9fe95c301d7d1ae57dfa2a30251f4835bce4dec0ac4cf042f3ddfc75c7656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5152527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5238d9c6aa81806fcd8d9fb646f0692dae21f8c88a1b50e6ef29817df8c2953a`

```dockerfile
```

-	Layers:
	-	`sha256:9f3622b661cd0c9e18811837e01f761ea40c6ed62495cd46fb2a607189f2cb0b`  
		Last Modified: Thu, 02 Jul 2026 07:02:39 GMT  
		Size: 5.1 MB (5138058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:265ed2d4027a86d9d2097352867fbdb66af73ffea680a26a1e0bad046d6f9aed`  
		Last Modified: Thu, 02 Jul 2026 07:02:39 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1654-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:27b2e5562c2d306156c161061b6bf80825e0cfe8a1ea637823ed47c875eb6a8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218997965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138bc47ff708fceea8a33cfa6cbfdacefc11ca816bb044f922ae7eb4e27f2844`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:44:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:44:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:44:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:44:03 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:44:03 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:47:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:47:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:47:05 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb0d58388b3901fa554305a051b63127b58668aff312ca0f23806e081ff91633`  
		Last Modified: Thu, 02 Jul 2026 05:45:30 GMT  
		Size: 126.7 MB (126651528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff4fb5da0713f69235de1e60134232faabfaa6e0afe9af589805cbf9b3d5c143`  
		Last Modified: Thu, 02 Jul 2026 05:47:28 GMT  
		Size: 65.5 MB (65452206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e657472bd42279ee7f0187e3d9cadc46d9ebd2c0ba1cf6861858624cc1d34223`  
		Last Modified: Thu, 02 Jul 2026 05:47:27 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f3d416ecbca686cd6f5490ade0f59c8e3df86ac9549824c6af8aeed39913814e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efbafc4f9a2580d120f1fd7bb30bb2573844eb6b546525f3ed18a46de2a979ea`

```dockerfile
```

-	Layers:
	-	`sha256:b875169fdf91ae7d3807336f84a9d80f6afde06bf0c51b77e07b80627e49001d`  
		Last Modified: Thu, 02 Jul 2026 05:47:27 GMT  
		Size: 5.1 MB (5124840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:820a698c0c04b56d35605be3fd97d9267bb339e54285d2d93e1b8fea758e00a1`  
		Last Modified: Thu, 02 Jul 2026 05:47:27 GMT  
		Size: 14.4 KB (14420 bytes)  
		MIME: application/vnd.in-toto+json
