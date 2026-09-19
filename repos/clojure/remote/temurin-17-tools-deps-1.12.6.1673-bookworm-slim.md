## `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:303cb11e21e320977dd30e2844effa90db28a80186c4d70f8c51aeac75bfa88c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5baa90c7ae85c1a9699b610b9136e90f1e54f328cd4ee7a6cd80013b187722e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250257761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a480ea2459bb11d217ec5ff058d73e3a7c316c3d27c14f4571bfa0c87c0422d7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:51:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:51:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:51:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:51:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:51:52 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:00:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:00:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:00:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:00:22 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:00:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5c1e2072971df062c998cfee78bae6a9efeaf4c5741e49f7cf9b2bdb7610ee9`  
		Last Modified: Sat, 19 Sep 2026 07:54:48 GMT  
		Size: 145.7 MB (145674296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41cc5334d2cffe6d9485a7d551ba151f453f394fd2ca10bf5de28edd484915ab`  
		Last Modified: Sat, 19 Sep 2026 08:01:00 GMT  
		Size: 72.5 MB (72498860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487ae8bc4d166d39ec5784e598e19152933fa08f3f13585e654a1e7be989289e`  
		Last Modified: Sat, 19 Sep 2026 08:00:57 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef254faf5c517eb748342a3045001e15736bd297069d6f97ba3927ecab58e0fc`  
		Last Modified: Sat, 19 Sep 2026 08:00:58 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:964d737d02b82bd6fa1b7a8a1efa1952ef1354465b0986c41743fe44751dfd08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5140496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1421c2dc40a190b14754fc8daf69879439b39f4a842dff69f0d5bb14d75a8a76`

```dockerfile
```

-	Layers:
	-	`sha256:71dd384a3391e95989847aa36ac88b3f12fded9d3b94fc98f259f001d1bdc34e`  
		Last Modified: Sat, 19 Sep 2026 08:00:58 GMT  
		Size: 5.1 MB (5124458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7d7b152f91f8bb3cfa639be25cb97bb34080b282252f93fcb5f6b55ecbaeb1e`  
		Last Modified: Sat, 19 Sep 2026 08:00:57 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
