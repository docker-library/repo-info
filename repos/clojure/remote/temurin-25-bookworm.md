## `clojure:temurin-25-bookworm`

```console
$ docker pull clojure@sha256:c78ff0e1a9db1ab89c8613b654a31334f3925f66338f3595e5df03406bc21d7d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:fbf184cdffca434eab28e4e797014c7f026b2b7e11165853575839f960ac4ce6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219124685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dbeb234bf2b0b3a1b2d8f4a33cd4745cafdebaaf0a9443282f3d22d53ff0cad`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:34:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:34:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:34:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:34:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:34:08 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:42:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:42:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:42:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:42:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:42:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7dd97ae3618ee76e211762883f53eae7d0e353fd3c3d8e7340d63cc86c5689`  
		Last Modified: Tue, 10 Nov 2026 00:35:56 GMT  
		Size: 92.6 MB (92598904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7058f28207f9afe422116f34673b1820c54f74ff3acca0aebf320997c8b39091`  
		Last Modified: Tue, 10 Nov 2026 00:42:57 GMT  
		Size: 78.0 MB (77997752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e5438b348d8ff643c987468e1ebc719f5ba03843bc2be40511a0869c33b36a`  
		Last Modified: Tue, 10 Nov 2026 00:42:55 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af85f768706e6948b1a42909a8a5d322714d3e015578c7e342488d9851038c4`  
		Last Modified: Tue, 10 Nov 2026 00:42:55 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4e0599d381d5bef70cac40fc36ff0c797fa036f5261ac1eab67114baa215b4b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7365954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c6572cd7bca2388d096b884b029673cbcbc6aec928540995851251696fadda3`

```dockerfile
```

-	Layers:
	-	`sha256:25e142f3c02a1fc633ab026851aa7991edb0ed45d1cc21221493a8543588c418`  
		Last Modified: Tue, 10 Nov 2026 00:42:55 GMT  
		Size: 7.3 MB (7348029 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da4b550f7bb4ce1017260917e6d05c7492874f8f2f77edb5b44465e1674c2577`  
		Last Modified: Tue, 10 Nov 2026 00:42:55 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dc797f23f5d74017015620e29569f689d7bf8b1616a9f96603644f476383e6af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217939139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ade4caefc37e8e73bd5e6e4d37201bc6679d5ae7c7dcfa43df53110c36b87445`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:41:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:41:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:41:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:41:54 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:41:54 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:42:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:42:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:42:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:42:10 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:42:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:784ed7d52710cd5b9d61a15aca88682b6f50d63292dfd06d33a450b7ff6a8eeb`  
		Last Modified: Tue, 10 Nov 2026 00:42:32 GMT  
		Size: 91.5 MB (91525582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46ae35667f8b1038b4fb3cd632c553a1b970a51b138de5a00f59cfb1ca915ac`  
		Last Modified: Tue, 10 Nov 2026 00:42:32 GMT  
		Size: 78.0 MB (77999559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefad13d717daa571f274b796c79293a38b4017cbff8bc2ddab0fa7d6e6171dc`  
		Last Modified: Tue, 10 Nov 2026 00:42:29 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b53f91da7ad332f67d79b9ff843642a985de97dcae353a71d6c1fa825030ea9`  
		Last Modified: Tue, 10 Nov 2026 00:42:29 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:551eea95c2dd03b53206c5431f55f09a9cf3614b5447b2aade2abb83da50868a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7371976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab89ffb226427da4e9c45cc02d743f2db6da2ab9aa30383f27fdd49a6d5e9f86`

```dockerfile
```

-	Layers:
	-	`sha256:7b791ec4d05a3dfa0d5e57ffe7312b4194b23c813c6dfe6cc25cd927df645a14`  
		Last Modified: Tue, 10 Nov 2026 00:42:29 GMT  
		Size: 7.4 MB (7353861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71b07f31b970fb4db4bde4edf8be3ddaa2cf5b5d7729d56e916f5a7997592ff6`  
		Last Modified: Tue, 10 Nov 2026 00:42:29 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:a81692fccd0557d055180276ade63201e73d2fe034e68c03b6c02b6e3417c07b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.3 MB (226305674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8232a5cc45087e960bf5a25d2050842d9921aaf94912c99555304104dd444587`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:18:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:18:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:18:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:18:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:18:45 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:08:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 16:08:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:46:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:46:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:46:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e811e2ed4773087153cb51d918d4412ad6aae87e34a833e2a78b59926760328`  
		Last Modified: Thu, 05 Nov 2026 15:23:45 GMT  
		Size: 90.1 MB (90111651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a436b06d1590db390b115076554c46d228d6230d16d86f12408fb986792f0371`  
		Last Modified: Thu, 05 Nov 2026 16:09:22 GMT  
		Size: 83.8 MB (83823859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ebf3ff546b6f4c6b45062a0de7f11eae8b77bd56e6f9be8d2a523757132ff8d`  
		Last Modified: Thu, 05 Nov 2026 16:09:20 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5271d7c6e01f31effc3ea958b0b23ec1762613f766ce531b85457a63180511d`  
		Last Modified: Tue, 10 Nov 2026 02:47:00 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:9d5b5abd80f98a49028a4ef27febd0d98d0c1085daab584713933af852bd9bf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b765b5f0a4eabc9fc3eb943564e346b4364af3e0c0756257975873735dca30cc`

```dockerfile
```

-	Layers:
	-	`sha256:7a3227382e834906c681d6ed4d6f15fe92c00de5018e4efd04adbc79bce10d1b`  
		Last Modified: Tue, 10 Nov 2026 02:47:00 GMT  
		Size: 7.3 MB (7334728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f9bfbc9f450bdadb44051e40d1181e94310475e5be4880da7c62bf7d4c44999`  
		Last Modified: Tue, 10 Nov 2026 02:47:00 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json
