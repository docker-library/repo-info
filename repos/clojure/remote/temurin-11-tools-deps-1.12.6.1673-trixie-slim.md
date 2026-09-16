## `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:1a6dd0ee84674b3bcacbe6ada0ebfdb59ca7b7900b0fd8d2f002dd9250104738
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:72da6075d47ec7d35110b219a4338ab4216bb8d34b4f8f2b6a91d4201f2bc06f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.0 MB (249985093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f07e330f2baa37117220a9122d41386fa304159a997bb95400162270bdc8022c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:33:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:33:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:33:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:33:19 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:33:19 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:33:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:33:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:33:37 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:913ea8bf08e953d6a6c22e30a8d5d965db2b733e560e11f6d6df76ac2e68e7ab`  
		Last Modified: Wed, 16 Sep 2026 04:33:58 GMT  
		Size: 145.9 MB (145861408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ff1000c02461e557ce8e952ab10a20767ffe4720e2b2ae1add5dbec95f5d5c`  
		Last Modified: Wed, 16 Sep 2026 04:33:57 GMT  
		Size: 74.3 MB (74330384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c368e85d294cbb50716e6bdc24978a25640608980bd161654bad974efe6156`  
		Last Modified: Wed, 16 Sep 2026 04:33:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:371aeed756906dad3c0e548cd4fbbf8373264f088e364bfcc3be2b5b59407199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5291544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08b185230f8d08505041b1e14d580a6ef78d525261c92fb11927a1bfe2421922`

```dockerfile
```

-	Layers:
	-	`sha256:47eea77c5cf9984c07d80d07069685ce09c4fd0ed442300a9b8f1cdb68767337`  
		Last Modified: Wed, 16 Sep 2026 04:33:55 GMT  
		Size: 5.3 MB (5277148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fc0176f2831c3215bf797982a21a2ff49831760369eb252a33866048a21b3ed`  
		Last Modified: Wed, 16 Sep 2026 04:33:54 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e5ffa70d4ab936ee8ac3ff69bd5d551c1fe18e144f77322ebb407ad949a18192
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247201492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec655ec0f22da315ef1443a08a5b07f607c049bbe88b34c1f7c4ca6ca802d913`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:33:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:33:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:33:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:33:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:33:55 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:34:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:34:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:34:16 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39adb3df8b323b0549b2d4fe1d6b4e33b9add856acab576612c5750c7c334e83`  
		Last Modified: Wed, 16 Sep 2026 04:34:40 GMT  
		Size: 142.6 MB (142566261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69adfa2e1eb3108ff920cb7540ec9d7ac0a388963e83be4f87b2abd7112fa93b`  
		Last Modified: Wed, 16 Sep 2026 04:34:39 GMT  
		Size: 74.5 MB (74475004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77170a156e117f46b9a4751bf55232abb971e5b7e3f55e439875b79e3b3ee074`  
		Last Modified: Wed, 16 Sep 2026 04:34:35 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c07d520e19c6cc3efdaa1c47144d4696341defec7ed161701b7f8a7e9d1428da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5298042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:984ccccf32d28c835201c9f3cb90447582cc574da2aa85d3914616492946c09b`

```dockerfile
```

-	Layers:
	-	`sha256:10b4e89a1e24ded8ebbd9a308590c106c1f4ad000551a2717c13baa199239ecd`  
		Last Modified: Wed, 16 Sep 2026 04:34:36 GMT  
		Size: 5.3 MB (5283527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d7f069b837f057816ef7e70b014d13b8c25d1f5c96945cf7947a74f3e1705fa`  
		Last Modified: Wed, 16 Sep 2026 04:34:35 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:62d7b930aedc3ad9dd2313785004f179834a28efa02f685c2a43d65ca35e743b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.3 MB (244281085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f7d0cbcb2c056a01a2cd9c3b3e1f030f991038825746053a13644c8cab80e96`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:39:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:39:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:39:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:39:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 10:39:08 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 10:44:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 10:44:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 10:44:21 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:748acee124d17029ddea4ad8592dca64d1e0976c49b98dc9c4bfe44b670d57bb`  
		Last Modified: Wed, 09 Sep 2026 10:43:06 GMT  
		Size: 133.1 MB (133089500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e11aa0609a65c73ba3a820145b30fcc33f5a36a266eb84d8b9bf2dae141add5`  
		Last Modified: Wed, 09 Sep 2026 10:45:09 GMT  
		Size: 77.6 MB (77575480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92cdd9844e4855df6339bd8ae6a044101cf9927ebb23a600d17bcfffb759db97`  
		Last Modified: Wed, 09 Sep 2026 10:45:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:375c0b69ca4a116d9b1d872a0793359afe6ce71422348c944176dbc89692bc4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abe905e49fd13c49c49f523353f4c0e8fba3d252140ef42e8e2b8b0cc3b06ea7`

```dockerfile
```

-	Layers:
	-	`sha256:5c9c7d83c3c078a261e3fde24844901160b87888e2c190182afa757c8edcbecd`  
		Last Modified: Wed, 09 Sep 2026 10:45:07 GMT  
		Size: 5.3 MB (5280832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9643992b625a5ca05762864a7ea62179b44479eaf9157407a72bdd744440542`  
		Last Modified: Wed, 09 Sep 2026 10:45:07 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json
