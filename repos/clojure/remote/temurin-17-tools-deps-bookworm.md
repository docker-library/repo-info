## `clojure:temurin-17-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:f8a260dd766adfbbd7cb5cb3c1d47f503938d8f02a3a9a99b79cc2a5b6bf09db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-bookworm` - linux; amd64

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

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-bookworm` - linux; arm64 variant v8

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

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:5577030bdd8f3948b0c5ba853519c46bd0933fb5c383e515e21f9f0a27fb52d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281054464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed09281b35dc89fbec9bc22b3f5f440d8eb29e2d17aa2c6ea4d904ed85afb640`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:36:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:36:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:36:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:36:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:36:35 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:42:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:42:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:32:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:32:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:32:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49bb31fa4370be1b5da85fd3daceac235b0934e95508bb9b0a4a7473576892f`  
		Last Modified: Thu, 05 Nov 2026 15:41:20 GMT  
		Size: 144.9 MB (144860469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d094701df56824ccdf344ac73fdd715f23493b4d8f2dd5bf9627a6f6591ad160`  
		Last Modified: Thu, 05 Nov 2026 15:43:22 GMT  
		Size: 83.8 MB (83823828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bdd3a4d08855d9872c8dc123eede40411c7c44bfe7a4b8b972bcf0b1a49c5c5`  
		Last Modified: Thu, 05 Nov 2026 15:43:20 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b25a428ca4c9327e238ad436ee8f9c89632b77af931901dea98d27b0f73b5f`  
		Last Modified: Tue, 10 Nov 2026 02:32:41 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7487fa8a0d4a0960da4a08a6c652a3aa0863891888cafa0a98884560cd40e9aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eac8910300ece4569ae083b1b132907be0df53ad37b59296da84f3844c78bd10`

```dockerfile
```

-	Layers:
	-	`sha256:ea1fb7023ae9710c3fa6ecd368b91c307e905605771ac55a9e68736cfef1e66a`  
		Last Modified: Tue, 10 Nov 2026 02:32:41 GMT  
		Size: 7.4 MB (7382599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:147733c7ff05a97844fca6e52febc2b01db770a483f29dc83f3ba439a9bc41fd`  
		Last Modified: Tue, 10 Nov 2026 02:32:41 GMT  
		Size: 15.0 KB (15024 bytes)  
		MIME: application/vnd.in-toto+json
