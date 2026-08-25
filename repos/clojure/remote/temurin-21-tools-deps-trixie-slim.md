## `clojure:temurin-21-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:3329d28d0352b8af8007cc11b8ca842e750d0f8a0fa2e7cf64c89845f21150ae
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

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:25ed8c81fb13f20da54089e4d51eab4cb323beb12d3a4c9f80996ca333a3e61d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256867547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2744a07577057841760cde36d6f0ad39f98430713f1bf26824b530553f32ea5a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:19:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:19:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:19:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:19:02 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:19:02 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:19:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:19:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:19:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:19:18 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:19:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09690008c63a442371874fdeda7985f98daa9e56cdb3dd83686379ad56e78ce2`  
		Last Modified: Fri, 21 Aug 2026 19:19:40 GMT  
		Size: 158.1 MB (158120334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d093193ab5468bc194d18926cec5a3bca8f30e691b12030202deffaaca50c8`  
		Last Modified: Fri, 21 Aug 2026 19:19:39 GMT  
		Size: 69.0 MB (68965405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f992cf71ab052aaf2ed51348d1e2f0b99b9be307edcb60fb2850ae395e1c3a1b`  
		Last Modified: Fri, 21 Aug 2026 19:19:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559048ac35245720f513a73fe5ce32c54aed3ba57304a757564c04b2388d25a2`  
		Last Modified: Fri, 21 Aug 2026 19:19:35 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:817a92214440614bd3994c12d730ba2401cafde10ec6d990ec243b6c71d296c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5275180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1528b852de5b35e9efd6477da8d91fef58cc8e46d2fe5d22d3e4a1390d9231d3`

```dockerfile
```

-	Layers:
	-	`sha256:6e83aa739f6acefb7bb5cc9b764949debd005603fd5e7aa699db1716957f60b5`  
		Last Modified: Fri, 21 Aug 2026 19:19:36 GMT  
		Size: 5.3 MB (5259214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18dd3437d936f7a711148991433ff233414079feeffa5f9e4e549727c34aedf1`  
		Last Modified: Fri, 21 Aug 2026 19:19:36 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0561d44e249f7b186c99dabf3bcdc0288b9b2c81a1457a5bcc2b2f26eb32422c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255332530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ba48172cedeb68e9302b75683ed692befdf19ac43bed063456dda8541e4d49d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:07:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:07:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:07:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:07:19 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:07:19 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:07:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:07:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:07:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:07:38 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:07:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f59aec63f525cd63bcfa7eaf412c64eda91e5b37194d9b8509c10f14d58c49e`  
		Last Modified: Fri, 21 Aug 2026 19:07:57 GMT  
		Size: 156.4 MB (156401989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a82a4a0e443728bbb425065ca2ee18b85677847886b224671d776488554705`  
		Last Modified: Fri, 21 Aug 2026 19:08:00 GMT  
		Size: 68.8 MB (68785891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f87ba8e926c37e3429fae8c3df67e994b4696fe20d1f32e776307bfe7b35c66`  
		Last Modified: Fri, 21 Aug 2026 19:07:57 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4cca1d2d01e16fe8d0c49086818a780e125105e7eb5603d7a06f3681bd3bfed`  
		Last Modified: Fri, 21 Aug 2026 19:07:57 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a80c2e11a76cd1bebfe25697e3ced0776ffb957429753dff1a9c52f70e417c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf98935adec862f873cf7379c745026ebf5292a2d1c9808b36b11963ab66250`

```dockerfile
```

-	Layers:
	-	`sha256:a28ec238d9ab6fb287a04728ae3aae81697a467b09ee2192e6ad517047c65e34`  
		Last Modified: Fri, 21 Aug 2026 19:07:57 GMT  
		Size: 5.3 MB (5264975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6711a500f262ffd2701d012b1a6c7de501431621a80c37a4bbde5d0b263187d8`  
		Last Modified: Fri, 21 Aug 2026 19:07:57 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8e79cc34b52389402a580baf3ba71d8ffb65f0f5501c1f07387dc26b89fe2e7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266253648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eeb02f81f9fe02d16550a8976abdf83953d5aeea2ff267829ae4fc95700fe3f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 22:51:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 22:51:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 22:51:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 22:51:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 22:51:28 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 22:56:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 22:56:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 22:56:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 22:56:57 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 22:56:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543f8faec154a40b02dc777d587f6ad4f70ee990fb1b9ecb9858f48dec66ca85`  
		Last Modified: Fri, 21 Aug 2026 22:54:44 GMT  
		Size: 158.3 MB (158274931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97256e2b964a8f6ef8a164283194e90a2be0ba026e290430c7f3145af1e3fa7`  
		Last Modified: Fri, 21 Aug 2026 22:57:30 GMT  
		Size: 74.4 MB (74376333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f26a4fea265893befbe3e6891efdfc11227a4a61063e6966b97ec4d533e52a0`  
		Last Modified: Fri, 21 Aug 2026 22:57:28 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d062468f45e54ef23d5e51c280134f1821dad59dfbcdc4cb78b0070441a7347d`  
		Last Modified: Fri, 21 Aug 2026 22:57:28 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:db824c1379f5c88764fc7e7b5aec9da43e33b990b57a42783af14298a5ec7fff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e4a9c27d963182f25069a8327c0be8437f2e4ea1a36dd4473c929d8afab0bc6`

```dockerfile
```

-	Layers:
	-	`sha256:922b18ce38958754b49b98e800098c909d48511b5ef395b80419ea24869e89e1`  
		Last Modified: Fri, 21 Aug 2026 22:57:28 GMT  
		Size: 5.3 MB (5263585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:092ea662e4b12769a6b2cdd383e767d4f4fc6e0ec687c9c72c6399cc815de8a2`  
		Last Modified: Fri, 21 Aug 2026 22:57:28 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:a8e2979e0db5b0aa4aac2279541ca109723dd13af787c01dc065ca27b07641fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247161917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1eaa228a8ffcfdd144c3404b06509e380c0c308284538142d080863eefde35`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:08:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:08:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:08:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:08:29 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 02:08:29 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:08:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 02:08:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 02:08:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:08:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:08:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc0352e38fdfd4a6ce2ff46afc8f1a6cd088606d22404d518b52590eaba2f66`  
		Last Modified: Tue, 25 Aug 2026 02:09:16 GMT  
		Size: 147.3 MB (147347791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac043a327c4a24fce725ed685b63d485fa7df05dfa2aef6d9a47d60fc30e8708`  
		Last Modified: Tue, 25 Aug 2026 02:09:15 GMT  
		Size: 69.9 MB (69945363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e45a4b9dd34e50896383850e686752ec56a06036eca71902e3dcf43224f97e7`  
		Last Modified: Tue, 25 Aug 2026 02:09:12 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27228e245d3f8be8ef0152293f0eb741de372a378d906d8a84e4d6f32ea56992`  
		Last Modified: Tue, 25 Aug 2026 02:09:12 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:905803789f10abff5e451f6e134a5ff4af1d597c3005fd82a0c4ad58476a9628
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5271301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:220936f5979c6d7390dc8ce34b90cbcfbeb3f028501e400198e4ba9af36220a0`

```dockerfile
```

-	Layers:
	-	`sha256:ceaac002738213437ae6b3793b7e066655e7e7e8b1106037d55d415561a1503c`  
		Last Modified: Tue, 25 Aug 2026 02:09:13 GMT  
		Size: 5.3 MB (5255336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7eafe2b9ac8846a2b74f3282f99300354ed4691f7f8277dd8131485ffc289313`  
		Last Modified: Tue, 25 Aug 2026 02:09:12 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json
