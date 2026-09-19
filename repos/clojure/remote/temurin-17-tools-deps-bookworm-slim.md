## `clojure:temurin-17-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:59f308cbf8a38e433a2d67c3c09c2ef207d0fc6838383441a856bbd316f9c3a8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:73f9d0fbf027f313e17bdbd4dfcaf0404c64f5e0fe63c657ddc2ad7553bd6b41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240746519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dec7559872b0ad6e9d4d7046ae486def9ab6dd85b3ef977ebbb46f9a5140737a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:15:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:15:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:15:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:15:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:15:12 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:15:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:15:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:15:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:15:25 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:15:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49670c2402a77d0e10c204b782925c5135ed194621303d05657d27b178021eba`  
		Last Modified: Sat, 19 Sep 2026 01:15:46 GMT  
		Size: 145.8 MB (145822724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2cd419c13b2ccbab6271da68371e5c53b02b1284518bbac65a0b795fe556668`  
		Last Modified: Sat, 19 Sep 2026 01:15:44 GMT  
		Size: 66.7 MB (66684314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4bf25b90be0bfd9148ac14bd3651904e5f7ca4ca0a50d063ea2bf84ae6c8115`  
		Last Modified: Sat, 19 Sep 2026 01:15:41 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14de6fe910e88749c99d9932c26c21d000cc350799a79c0804e68d798cffe541`  
		Last Modified: Sat, 19 Sep 2026 01:15:41 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3bb93c64a5032edc29c53afdf6f86f929af6584e3a086603cecb53fa5da7cd62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d6a942a46f329124c928881e5401fcab844b6e7378311feeb34c928ce91a22`

```dockerfile
```

-	Layers:
	-	`sha256:51ef01472f97a8036124ea081e3b77b95788f673fed9ea9160812f35092afd2c`  
		Last Modified: Sat, 19 Sep 2026 01:15:41 GMT  
		Size: 5.1 MB (5119300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:906c33dcd7ab9749251b98c1673be5f2fdfd21af7ce46419084879e74c6d536d`  
		Last Modified: Sat, 19 Sep 2026 01:15:41 GMT  
		Size: 16.0 KB (15989 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1d4dc8e0b26f7ec637926f8bae78d0cacffd805fe95f94884bd827f2e28ca500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.5 MB (239455886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba941c72cd1df93591e22992bc5175b21da6dac29ea454c00e2a835d7007c8f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:22:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:22:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:22:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:22:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:22:32 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:22:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:22:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:22:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:22:45 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:22:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce4a017254ae11ce94eb7079fc88a3f0c44558168493e10f9d2ab16cc889d0e`  
		Last Modified: Sat, 19 Sep 2026 01:23:08 GMT  
		Size: 144.6 MB (144647461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcd91fcbf46c014726c811285ece4bd8e36c67d7e9fbc5ee6f0b09037ac2c08`  
		Last Modified: Sat, 19 Sep 2026 01:23:06 GMT  
		Size: 66.7 MB (66683707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:842437e9a5167bc9e30a01ab75e7af870173680e755f9fcb82f3e7333b5215a9`  
		Last Modified: Sat, 19 Sep 2026 01:23:04 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3226ad87a502b5540250b5d9b3e17e7ae1faf06dd2528c0ef12d7a7f4bc1b3`  
		Last Modified: Sat, 19 Sep 2026 01:23:04 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:758654a50fba2eedb4c0511c68812cfd5dcec6b47e865994029e78af933153fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:927fc47ff7224e2c7a3b762c0569dcfb5bfcad8e742f59e5cbf66432548a7d5b`

```dockerfile
```

-	Layers:
	-	`sha256:0e4f90213aa722c2f5ff510403139061fb8fab9a72ed2bddaf1109ece97bb920`  
		Last Modified: Sat, 19 Sep 2026 01:23:04 GMT  
		Size: 5.1 MB (5125061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb272dfbc6c6ab477ecdfd55f0adbe0e1069e4ffe4f4920ebc6fb3e14f22304c`  
		Last Modified: Sat, 19 Sep 2026 01:23:03 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:cc324f585ae41020f140a583ed68f6777dcd56cf17bf14ace806739e94392813
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250250824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eae4ed83fcb3626772c9522e3cfd5c72afb2c7041a5a46f48fdc437a373400fb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 10:36:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:36:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:36:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:36:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 10:36:55 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:47:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 10:47:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 10:47:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 10:47:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 10:47:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc80be73e4bf746793cf59c9e1900b2441594152e9e217de5214b3710f48f2da`  
		Last Modified: Wed, 16 Sep 2026 10:40:33 GMT  
		Size: 145.7 MB (145674262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca3a03916eb246a49180516b43b7fe3d1590df0db1dbb7aa6fe54206c7af2da`  
		Last Modified: Wed, 16 Sep 2026 10:48:13 GMT  
		Size: 72.5 MB (72499042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b283783dbc8e1c01507f44cd1d0aa97756b9da4e89b8f80024cf4076da76534`  
		Last Modified: Wed, 16 Sep 2026 10:48:12 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaaa7cf0fe9aee86ad7f6d21c221f9f0a163b0625a9064978a4b3ce5d616d0b5`  
		Last Modified: Wed, 16 Sep 2026 10:48:11 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f5bad9b752d0956a129c72ee0213e67963387c923afe471ddd034f7a31846759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5140459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07f44cd362e7e15f8b496bf826ef759633b2ee47490542b60239e8914ace84e0`

```dockerfile
```

-	Layers:
	-	`sha256:19a391cf1f4d5d42baee50003966f6157acd8898381ad816f0ddb5b82006fc7b`  
		Last Modified: Wed, 16 Sep 2026 10:48:12 GMT  
		Size: 5.1 MB (5124422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3ce3a5141e262e8edaac846a7fba1d479d95dba838316c53ea729a24ab2ddf2`  
		Last Modified: Wed, 16 Sep 2026 10:48:11 GMT  
		Size: 16.0 KB (16037 bytes)  
		MIME: application/vnd.in-toto+json
