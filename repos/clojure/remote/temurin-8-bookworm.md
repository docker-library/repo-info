## `clojure:temurin-8-bookworm`

```console
$ docker pull clojure@sha256:92f03275008948ffb33ff31d3b11ec7663673948064d055038c21a1a05707fda
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
$ docker pull clojure@sha256:d70ed44abae7f466d9e5744c356a6842f214bb8aaedf48b7b572e6b9867f3da1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.7 MB (181733575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd8c54432c5ad900c70972bf3347ecb276ca94094876f0299026b0a6e220088`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 00:45:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:45:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:45:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:45:22 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:45:22 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:45:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:45:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:45:37 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:796625aa0a0c996cb3f52de38c1dd53db041ec4a4a7c37a97775d2fee72f6ee3`  
		Last Modified: Thu, 12 Nov 2026 00:45:57 GMT  
		Size: 55.2 MB (55207903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e7118d7e984bb04362272bd29192c36092a9aafb8ebe28b437b6c1789dd88ff`  
		Last Modified: Thu, 12 Nov 2026 00:45:57 GMT  
		Size: 78.0 MB (77998542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3c0588d4366628cdd69e49e9a477cea508f58ede879dac13326bd0952aed28c`  
		Last Modified: Thu, 12 Nov 2026 00:45:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4d25b54f1f5c3d1aea243b918d96a5d35b491eb138030e5fa1eacfd80e48647e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7513343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7510bcdfb5dca6696e8cfaa03392504157cadf33a8ec65f1e6073c52100e051c`

```dockerfile
```

-	Layers:
	-	`sha256:4bceeb7db92a02895de6641e101e3b670c3f9d6dba19164b4a87106973b9f894`  
		Last Modified: Thu, 12 Nov 2026 00:45:54 GMT  
		Size: 7.5 MB (7498995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81f2d92cd26f93a8c5506f73d9baf94f5f6ad0b1b248e819e35ba62878877c5d`  
		Last Modified: Thu, 12 Nov 2026 00:45:54 GMT  
		Size: 14.3 KB (14348 bytes)  
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
$ docker pull clojure@sha256:83bf3174ad15b52fcf1a8265d2962b0f490239e0720c6f3f99cbc968a7f93d44
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
$ docker pull clojure@sha256:c2a01dc4839ef881a03d5a717151239e710a7ead4816aac533cb6281698b019d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5febd905c4882342a699fb256c3e33487c04eaa24d0d5f06f14b25a7e2e3bcd6`

```dockerfile
```

-	Layers:
	-	`sha256:9d8eed91d92494b21faabb7eb295d7604268ba0331bf1d8ce6ba046f4b19a7f9`  
		Last Modified: Thu, 12 Nov 2026 07:35:53 GMT  
		Size: 7.5 MB (7504802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6476802ed1fb6576b28e6ab46a8927d1eadda97fc116344cba1334fe14db877c`  
		Last Modified: Thu, 12 Nov 2026 07:35:52 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
