## `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:0a0a7ffd8bb15cb10d27053aa4a3e12add20819aaf170e10b35a0fc7699f75ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:555531a9966545eae3932844138b9da2c6d89124c4c64a329fa94b90f3577ded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272612830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1119b0eec1596ee5f9822efe63e293f1961d9306a3efdeae6a053cf101c8734f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 00:48:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:48:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:48:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:48:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:48:10 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:48:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:48:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:48:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:48:24 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:48:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adeacb55e05de15e2aecfa8df82755d9c75ae205990bfd387c4e93671bbd7167`  
		Last Modified: Thu, 12 Nov 2026 00:48:46 GMT  
		Size: 146.1 MB (146086151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:418bc21df0cbba7d0aabc0c6b85df7092da8844ba63eaaf1c4444a6d32ac89c6`  
		Last Modified: Thu, 12 Nov 2026 00:48:45 GMT  
		Size: 78.0 MB (77998652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66abbee5f06018af5153e34e14af40b6fd07ef9336a61d87ac650cd32e33b26b`  
		Last Modified: Thu, 12 Nov 2026 00:48:42 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df911e58b512d008c3f46fd9990ed19a4413c74622c9c77041611851afad17c`  
		Last Modified: Thu, 12 Nov 2026 00:48:41 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7f1f0cdde9d4915e6502ae6c10fed21fe492e0c4010fae1ab30bc7cc1b327f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7394565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e332b3f29e6e5657c18bc67ac582f2f987c422c9c50a4af66a3bbd9ae9a56220`

```dockerfile
```

-	Layers:
	-	`sha256:6053d7a7c0edfd383d15edccdc2959afd0907bb9f5490d7063a1be6dbd0e1887`  
		Last Modified: Thu, 12 Nov 2026 00:48:42 GMT  
		Size: 7.4 MB (7378633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:498c36c59ff42769a989417e566f3cb9e4b9bade353bfbeeed1b282b4af6b14f`  
		Last Modified: Thu, 12 Nov 2026 00:48:41 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:64ad7847f53057c74071e9151ab3059b4c6c0d6f63b0691a976f1a6be608ef38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271370665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b0b0f43aadef6d2417347a0cbf1712c64835b99badca938d9f50c7e15d39e0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:03:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:03:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:03:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:03:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:03:40 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:03:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:03:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:03:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:03:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:03:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0595f54f653137b8e41c5cac32b79fa1cae1f298b40d4e8bae826fcb3cb2c60`  
		Last Modified: Thu, 12 Nov 2026 01:04:17 GMT  
		Size: 145.0 MB (144957210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f27e143bd5b9dbf6a55e1286c7de5db0c0b7461e7136bb06d8a3f107139b42c8`  
		Last Modified: Thu, 12 Nov 2026 01:04:19 GMT  
		Size: 78.0 MB (77999461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b743a878cb253bac7dc91951d719f378fe34acffcda3424f86a2fdb1e380f2`  
		Last Modified: Thu, 12 Nov 2026 01:04:16 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed4997b8480f7f3b313a8df028f0f888ba434de1a8c76acbff6bb3b00eb3ffd`  
		Last Modified: Thu, 12 Nov 2026 01:04:16 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b858cb07d0cd259c74d534321d081627d61c705299d6ad91855325ede7c162c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cb06add34e3f2595a7d1a2db6cd5fccd8d14f8e13c5e9e857f5c6d54553d13a`

```dockerfile
```

-	Layers:
	-	`sha256:9c911795f1c825fb1ba66127a3e12bc3d75674629eba3dd2f42b981257759a0c`  
		Last Modified: Thu, 12 Nov 2026 01:04:16 GMT  
		Size: 7.4 MB (7384396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86c61433cbcd503fe87d4b32a3f9eebc3b899724123f8115360557f37ac6abad`  
		Last Modified: Thu, 12 Nov 2026 01:04:16 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:55dfd67a83ee8cf12550cbec000560a4b4ee07cd1f3190af35d8f8814745a55d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281054046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99258703074a78fd10aa6faf3a52b850b9fe110fa2e781b2efd3a0b7d0b8aeb1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 08:02:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 08:02:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 08:02:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 08:02:14 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 08:02:14 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 08:20:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 08:20:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 08:20:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 08:20:11 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 08:20:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8154dc284622fb4f6b2910a339d4e429599729583b608bae1fdc5b72270941fc`  
		Last Modified: Thu, 12 Nov 2026 08:07:17 GMT  
		Size: 144.9 MB (144859676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206beac6190f6378fdb97fdc1b4512af0df8ff6b1885005334df3aacca7e8d62`  
		Last Modified: Thu, 12 Nov 2026 08:21:17 GMT  
		Size: 83.8 MB (83824211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d051ee1cf951610743004aa508971b42940a2223044b76df58df4a5b3fa3b902`  
		Last Modified: Thu, 12 Nov 2026 08:21:15 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9302f9e176fc4fad0d2b34cba5c6666ee908f5d1030c0a69d91b00e24d5f18`  
		Last Modified: Thu, 12 Nov 2026 08:21:15 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:339cd864448eb8e1944dc7a63d433806c06a7ba76bce5ea75b6556387c6aaba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7398579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6f1757af777b150392a412d48647661a95b9d36f1ad249c0e05f3b71ed56f09`

```dockerfile
```

-	Layers:
	-	`sha256:7caae4c97b6f0d267f9555e512a8777686af7bc8c051f97e8c056491b4059d36`  
		Last Modified: Thu, 12 Nov 2026 08:21:15 GMT  
		Size: 7.4 MB (7382599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:531b91ae379811cdf1211acc881a07e46c9e716d502f5e3d7170dc6c1f316a27`  
		Last Modified: Thu, 12 Nov 2026 08:21:15 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json
