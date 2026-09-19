## `clojure:temurin-8-bookworm-slim`

```console
$ docker pull clojure@sha256:3cfc323efcf315de779c9e9bfdcde3a230a83363b99c3c5d6b93671fdd5343b0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:0290629da9563a8d994a61d5bdbf8c0c89ae19c0c7d7f53bae5ddad487871d32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150088441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2135e8e43f54b4edfe0fec32d1b772a557b07454b75d47a704c6d34e86ab88dc`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:12:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:12:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:12:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:12:18 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:12:18 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:12:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:12:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:12:33 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0803e7f05551b952e0d281c547160e50cd87310780a761c188ab2e05f1581088`  
		Last Modified: Sat, 19 Sep 2026 01:12:50 GMT  
		Size: 55.2 MB (55164378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a998ed1bd9ecfaad6c272419741b6658f7b6658b5c09acbf85173786eeb9f7`  
		Last Modified: Sat, 19 Sep 2026 01:12:51 GMT  
		Size: 66.7 MB (66684976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c72523b2a2fe2ced281b79c4be9e797f620704cee4a0f0b628b2731f7968362`  
		Last Modified: Sat, 19 Sep 2026 01:12:48 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8b3243b8c35203e2f4497ebc323888514fbc1a7f12e4a97fa2833d0198527fc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9cf087430abf3cf14d8a4fca40cdd8d587630c87733bda258ef345406388f94`

```dockerfile
```

-	Layers:
	-	`sha256:bba59d38c267ad79d921b0b66333cb346d2713b97b563ca3961268365edc42c5`  
		Last Modified: Sat, 19 Sep 2026 01:12:48 GMT  
		Size: 5.2 MB (5239662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24f846c01570f742873a04b59f401a60d1f3bba523019f8fd92cf7d5cb272653`  
		Last Modified: Sat, 19 Sep 2026 01:12:48 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5e54ade048fbb64176715b05c09f1d9bd9465fa56e4425c2c72264512407d460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.1 MB (149071174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f799ddcf2fca0255e173c0d8c000c9c648a26424eb2abfafccc462b20ec37b5c`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:19:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:19:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:19:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:19:56 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:20:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:20:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:20:10 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50738d9141dda2b4645cac9f58e830c97f174bc972e08a2e84c36c27ed639122`  
		Last Modified: Sat, 19 Sep 2026 01:20:27 GMT  
		Size: 54.3 MB (54262769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f011e7f81896f2f7225e52e464d2b2ec279801932ddb69a3aa0123af68eadb5`  
		Last Modified: Sat, 19 Sep 2026 01:20:27 GMT  
		Size: 66.7 MB (66684081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c799e724bd677f6b7b115962f9a55fb1f70d2768992e69855787495045dd628e`  
		Last Modified: Sat, 19 Sep 2026 01:20:25 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e3e505c0489a87d6405e3094fa40ca5bc655f7aea1ac1bd670a7c3a0e7965870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5260643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39055a0b5ee41d38e9f7a181da28d2cf3815f6da0f62f42c776577e99a67f1b5`

```dockerfile
```

-	Layers:
	-	`sha256:d1ffccae2a76e5ed33c295a1bd6fe214d33509850822b50c8471ac449fea250a`  
		Last Modified: Sat, 19 Sep 2026 01:20:25 GMT  
		Size: 5.2 MB (5246123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e88ff5878655628263900cd91377bef8cb89cb2e3a5686e8e1b8ad070ca974e`  
		Last Modified: Sat, 19 Sep 2026 01:20:25 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:131f007c4e46d2ea0bd82177d791e83b70ee25ff33688a433e4aab5118665efd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.3 MB (157254026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c8faf58e3f9cfa3554b0efcd74e584380fbbf45d03878aa3baaf2513054fb6b`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:35:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:35:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:35:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:35:11 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:35:11 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:35:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 07:35:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 07:35:40 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:452a5786e1288207b49fb0e55b83e788de0cbecc006fd48385dc8890100805d1`  
		Last Modified: Sat, 19 Sep 2026 07:36:12 GMT  
		Size: 52.7 MB (52670662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b2dd44bb96bc2561c8f7ce56da82404b342aae154a1605a3e745434e1bc4a6`  
		Last Modified: Sat, 19 Sep 2026 07:36:12 GMT  
		Size: 72.5 MB (72499154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e60d8fb1bfa39d65ff180df05ea43e976566c8cf5067c31236411c3a8a94057`  
		Last Modified: Sat, 19 Sep 2026 07:36:10 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:de958077babb296385b8fdc3b3468cb56252d20b89bf724e7c5844f180a6d5d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8296d8e6578bf1c18bed65671c89878ecc39ef2549175d57e5152384feb6e1a6`

```dockerfile
```

-	Layers:
	-	`sha256:f1444890f3ea05f05de38aeec14869d02d9d7314b4da352808059c86646ef736`  
		Last Modified: Sat, 19 Sep 2026 07:36:10 GMT  
		Size: 5.2 MB (5245415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c4b4feb116bce97cd747597611522fe8b5bac33242d3ba87f85f778b7f083ce`  
		Last Modified: Sat, 19 Sep 2026 07:36:09 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
