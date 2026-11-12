## `clojure:temurin-8-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:23a2841db4fa4f4cb6b6ebb5ded300620378114e1a84ec17edd472c03d2b2088
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bookworm` - linux; amd64

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

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

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

### `clojure:temurin-8-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:590a0436b00f3b37d14ff3c9abdc56e509c1bcadc3d1c62e67ad6861b6f90c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.7 MB (180683116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43844d184ab8bc3935a2a5ea28cd1f46b2be51b60801af73b0d9a2ae88e69aa0`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:00:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:00:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:00:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:00:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:00:31 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:00:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:00:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:00:46 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a6805ff94833659627e2813108ca14d967469f84a3d048cd9c48d74c6d36341`  
		Last Modified: Thu, 12 Nov 2026 01:01:06 GMT  
		Size: 54.3 MB (54270362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:292e102f44fdc8fcaf06524d818798b8b26ca8e5c8364b5af86d830ddaf1a633`  
		Last Modified: Thu, 12 Nov 2026 01:01:09 GMT  
		Size: 78.0 MB (77999654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d38e9076b0a38133a74228059900eb063a15a4630c9d294c73ae13309e9d5d`  
		Last Modified: Thu, 12 Nov 2026 01:01:04 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:152e9e7579cb6715aa73e87b4b210ee019ad22276afa1cfbbe2c395e52e99a5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61b1629723bd8d1d8d066640c4cbcd07cb8a98f7799e95259ffa0ff282944e9`

```dockerfile
```

-	Layers:
	-	`sha256:05dc77fdfdcf412f92ce73845a027c6d79021cb9936001ce01f9371d9703d17c`  
		Last Modified: Thu, 12 Nov 2026 01:01:04 GMT  
		Size: 7.5 MB (7505458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9eee3f486354d7cb63e0539d353d95a4c0db984ee8a9e674d818573a2c08a4df`  
		Last Modified: Thu, 12 Nov 2026 01:01:04 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm` - linux; ppc64le

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

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

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
