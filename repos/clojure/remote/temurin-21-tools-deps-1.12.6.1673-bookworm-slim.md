## `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:5a29ceb19f0645cf0092e694d159dfe627630c85e62b3d78f262bcd9e6dd52f8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:aeae2777d983ea96fea6d7c3ee223abfd46f6bce5347097faa9fd15f23413ffe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.2 MB (255151046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75feaaba82e973f05161c0c4699c3581b4f4bfa55541de31d171cbcf07262bbd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:13:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:13:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:13:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:13:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:13:16 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:13:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:13:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:13:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:13:33 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:13:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1dc1c9ca39ecd490464dd76dfa2b3eeaa690063b2b7163e5fc806bfae4a481`  
		Last Modified: Tue, 06 Oct 2026 02:13:55 GMT  
		Size: 158.1 MB (158117502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97aa2707f7da4075a7cb1ff20a831eb49422326b0b353a1bafc1072f4c9f75c7`  
		Last Modified: Tue, 06 Oct 2026 02:13:53 GMT  
		Size: 68.8 MB (68783179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de2e5f54cc43507388f713692d99719e6e3d785b8c77601ecbe43ebbcfbebb6c`  
		Last Modified: Tue, 06 Oct 2026 02:13:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7794ccab1736dce60ff6419b44823bf69c261e73bf0b0d96a6d2136c5c716571`  
		Last Modified: Tue, 06 Oct 2026 02:13:51 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f480cc78bc664eb5b810b2af1e89da9fb9054cbfd0d4dd1a38ae5a2add31f3ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25173297c9d6d9bf6a3f2bb3b60082c5598667e7f996e91a939c16d45b46c1a8`

```dockerfile
```

-	Layers:
	-	`sha256:4b390cdc7d198188604691e2c5358ec88ff170e9fb35772d98d106c843f7fb3b`  
		Last Modified: Tue, 06 Oct 2026 02:13:51 GMT  
		Size: 5.1 MB (5121160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7be85f5ea3002a6fdab60fd1a051b29f8d759d25d312b7d75e2a92d8bf8dd27`  
		Last Modified: Tue, 06 Oct 2026 02:13:50 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:48dfc33d1e3098a27fffe67c1f67d25813be1ee05ccf256b0adc5c9560eaa391
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.3 MB (253270459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c29ead10a95b973b78cc2d820dbdce98c1439ec5548dd30cb88666dc13a09584`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:18:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:18:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:18:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:18:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:18:57 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:19:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:19:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:19:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:19:14 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:19:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fe492f4d8547d67d8bb9f25a02b7580642cfcf7838a9751247c9cfca4ed222`  
		Last Modified: Tue, 06 Oct 2026 02:19:37 GMT  
		Size: 156.4 MB (156400657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73a1b99b27c6ce8cbc2f7941c72bde64584d7493d35555dca6a523e6b96f779d`  
		Last Modified: Tue, 06 Oct 2026 02:19:35 GMT  
		Size: 68.7 MB (68731584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79426675ceac44edb0c284f66289c77450b1b0d499018c1fbff4e77fbdae604`  
		Last Modified: Tue, 06 Oct 2026 02:19:33 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20df010974a76ab5e6a0aa222f9c918aecfb1ebc1be37356ba7cd9c6e7e10150`  
		Last Modified: Tue, 06 Oct 2026 02:19:33 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0b57dc7e0447736c99de8fff709abb164f79181e9bb14d32e5047f2bbfdbb948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5143027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a602e9478f9a15d7540f40252f9b0e31280af1d93ea96fbcd211571a5f820e1`

```dockerfile
```

-	Layers:
	-	`sha256:0de8755a0f087be87499ea28e33106439db89cb1962d16597a3a087710435c67`  
		Last Modified: Tue, 06 Oct 2026 02:19:33 GMT  
		Size: 5.1 MB (5126921 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9088b9f393c33bb9f0f86152cce56bebf3dd84d559c6b30a2edecb89bdfc1510`  
		Last Modified: Tue, 06 Oct 2026 02:19:32 GMT  
		Size: 16.1 KB (16106 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8cc5da9ad01ba1c5930f7c0871c54cdf78d002725f76e1349d652021db67e435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.1 MB (265142844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951de567bc0cf1227ce219b54640a778938e3784407235fd73e04d229da37c5b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:17:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:17:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:17:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:17:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 10:17:48 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:29:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 10:29:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 10:29:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:29:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:29:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb11497786ec274381b07071fc31623f952946862f1a8776f0627ec34640565`  
		Last Modified: Tue, 06 Oct 2026 10:22:39 GMT  
		Size: 158.3 MB (158282661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8fd058c1415698eb5dd07e3230e5ad03a679ebedeee9cfd804592d352f60013`  
		Last Modified: Tue, 06 Oct 2026 10:30:13 GMT  
		Size: 74.8 MB (74766706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac2b77451e095398e7f0780701c70c73712f77da9ffdfbfc29f30dac0ae06327`  
		Last Modified: Tue, 06 Oct 2026 10:30:10 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25df23888be79f9d0dcf3adfbd446c82f25bbcb59e6d2a1e6011bece27c7984`  
		Last Modified: Tue, 06 Oct 2026 10:30:10 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c31a5ada42e17244b43ca2b90d0f411af7dfd143010847c9871f13615a6e50b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5142356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f8bc269b54116255548e11f3fbc7a088d448da93e3840cfd4ecefa90370756b`

```dockerfile
```

-	Layers:
	-	`sha256:02a64fcb7212272d8cdca3f877f34df5d470b205d10a86ffb0bbecee286522fe`  
		Last Modified: Tue, 06 Oct 2026 10:30:11 GMT  
		Size: 5.1 MB (5126318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92f78756a0070e828a3b30536f34899f02425db51d267981a852d82673579f56`  
		Last Modified: Tue, 06 Oct 2026 10:30:10 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
