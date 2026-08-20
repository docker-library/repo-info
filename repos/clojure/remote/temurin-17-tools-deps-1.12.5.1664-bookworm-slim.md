## `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim`

```console
$ docker pull clojure@sha256:864904da9e862284165154b9861986c4191b908e6e86b6f09077a7d803c9e06f
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
$ docker pull clojure@sha256:9cb40bb019a9ae8c4b4e1b58bf42eb5bbcd0376405d9fa39cd95e4f025e2ab30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240821167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b286c73cc33fd28c7adccd9a4fd6fc55a29ae6e143b2cc0d41d46347cfb09a17`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:44:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:44:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:44:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:44:25 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:44:26 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:44:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:44:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:44:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:44:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:44:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb1a773f7e5e54d49e0f2627e9faf9b1dcada9b981b5e668538883ce3182262`  
		Last Modified: Tue, 18 Aug 2026 20:45:02 GMT  
		Size: 145.9 MB (145905485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:800de37b4823dcc401fc465857e4630781a754fcb028582cbda0ee8d844d6dd3`  
		Last Modified: Tue, 18 Aug 2026 20:45:01 GMT  
		Size: 66.7 MB (66682053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b1e9273a9493fccbfcfa3004ec060e2aa05bcdb2a2b940edb949d6a10d04cb`  
		Last Modified: Tue, 18 Aug 2026 20:44:58 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3e0c2f3e7238df7811a6cbe7e3a5ddbd0adfc1ac78e33c36bb911df08657559`  
		Last Modified: Tue, 18 Aug 2026 20:44:58 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b5cc7c2031c08989686300f87e5c2670f2114f05cddf5ba3857cc486e1493207
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6ba280c364a22106793bff3a44693741189bdfc4460156912f843a694b14a4f`

```dockerfile
```

-	Layers:
	-	`sha256:479498c358b18906b35fed3a1138f53b0a61bb3aa73d445e452058cdc1ab6ffd`  
		Last Modified: Tue, 18 Aug 2026 20:44:58 GMT  
		Size: 5.1 MB (5119238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08388e50f32f90a0867826959453b377c58177ff08fa78eaf7cf24c5f7452ecb`  
		Last Modified: Tue, 18 Aug 2026 20:44:57 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dc43f772a7569e5458a1f68b32e2602450094013b271c5ea12bfc2dd4b9b1767
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.5 MB (239511297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4bcce31c8d1e7350baa19ecf26363b913106d78d8a608a7ef026fdeb6824193`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:44:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:44:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:44:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:44:52 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:44:52 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:45:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:45:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:45:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:45:06 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:45:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b9d73b59c77f57a1c473b4df2e663f58b534c498d996e795417b7a9da74b38`  
		Last Modified: Tue, 18 Aug 2026 20:45:33 GMT  
		Size: 144.7 MB (144724297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e801d83f8534a11d32aa8720663102bdaf4852703d2cbfb84831eed3e1414674`  
		Last Modified: Tue, 18 Aug 2026 20:45:29 GMT  
		Size: 66.7 MB (66668757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719bd65b654680a4c8ad3f328665833f8aa91fed6807a817bf1674b50f3e4e1e`  
		Last Modified: Tue, 18 Aug 2026 20:45:24 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee0dc9346ae421ea0ad895c4f525dc27c026e27c65d97ebe15ae62aa50608cd`  
		Last Modified: Tue, 18 Aug 2026 20:45:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6edaafa15fa872a7b0db7d2a4f9943a7b85668373b805110620d1ebca67ca75c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:511fc8e28c6bdcd3dfc548a1f27779fb78b5443c0b477679223dd1070c69611b`

```dockerfile
```

-	Layers:
	-	`sha256:17441fc9c6be8f241121392a0041d2b164d7fe91d0790d3c9252857c4fe940cf`  
		Last Modified: Tue, 18 Aug 2026 20:45:24 GMT  
		Size: 5.1 MB (5124999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdfc47a9749c684876114e99e849e550795268f447bc0c8e018d85ee7f348488`  
		Last Modified: Tue, 18 Aug 2026 20:45:24 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:64aa5a02c32b6c0f2b9afc82dafe2f0e6cc6e5f5e026bdbb3a015a26540c7116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250340686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896561eeed8400fa4a0c4509f9f567a662313ff3a970871708a2549d88857870`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 01:05:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:05:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:05:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:05:31 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 01:05:31 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:14:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:14:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:14:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:14:43 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:14:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4bedcc8a3b50b6aff0ce605bbd4f68d2774184b9b2dbd0c3c8dd4596ad66971`  
		Last Modified: Thu, 20 Aug 2026 01:08:36 GMT  
		Size: 145.8 MB (145766232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae909d7708e806331d5089593b932197ad9283c2a58e59117c752f8ea695ca6`  
		Last Modified: Thu, 20 Aug 2026 01:15:17 GMT  
		Size: 72.5 MB (72497089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:843d2140d542dea49e9949f39d7f858d0570120c7ffe7a79bad69ca6a8c755c5`  
		Last Modified: Thu, 20 Aug 2026 01:15:15 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ad49b8f34acfb1f7b31efd749fceae30281dd37b9eedc8a561091b2da010fe`  
		Last Modified: Thu, 20 Aug 2026 01:15:15 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a286aedfdbde77710f3f3cfd2adcbdfaad83ca2f5ba225d2d2525062c593d7d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5140434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4e2e42bb00d05817626d1519715d78dd8f2cad59e6c50fb23655cec68c1e30a`

```dockerfile
```

-	Layers:
	-	`sha256:bb0b8f17d763d46752aec3bec89b1cd6b940ce2d6954834f2b2dd63a59f1324e`  
		Last Modified: Thu, 20 Aug 2026 01:15:15 GMT  
		Size: 5.1 MB (5124396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da49a8d7af63ba6e586cb4868a5bfb38a9c3421c0f3bfa514461988518f1cb05`  
		Last Modified: Thu, 20 Aug 2026 01:15:15 GMT  
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
