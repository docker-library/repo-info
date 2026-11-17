## `clojure:temurin-8-bookworm`

```console
$ docker pull clojure@sha256:d21464f35698ba7d4ffc141652897e7851bc90cdaea4bda5b040e8bdc1cd677b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:e504a031037e6d17aed41f1956bdadcda31be246dcdd57a59ebbd838ce9d0a32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.7 MB (181733621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:716e8a23af434283d0cbdd4ae89a8132ffc008dacce4cd5ec923e5c1d130bae9`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Mon, 16 Nov 2026 20:14:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 20:14:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 16 Nov 2026 20:14:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:14:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 16 Nov 2026 20:14:08 GMT
WORKDIR /tmp
# Mon, 16 Nov 2026 20:14:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 16 Nov 2026 20:14:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 16 Nov 2026 20:14:24 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385264a61a622de09c0dc750764436a21d820d0902c0c255a8ce4279443543ff`  
		Last Modified: Mon, 16 Nov 2026 20:14:41 GMT  
		Size: 55.2 MB (55207914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f761fea11314b7691977d592baf9e75e1e4134196c24032141b050cf3fd8809e`  
		Last Modified: Mon, 16 Nov 2026 20:14:42 GMT  
		Size: 78.0 MB (77998578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f3f7ad4c33a607ab80b0f7fa8dbc64d5be15676aa142a729572a96cd0cf099e`  
		Last Modified: Mon, 16 Nov 2026 20:14:39 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1bd6df90866cc0715ca4204f8928ebf0c9bd6b6070f6cec4953765576eb5e7a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7513342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7a422d2416300aa4bf9c4f6eefed28ec943f2292a31693ee574cbd3ac46ef07`

```dockerfile
```

-	Layers:
	-	`sha256:7c0bb597704cfe06f6cac84f7781e7ffe4781aaedbaffb34be7a0348319dfa56`  
		Last Modified: Mon, 16 Nov 2026 20:14:39 GMT  
		Size: 7.5 MB (7498995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4808f4ed036b8888cd4830f4c8489b68cff8912335ac249e4aaab4a8eefd9e43`  
		Last Modified: Mon, 16 Nov 2026 20:14:39 GMT  
		Size: 14.3 KB (14347 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bf89f207d22671bfc9e5707c491dc88851b39657e89437a2ce50bf7c5040fa0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.7 MB (180682564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05020304010d6ac69b41b3c080e7bb1e643fa314e1773e0bb6852167f616e00`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Mon, 16 Nov 2026 19:58:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:58:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 16 Nov 2026 19:58:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:58:29 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 16 Nov 2026 19:58:29 GMT
WORKDIR /tmp
# Mon, 16 Nov 2026 19:58:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 16 Nov 2026 19:58:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 16 Nov 2026 19:58:46 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b98fdcc7d9c5a8303f96d8146130d0116bf06460eb96f5acc84c28440e01a7ec`  
		Last Modified: Mon, 16 Nov 2026 19:59:05 GMT  
		Size: 54.3 MB (54270350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c7f6e2ce396bb0d1e0866a0926a5b0121f1161e08d467f40405215df4d1334`  
		Last Modified: Mon, 16 Nov 2026 19:59:05 GMT  
		Size: 78.0 MB (77999113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f18e7c1d484c62bfd7817a60bdba62f98a79df7c109aba0427b085c8b6bcda`  
		Last Modified: Mon, 16 Nov 2026 19:59:02 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a260bcc64a6810992d485e2e2fb4b624de7866062231145262ce98a9a66bce01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5515f7ff98a7d18248eaae9ca1cf6f2a869673f91190263be6ece730dd9ec919`

```dockerfile
```

-	Layers:
	-	`sha256:a251f5860a03b2f8938cf309cb8d5b43907b743db9f4368a652301f8cadbbb9a`  
		Last Modified: Mon, 16 Nov 2026 19:59:03 GMT  
		Size: 7.5 MB (7505458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d6cec97e63d9a34cdb2b9dbe00be348103e3ab8ec1fca4434c79ef8a489d6c6`  
		Last Modified: Mon, 16 Nov 2026 19:59:02 GMT  
		Size: 14.5 KB (14465 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:7223323dd731fb2a41536ab9096539aa404ce20533095dc119e7e4c324ef7e12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.9 MB (188882238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1247735c1fd291a3cf669a4a2f77a9efe0377da52e31cd7003ec2792fb122c0e`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:10:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:10:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:10:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:10:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:10:46 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:11:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:11:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:11:27 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bc5a678b4dcfb705b8cc93f132659b0b5b27172e990eaa04b1c6614d174d883`  
		Last Modified: Tue, 10 Nov 2026 00:12:16 GMT  
		Size: 52.7 MB (52689156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0046e3f30ca2cecaf710333bd1cee7df0a432137959f7b81cc48dfeaa33a3b3`  
		Last Modified: Tue, 10 Nov 2026 00:12:17 GMT  
		Size: 83.8 MB (83823816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee782866f8fa9746a6bfd4a928f0ba198a479d4e83d1b8f61282febf409bd775`  
		Last Modified: Tue, 10 Nov 2026 00:12:14 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5502591e4ef08d754fe16c945bafe115ea86c83fec1734f76f0fc69777468a59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db5dadb93322decd51d56f87c8b00091bc8842fddc01dbaaf6d7e2ffffc1e344`

```dockerfile
```

-	Layers:
	-	`sha256:122aca4d51e60fcf8a28d7322e729e79bc6c4b24ff187f7d25496bb1964489a1`  
		Last Modified: Mon, 16 Nov 2026 20:54:40 GMT  
		Size: 7.5 MB (7504802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67f05424045006833f2395e48339fcabc88518e8a52715a91a9586b552958d7d`  
		Last Modified: Mon, 16 Nov 2026 20:54:40 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
