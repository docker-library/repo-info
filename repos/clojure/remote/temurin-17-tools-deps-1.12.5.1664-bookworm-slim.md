## `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim`

```console
$ docker pull clojure@sha256:85bef162db7efe54ce570ac3a40d4bd0b51113e3368067b83ee0934f1e66cc7e
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

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b5b03dee098b7be46fd1e4db90418a4e3a6e1d6e251c941a76069076011c0d32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240796341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b81f2160b48882ca34b655aab58a6539d26c31978e8cff1c94ad34533cafda10`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:50:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:50:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:50:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:50:16 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:50:16 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:50:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:50:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:50:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:50:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:50:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e27807a26e1ac6167ee420c1b5bd7f4be19bb2780bc362b6e89623f0550ca6ff`  
		Last Modified: Tue, 04 Aug 2026 02:50:53 GMT  
		Size: 145.9 MB (145905437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad97be1d0a7e1b059c7d3d9fb8408202147270384b8e112ef964c4b84201420d`  
		Last Modified: Tue, 04 Aug 2026 02:50:52 GMT  
		Size: 66.7 MB (66657219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05f9dc6ce7f3162ea669e2141f22b30a04b12410945efb4552dfd41c6bdd555`  
		Last Modified: Tue, 04 Aug 2026 02:50:49 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35148d83a970c9f7098f56776ea5b855f4c9aeecf44dcd3673e3cc86618d65fe`  
		Last Modified: Tue, 04 Aug 2026 02:50:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:af13df87a482c60f113ca80b78ff5111b18c0a6236dd12ef5b1983f336430976
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5130025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72acf82ff27119472e8380cec8d0f29bca93a0b0c720774ab0b754ab347df79`

```dockerfile
```

-	Layers:
	-	`sha256:88610953ddf7dba89108a7aeaa9f542ca36560915a854734e9a125235ff5276e`  
		Last Modified: Tue, 04 Aug 2026 02:50:50 GMT  
		Size: 5.1 MB (5114035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9fc59db154d3fd1609a0cde0f0f478804b9ef0d96c732316af26f5067da6033`  
		Last Modified: Tue, 04 Aug 2026 02:50:49 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fc7d856a56b8a76459d5fecb81a0a091860e068c316bc53ca972ca485a821990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.5 MB (239490838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c3fac0c85e953577d8f364bd7b563b995c61be8e0c433178d4a02cf25cf426e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:50:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:50:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:50:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:50:22 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:50:22 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:50:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:50:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:50:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:50:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:50:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086009b699395a0e1e6dae052452276adaf36bc3b5124ca9672ee1c7335747ba`  
		Last Modified: Tue, 04 Aug 2026 02:50:59 GMT  
		Size: 144.7 MB (144724288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71cd243edc15bf4ef62fc2686e7a5f54320a4087b5f65918fdbf83da40e789c`  
		Last Modified: Tue, 04 Aug 2026 02:50:57 GMT  
		Size: 66.6 MB (66648253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37868a7207a2304f593cde7ca524be6a4bf029f36bf720c320d944365f2d6c11`  
		Last Modified: Tue, 04 Aug 2026 02:50:55 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb6773055058bd641fc2164d8fce9b353f7a72dcdd94d425bb8c7cddc2804873`  
		Last Modified: Tue, 04 Aug 2026 02:50:55 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0c4a9f507231e933c82872207672bda1fc265f6dd2cc658a893f74edfd027bbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8195e1862a2ded5fd88241546d13bb0dc73e967c3199bec74e485ba087c3063`

```dockerfile
```

-	Layers:
	-	`sha256:388a702e73ba29787de10feb43d4e4099cd4fb9512be0bcc4361a8250de3f7be`  
		Last Modified: Tue, 04 Aug 2026 02:50:55 GMT  
		Size: 5.1 MB (5119796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf1cdbd410ec69956b42774777760ee9527e69d8e7dcda01abc19d28d906100a`  
		Last Modified: Tue, 04 Aug 2026 02:50:55 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:775d37bf76fda30284a8193fdbb0e56d2c1531c50f59d4f3638a84d2c05470c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250330182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb9a98cc11a7612a5fff9674377813c63fcae0df0ea05fb4474c3f3eb07e41b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:01:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:01:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:01:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:01:36 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:01:37 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:02:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:02:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:02:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:02:17 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:02:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a38b694a0f3c0fba176cb75f6c150e86b8b8b103a3ae08ef72c7d43b9b159ea`  
		Last Modified: Wed, 29 Jul 2026 18:02:59 GMT  
		Size: 145.8 MB (145766208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba411015f3eadbb54330c0a026ad9bb1d9fcc820b3954807ff9cbe56b9e47723`  
		Last Modified: Wed, 29 Jul 2026 18:02:58 GMT  
		Size: 72.5 MB (72486513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce2ac75405dd3acd7a505aa8e799c9e3729897b6466506e9c88c3fe3b719c6c0`  
		Last Modified: Wed, 29 Jul 2026 18:02:54 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee50575fb7117368b3ab6b57e9591ac50ea9b519a68c0011d59d4f11b0e19ede`  
		Last Modified: Wed, 29 Jul 2026 18:02:54 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4591571c65698b650d53cba41906a86eed96abafccaca4da50e58d1b9e97b7d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049ea8073ef7f6f4794170689634436d8fdc75b9e7d26922fd77fe0e2540e455`

```dockerfile
```

-	Layers:
	-	`sha256:32b4ef322ac29bfb3f622f2b1e072f9a9e55dd7ef90f44bc6f56aba8b262b371`  
		Last Modified: Wed, 29 Jul 2026 18:02:54 GMT  
		Size: 5.1 MB (5119193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37a55cbe50faed80d96b3ce596365f16ef6fa08f04a2de924e10ba8d28478ad6`  
		Last Modified: Wed, 29 Jul 2026 18:02:54 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:8471185a3fc28fa2831d970bb1d93f572517f1efc8a85f3a4dbc72cbb4e55fa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.3 MB (228255947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce835c2cddcd78d6eb76596713f6d233b7727e617cb778b7aec284b3f1202490`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:55:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:55:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:55:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:55:23 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:55:23 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:55:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:55:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:55:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:55:37 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:55:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca8071e1acdced8b3153787621993485cd2b3d16f8b6c79cb352bea6ef616b94`  
		Last Modified: Tue, 04 Aug 2026 02:56:04 GMT  
		Size: 135.9 MB (135910417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1effa12a129fb011ba0acd9b7cd008de56ff4f2a548f4f5b79b97c21dcec6859`  
		Last Modified: Tue, 04 Aug 2026 02:56:03 GMT  
		Size: 65.5 MB (65456224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6ed3c27665237fc69bd09a9d7ef4c91f9e347ef954d98a5bcd502232a5cdb5`  
		Last Modified: Tue, 04 Aug 2026 02:56:01 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64fdb1bad56b3078f91af8e94cd46b237810508a2f7d0efc91fddc9affac5788`  
		Last Modified: Tue, 04 Aug 2026 02:56:01 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8b7402fcc048ecc1b3332c973a3d7e5569abdc076a37732d647270b08befdbdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5121346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b2e41a1801a1df391e2f44e5a30443d8a1b50d421cc731acdfdd4d65a50b32`

```dockerfile
```

-	Layers:
	-	`sha256:186c1252ae4b5efd29d3e2405c45ae5b7b16cfe53c7342c67331f10d33a8f95e`  
		Last Modified: Tue, 04 Aug 2026 02:56:01 GMT  
		Size: 5.1 MB (5105356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adef49ff14a5d54342e9a62357a8f88c2add76ecdc41bed65109f03387699c4d`  
		Last Modified: Tue, 04 Aug 2026 02:56:01 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json
