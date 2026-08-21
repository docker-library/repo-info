## `clojure:temurin-17-bookworm-slim`

```console
$ docker pull clojure@sha256:0a0f412bc90c780c57af38fe61f626f3cd3ea2987532bc73c2fa7d46bcc8838a
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

### `clojure:temurin-17-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a328bc347f127f0359e9b181c557d88a1b1c29a88dd85c02e11a49e6777ade6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240738139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:185aad696827393c09ca1f755c1080c4f2185017da7876eb562f9c2fc3ff7339`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:14:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:14:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:14:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:14:58 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:14:58 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:15:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:15:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:15:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:15:10 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:15:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f832edf200f12ee38a4bb0bc9cb7c44ec4f918b5b96ef9251099cd7cb17ea3`  
		Last Modified: Fri, 21 Aug 2026 19:15:30 GMT  
		Size: 145.8 MB (145822643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ab7f824e0f9875408750977f037098806b7d1e3ac027d3e2f38428f327f960`  
		Last Modified: Fri, 21 Aug 2026 19:15:28 GMT  
		Size: 66.7 MB (66681865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758c2327caf2c8fba334a8cc4cbc534933fadb9623d64580703824a5185adfd9`  
		Last Modified: Fri, 21 Aug 2026 19:15:25 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9fede55de3cd9e35af18740ed6cd82021e2fae74a7462c0d589a4fcb47da2f8`  
		Last Modified: Fri, 21 Aug 2026 19:15:25 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b08160fbc7988f9f99c04b53f37658b97b4e09d7f2192ed366c50792df7d5ec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45be49f996dc7fc73ec3964135e786aa937534c4e34349889dc5dfd6858429b2`

```dockerfile
```

-	Layers:
	-	`sha256:da319616850c9226374e846fc1c5242fd7c9bb2bb9ff3e59c55fd7b894a4b3ab`  
		Last Modified: Fri, 21 Aug 2026 19:15:25 GMT  
		Size: 5.1 MB (5119236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe75b3f0eda835af65883d3aa8b31c5c46a062e518892acb412cf1240a1780be`  
		Last Modified: Fri, 21 Aug 2026 19:15:25 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:482300e9b56c4ea2b6a97a92833a8b30c006fdadd5d473639763475b5a05c03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239433899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12ec5e90bb9d067683e02e9c53801e48810e42deba8cdf47a570358683a7e478`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:04:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:04:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:04:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:04:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:04:04 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:04:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:04:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:04:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:04:19 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:04:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8390c3d7a36b778c8fe73fb25b219d53fde8dbe390b8b5525d7a72a71326a462`  
		Last Modified: Fri, 21 Aug 2026 19:04:42 GMT  
		Size: 144.6 MB (144647512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08e8da0c0d960c28f508e52d58b34b6e3300ee8937c80c98fa3a74ab6385b0dd`  
		Last Modified: Fri, 21 Aug 2026 19:04:41 GMT  
		Size: 66.7 MB (66668142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ea198b4a095709367a4f556b7b1417585a0465160dd2deab63b3d35b3c37d2c`  
		Last Modified: Fri, 21 Aug 2026 19:04:38 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7bf36af3821cd107c583872941fea7e54d663d0e3d7bb39c10f1d443989bcf1`  
		Last Modified: Fri, 21 Aug 2026 19:04:38 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4b107f4fc8efe4feb0c6a39162ae9a50192d63e817335e9b7cf9d7bb7e1af0ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94a0aa8e6855b787b0952ffae77c83ab2081c63be1591a01425408a60e3c5569`

```dockerfile
```

-	Layers:
	-	`sha256:6bfdeb9335f835f955f4c4cd973b7150a7c1517640b4867b51e19326694d8ecd`  
		Last Modified: Fri, 21 Aug 2026 19:04:38 GMT  
		Size: 5.1 MB (5124997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2489883d0d7c895b82bb95705a7bbe6b7678240a774127582a41d7b07ebbc88d`  
		Last Modified: Fri, 21 Aug 2026 19:04:37 GMT  
		Size: 16.1 KB (16107 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm-slim` - linux; ppc64le

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

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-17-bookworm-slim` - linux; s390x

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

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

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
