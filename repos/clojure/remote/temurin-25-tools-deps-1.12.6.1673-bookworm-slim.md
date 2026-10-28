## `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:27222a146e3f2d9ea4117fb67c44ef47a4d6242d034e94a1a6e5568316d994b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:213e9ecd14bcd627624d20b885060c764403e99c583f90944860ca28d85fe217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.4 MB (187374630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11732c99420e180fc251f1167996fd3a4455dd34008e4dc3f46f7c05cd8cd33c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:14:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:14:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:14:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:14:17 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:14:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:14:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:14:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:14:31 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:14:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815997d38ddf0cacb9e355b4545e02c315bba56e6df38fe7edc72ebabe95cafe`  
		Last Modified: Wed, 28 Oct 2026 02:14:52 GMT  
		Size: 92.6 MB (92618070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e99566772ea98db0e69142d0dfdeb11b05c191d25acb69be7d35bb4b0ce0395`  
		Last Modified: Wed, 28 Oct 2026 02:14:52 GMT  
		Size: 66.5 MB (66508081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb2ff56f032bdc714854b444e1f02b0b7218a9d0f903c44b2e12328681fdb64`  
		Last Modified: Wed, 28 Oct 2026 02:14:49 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:665ed1a4e5d9cae16b93359fd6aff753c2287adbf8b88943bf5300bf77529ab0`  
		Last Modified: Wed, 28 Oct 2026 02:14:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e96f2fe854a6617db5da8f34f0d43f8ce53e8258bc224d6d2c3fdd9869f7a791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5102812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecdf970b6d2d3c48aaf9b55fae693809ab5204b5bed6dec751c9d5d0ccba1614`

```dockerfile
```

-	Layers:
	-	`sha256:2350a7df412fab51943931c4057fced461757882c80bf014bc43386cae72b46e`  
		Last Modified: Wed, 28 Oct 2026 02:14:49 GMT  
		Size: 5.1 MB (5086133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:600aecb3b2777601d50562a635a0fb54bb373459a30de75a96f2fea76e57ead9`  
		Last Modified: Wed, 28 Oct 2026 02:14:49 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5a5b89c0be447ce290f00d9bbb9c22b708aa3b8317b9c7fcef298e11491293e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186168860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd01178128bd09ed9853d001b445a3ed80ac9bf5c330a134cc508edf8a82dfa7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:21:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:21:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:21:26 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:21:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:21:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:21:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:21:40 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:21:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4eb55673ea28f8cbc397854ad298783eeb41f3285b95132d1dd9a350178e044`  
		Last Modified: Wed, 28 Oct 2026 02:22:01 GMT  
		Size: 91.5 MB (91528851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76df5697366d173dabde6afde2c9569f3bf7391b1f9676695ce93a4f6e235e2`  
		Last Modified: Wed, 28 Oct 2026 02:22:00 GMT  
		Size: 66.5 MB (66501016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1780d6aa8214637b941e1e2ef7bc9086861158ac6975a49e544b122adee74e06`  
		Last Modified: Wed, 28 Oct 2026 02:21:58 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f638af3aeebb210770565e746c5849f8ff742f55a9c585c4a661e29ff2314a`  
		Last Modified: Wed, 28 Oct 2026 02:21:57 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:aac3b36a325919b77f3f1607174ee7d0469b81d6735ee29a9cf27d3767f303d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5108736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d87279268f4e7de1253242cdb794d6af18aa5ea6a7196e86bbcaefb4fdfea5`

```dockerfile
```

-	Layers:
	-	`sha256:37a17ac1547a27507ac93216958dca25947591f875ecdf4bea97a3fa46c28f9b`  
		Last Modified: Wed, 28 Oct 2026 02:21:58 GMT  
		Size: 5.1 MB (5091915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7513dde8841cd1f04ac29a686a3ec536855439f664bea6dfb01357950e004213`  
		Last Modified: Wed, 28 Oct 2026 02:21:57 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:df0f80b32bb39a63c7fed3280f7311876b9f7dbb6228b06eebb64a9f781d92ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.7 MB (195683834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18b4f2d7235f742492c2a9bfc16a89809c5154adc6400357a1cf8ffb4d16b664`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 10:15:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:15:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:15:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:15:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 10:15:29 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:22:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 10:22:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 10:22:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:22:50 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:22:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ac877ccfb96d64c76c84a4224172b5fef841779b37022010cb24b2d959b092`  
		Last Modified: Wed, 28 Oct 2026 10:19:10 GMT  
		Size: 91.3 MB (91256235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b959ea27e104f157fca0ffa003a4bca59090bd67f5669635361ca8f2c6807c3`  
		Last Modified: Wed, 28 Oct 2026 10:23:25 GMT  
		Size: 72.3 MB (72333715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2a57e61056ad05f9949675e3a1bb8b61920f4bfc956f9bff4efe35e844946e`  
		Last Modified: Wed, 28 Oct 2026 10:23:23 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e73f6f38490def14dc14bd7e1bbbc3fb6c29e2fb8e2fa10ae9c6acb694261d53`  
		Last Modified: Wed, 28 Oct 2026 10:23:23 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a49c0e2561c35395e24cf8828b436d851cef2a05833376104f35968275885cf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5091353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d60f99835e12cf2e151daa40d9b94e53a25558771c7d8694ba0453d5dbb54510`

```dockerfile
```

-	Layers:
	-	`sha256:85b64cc06ad8005375d95d99cbe167cab8a33123f17ac49eae74926f45573ba8`  
		Last Modified: Wed, 28 Oct 2026 10:23:23 GMT  
		Size: 5.1 MB (5074615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b73bbaf0db60e3a2d92115d3292c68352e020aaaa3819e9b0e2649d144dbdac`  
		Last Modified: Wed, 28 Oct 2026 10:23:23 GMT  
		Size: 16.7 KB (16738 bytes)  
		MIME: application/vnd.in-toto+json
