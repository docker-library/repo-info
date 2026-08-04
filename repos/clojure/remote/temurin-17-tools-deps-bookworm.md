## `clojure:temurin-17-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:c821e4a885e257af99638b5a1f7ef0c9d0c5bb721fec81c3810879a25ac4df2d
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

### `clojure:temurin-17-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:a02174e337d76315df6caa6a00a1ebcfe2d2605c413ae6085eeb41eb621e2cd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272548640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50a5350466e3d498d7d37cedc0836bcb591f6b1d4a1604facc034e2cd7f59fe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:49:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:49:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:49:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:49:54 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:49:54 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:50:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:50:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:50:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:50:08 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:50:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f75f6964ca6ac8972d5160ee9f11bbad0c8cdd6c790e2ee2b7f858b25753b30`  
		Last Modified: Tue, 04 Aug 2026 02:50:31 GMT  
		Size: 145.9 MB (145905437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe2964c75bc1611752fefdcd3a18dbb5ae1e8d5676a31f41a46c855d565ec600`  
		Last Modified: Tue, 04 Aug 2026 02:50:30 GMT  
		Size: 78.1 MB (78144759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d49ffbeac5a510d5f8ec922c73453cfa6d75a4da43f7c51e6cc99cce9375e334`  
		Last Modified: Tue, 04 Aug 2026 02:50:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dee2c0349518a23a27f9b78531fb094840b03a546f9c49800e4ea8367063ae1`  
		Last Modified: Tue, 04 Aug 2026 02:50:27 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:47ed0b356332d034b27380ea3ba6d21753cd2004beca761c0499a31a9071116a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7392101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b34b65f2c70ccbb040e0e69d23531775576ee0d45c8ec977981b2055c4c61923`

```dockerfile
```

-	Layers:
	-	`sha256:57d8590186ddccb27307dbeb171035657f583d2aa85269b5c1b35f686ea58a2d`  
		Last Modified: Tue, 04 Aug 2026 02:50:28 GMT  
		Size: 7.4 MB (7376170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37ef59d32b4bb7cf63ef0216a3a8a5e2bcf64170fe72bb8d079ad89852fe9133`  
		Last Modified: Tue, 04 Aug 2026 02:50:27 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:836d1f6adc677c80d954ab490a7e2b6a9dd0cc29f86781c6a422634e530e6881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271237973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:118259b572844372b5a07cf6c15b666fb4cc3bb40bfb841a526d8eeeaf4096be`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:50:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:50:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:50:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:50:10 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:50:10 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:50:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:50:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:50:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:50:25 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:50:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f209c5a1b5e94228bb1e2eec2eadfd8a6216532f78fc9c0b1b2a216cf7a34b3`  
		Last Modified: Tue, 04 Aug 2026 02:50:50 GMT  
		Size: 144.7 MB (144724288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7873ee01833aeca5f9833d2c617f723aa0c2c880da3491919bbe522a350f8eb7`  
		Last Modified: Tue, 04 Aug 2026 02:50:48 GMT  
		Size: 78.1 MB (78128956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b62c97d0915a815807c822533234b09a9f1b3002d3862667f7928df2f22cb73`  
		Last Modified: Tue, 04 Aug 2026 02:50:45 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bfe4e74d1b799ef3ba043e3b0a6f2775f1b148864f513d920b56c80e30f21b`  
		Last Modified: Tue, 04 Aug 2026 02:50:45 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:168fb3082684a85c36f1d6b051dd150d5f81427267813293432a748c4243ee82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:716482b96070696b72dc4ce662e2ef244fe5e0011154bd7dbf7499042448f929`

```dockerfile
```

-	Layers:
	-	`sha256:4ca4acb54a832ab310ff71a23a3e0aa5fdd07862861a94f7d1b7d9d35797d14b`  
		Last Modified: Tue, 04 Aug 2026 02:50:45 GMT  
		Size: 7.4 MB (7381933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d225ed158008da41a7b8bc2c7815786c1c1cddd869858e70c449c87c881c2fe`  
		Last Modified: Tue, 04 Aug 2026 02:50:45 GMT  
		Size: 16.0 KB (16049 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:a53df608ebdba352ff0bc864226a4ef5ba379217dd468b061c63859ad75a7a5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282082663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57933d9cdd363fa1aafe548a09ac223da4a12fd32e03ad7152a7f9490003a01d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 05:06:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 05:06:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 05:06:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 05:06:40 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 05:06:40 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:19:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 05:19:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 05:19:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 05:19:03 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 05:19:03 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e7ace968947d768b452a44e1b13e936fbcbda6d9942d4f5035ce372818f5205`  
		Last Modified: Tue, 04 Aug 2026 05:09:52 GMT  
		Size: 145.8 MB (145766103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293444274172fc9d39e2d2bfb780a4b3ce5855222b56411f2a8c765079ed89e0`  
		Last Modified: Tue, 04 Aug 2026 05:19:42 GMT  
		Size: 84.0 MB (83973683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8036f1a16207808d8e0f154752e8de2084f7f276600106b988396e763fc0e750`  
		Last Modified: Tue, 04 Aug 2026 05:19:40 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f112c2cf5435f5eae8c373b4c62cea15ecf5399a231c4878641155e4a83f49`  
		Last Modified: Tue, 04 Aug 2026 05:19:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:334d725f3c541fa3bb71f9ba954858d2f121f614f26c460c741f0078ea95a01c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ead81b7338db1dbf0acd041429fd8575fe27b6672616dafe8f011b08b3ecdb4a`

```dockerfile
```

-	Layers:
	-	`sha256:ac3ce10e59130279076cb5123b13680d78b9e27282a4de04882b9244efce6e6a`  
		Last Modified: Tue, 04 Aug 2026 05:19:40 GMT  
		Size: 7.4 MB (7381386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ebe77465fe73e7acec5192c866f553aeb03111e4b34326e65e21274723849bd`  
		Last Modified: Tue, 04 Aug 2026 05:19:40 GMT  
		Size: 16.0 KB (15979 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:bfcd0c16d5a90886e999f94a06b177b0e03be7b2132f5628230c8f00eab96daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (260005284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:355b290e1957c6191b81e5bb3376af7bb4305ec2b8125d116abc49a98a36abd4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:54:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:54:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:54:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:54:52 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:54:52 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:55:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:55:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:55:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:55:06 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:55:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672cfd80b2de9617a2807862b99a35247a3554b24a104ff21c4f4aab84991079`  
		Last Modified: Tue, 04 Aug 2026 02:55:36 GMT  
		Size: 135.9 MB (135910420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e09f1300f82a0c031d26b24874334025950e626ce5f55301e60a02fdec63267`  
		Last Modified: Tue, 04 Aug 2026 02:55:35 GMT  
		Size: 76.9 MB (76936543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75466306a78aefde637270a1e67569574cc485dcbe7b3da721370c0ac7d221b`  
		Last Modified: Tue, 04 Aug 2026 02:55:33 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9f2119ee928bf31b98f4191d1a18f0c88ed79258c64618951e10fdaf59fddf2`  
		Last Modified: Tue, 04 Aug 2026 02:55:33 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b339daa609b75a55d067476d44619f812d00b542348e302afb9825ba45ee8040
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7383420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4e9820616567c0a84c3a77001b1e6e91eb98c6adbff039b35aad4fce0765c7`

```dockerfile
```

-	Layers:
	-	`sha256:de8ea0eef1f7d5296073f25190b396c6822ec10d7e2ea8d1c26ca40ce3ec9620`  
		Last Modified: Tue, 04 Aug 2026 02:55:33 GMT  
		Size: 7.4 MB (7367489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b952204e8f0ae27c5888a602be355bf08318575a90b4d1ac68ce0b043536e0f`  
		Last Modified: Tue, 04 Aug 2026 02:55:33 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json
