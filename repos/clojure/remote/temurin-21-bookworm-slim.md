## `clojure:temurin-21-bookworm-slim`

```console
$ docker pull clojure@sha256:227c42fcc6d17b1a7597d9088f6309a351f5e94a43fed55abfad3de9a7d86e89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-bookworm-slim` - linux; amd64

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

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-21-bookworm-slim` - linux; arm64 variant v8

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

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-21-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:6b756dd02a3fedb1123da4db5aa41fa375e22e3caa6ad8717f9da6bd940311ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262865206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eba6ea3f02ad94f676c12e1d24b8035327c66bb63b8966b8e57fe371ed31812b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 04:54:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:54:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:54:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:54:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 04:54:09 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:11:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:11:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:11:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:11:16 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:11:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8675132cc1928675d26590aa9e0b63693254469cb35208eefcc74b4ea68a6b3e`  
		Last Modified: Sat, 26 Sep 2026 04:57:04 GMT  
		Size: 158.3 MB (158282664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4956c5ba53b5b62fbecb84f772633650236e9702d806193faf709c9b828832a`  
		Last Modified: Sat, 26 Sep 2026 05:11:51 GMT  
		Size: 72.5 MB (72497936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bdf7f6af0503ec58ff5a61c0b420464d087384e00f29250e0bae12c00d4689`  
		Last Modified: Sat, 26 Sep 2026 05:11:48 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a5fdd403fbf01ee173e089516180c477060635849ed3ea13de2b041dbd2284`  
		Last Modified: Sat, 26 Sep 2026 05:11:48 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e4e0a23aef0b2d024aedbc578bf6c81cdf9067d7221d6b3fd75669ad9949dff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5142356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1149171eb7cf9f23c24a7ed543be90f985b09a153e46eb946962f05b2764405`

```dockerfile
```

-	Layers:
	-	`sha256:af35aa56f48e65cbac2d3598f3d5d9b8c5afca5cc2f0514bcf8ec479248d5bc3`  
		Last Modified: Fri, 02 Oct 2026 08:21:13 GMT  
		Size: 5.1 MB (5126318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a41b2cc50416360299a7c774890c87c3498ee07e9829f17d79dfcd048f1368ce`  
		Last Modified: Fri, 02 Oct 2026 08:21:13 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
