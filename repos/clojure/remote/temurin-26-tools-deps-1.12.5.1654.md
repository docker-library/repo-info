## `clojure:temurin-26-tools-deps-1.12.5.1654`

```console
$ docker pull clojure@sha256:1233087f8075bab42ca206106fa17e85c7e3a120c65e38aef51d452e72979642
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

### `clojure:temurin-26-tools-deps-1.12.5.1654` - linux; amd64

```console
$ docker pull clojure@sha256:d4cd8a357dcafd66b6e87237a610ad1977afab0adb248bfae8ac137e6467574a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221152732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a3240487b6ed6ed33ce22e8d66e53c75f8d96b6e30ad76c94c417cf38a362c1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:56:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:56:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:56:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:56:55 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:56:55 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:57:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:57:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:08 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313b1fdd40522dd7a6107c775a9c47cddaff94f5d813356a21f0643e87b10e74`  
		Last Modified: Thu, 02 Jul 2026 05:57:31 GMT  
		Size: 94.5 MB (94524313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b29050389c1dcd5b60d23475c8c3b22972ad6df6224b2e60e050a507bf2a29`  
		Last Modified: Thu, 02 Jul 2026 05:57:30 GMT  
		Size: 78.1 MB (78125164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1e23c926ab51cab0c52bfd1b2d7679eda3eac8c0f969ac3219260458735008f`  
		Last Modified: Thu, 02 Jul 2026 05:57:27 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb646c96f4595bdb139b67c95c40a6fb8986c1b77223ac548cc37a0864807f8`  
		Last Modified: Thu, 02 Jul 2026 05:57:27 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654` - unknown; unknown

```console
$ docker pull clojure@sha256:a8ebf07646da925dee058c75c47dadb2a303801d7be26067dc5b0d68c4da4851
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7358317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1674efe22607abb125ec9e2e7258d5804c0f1bd4448d1b45cbb44cb4c7361da7`

```dockerfile
```

-	Layers:
	-	`sha256:3eaf1a23f5ac029d9afbcdab2f73896c4e45ec1fee884ab76bf7741975befe51`  
		Last Modified: Thu, 02 Jul 2026 05:57:28 GMT  
		Size: 7.3 MB (7341709 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab1e0b3ca3687809197f63b5255d01ee76c50d55de6924a1720d457b0febb12d`  
		Last Modified: Thu, 02 Jul 2026 05:57:27 GMT  
		Size: 16.6 KB (16608 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1654` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:92780765213843b3867d0c432e77f757d924ab195cd5bccf583db5b36a1994fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (220024194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a41207a659c4e388e3a59f5cb1b4a4a7aa6e53eb88e284338dc1089bb2acd147`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:56:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:56:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:56:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:56:59 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:56:59 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:57:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:57:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:14 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada160faa99b44876d1e06e6b31f2df7761b023dfa4d2b7cc0d080872fac8756`  
		Last Modified: Thu, 02 Jul 2026 05:57:37 GMT  
		Size: 93.5 MB (93504350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8859efdf9528c0de29a70a8f75ff201a81585ce73e1849d5eb8ed323b85f5b7`  
		Last Modified: Thu, 02 Jul 2026 05:57:37 GMT  
		Size: 78.1 MB (78129600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8133093b51ad81df46f289c57e81291ad6b3cf779a64677f42ff8bfc1d735b1`  
		Last Modified: Thu, 02 Jul 2026 05:57:34 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2b08f075489d633a752cf987fecd314ab66ea3378486ca58ae15fa8a33716d`  
		Last Modified: Thu, 02 Jul 2026 05:57:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654` - unknown; unknown

```console
$ docker pull clojure@sha256:8f60870a0ca9f3218813560315fb4d44639dca9fa0663bd7ae1ceb7596603a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7364244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1b75ca944c80b22b3c1925eb739405078597e3afe376e281f1dff7da1cadf8`

```dockerfile
```

-	Layers:
	-	`sha256:3f0a2667eb1005e224c9c280c5491ddf949e41f57d85a081732aaf4edebcea59`  
		Last Modified: Thu, 02 Jul 2026 05:57:34 GMT  
		Size: 7.3 MB (7347493 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:267340e59dee44aab2a4654a28073cdc0013d09b30736be4bc9ec597801e31e1`  
		Last Modified: Thu, 02 Jul 2026 05:57:34 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1654` - linux; ppc64le

```console
$ docker pull clojure@sha256:baf079a7636ab32307a0e18cc825892d4fe04a07da4a6fa151e9626bc0639c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230208747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbddbf4140f5bf011413fdffe229a8f0cda2a5e6542624886fe465a8c99ab0fe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:45:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:45:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:45:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:45:01 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:45:02 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:55:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:55:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:55:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:55:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:55:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa6bed2d17156130589e4befa6c04383771757ae9b6d7ae9400259ff714b55d`  
		Last Modified: Thu, 02 Jul 2026 07:48:28 GMT  
		Size: 93.9 MB (93902030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c296d754500ea88e0710c8bd9d205cd8834f827ed7cc213d9f16b90ef53ab29`  
		Last Modified: Thu, 02 Jul 2026 07:55:56 GMT  
		Size: 84.0 MB (83958826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b187f56022d4ec2bd5b02d0d795e948e3541504c77df8265e883f2fccabe94e`  
		Last Modified: Thu, 02 Jul 2026 07:55:53 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fe2a97312fc6751011ab2d12c2643e305636fadd8f50669aa9708a276a5bdb`  
		Last Modified: Thu, 02 Jul 2026 07:55:53 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654` - unknown; unknown

```console
$ docker pull clojure@sha256:409301312be20843c00e9ad089532e2c0f25b5be07528a69e4f2bb1d282f5fff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7347542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d40beaab665bc316ef8709787f8445334af719a7fb7dd8fdaa0b7d64bbfbe6`

```dockerfile
```

-	Layers:
	-	`sha256:095dc85581b627ddfeaf770ca1e5ca95a19047764a05651a03af4512a973c2b2`  
		Last Modified: Thu, 02 Jul 2026 07:55:54 GMT  
		Size: 7.3 MB (7330873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02e9d70735b1fc9a92e8151a5d2a29b590e9c71a850ecfa2664b7484d249a9e9`  
		Last Modified: Thu, 02 Jul 2026 07:55:53 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1654` - linux; s390x

```console
$ docker pull clojure@sha256:2e37ac7d9e2e1b59eca66a2d3d6d4e69cb54206324627012c5b79d65b74408a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.6 MB (214628897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d8cd15ee0a47985c3dea183e1b8e72ff83e4c1c8e03b487a3b410b83fb6674`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:02:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:02:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:02:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:02:51 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 06:02:51 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:03:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 06:03:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 06:03:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 06:03:05 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 06:03:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bdd2e9d83d68023204331dd445067114dbd3500d2d496368624fa7ef81743d4a`  
		Last Modified: Wed, 24 Jun 2026 00:27:09 GMT  
		Size: 47.2 MB (47161675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d08e4abda42c689941e78bb59156c324613fd53e62092dfc7363e0a093e3e2`  
		Last Modified: Thu, 02 Jul 2026 06:03:33 GMT  
		Size: 90.5 MB (90536929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af99f276b4560aebf0ee6519c312488fa43bf272fcec1d85a08386540ea17acc`  
		Last Modified: Thu, 02 Jul 2026 06:03:33 GMT  
		Size: 76.9 MB (76929252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf04f9ae3909dce83d4712fc9687d3e37efb9449ea8cedbd5b826814f4653b0`  
		Last Modified: Thu, 02 Jul 2026 06:03:31 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69adeea2b79bb211b16d998811d523e9374d1ab4c8493d60c91c7b55763d374f`  
		Last Modified: Thu, 02 Jul 2026 06:03:31 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654` - unknown; unknown

```console
$ docker pull clojure@sha256:0ecc7ae372bf0a4993340c443b595bfa98b2856edc0348dc9988ace267fc6c2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7334823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de20668006006c1e431159873cea88c09a3eb31ed7044c7b1dfc9a31a0071a9`

```dockerfile
```

-	Layers:
	-	`sha256:8a751849eda0d3b2cdf3778a7c64df8328d3b295e8f12f85bf93c24c25e7a421`  
		Last Modified: Thu, 02 Jul 2026 06:03:31 GMT  
		Size: 7.3 MB (7318214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba168013d881893b499a7b6cf4f6e880150dedb2ade6b1fd6962284a61bef24c`  
		Last Modified: Thu, 02 Jul 2026 06:03:31 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json
