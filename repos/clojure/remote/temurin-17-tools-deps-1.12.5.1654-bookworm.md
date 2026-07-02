## `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm`

```console
$ docker pull clojure@sha256:36d90bfa503873bcc04f63b48fece162bedc2f4841a5050012fa0c05c73d0c1a
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

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:a651975eee7c35d1b887bee2074412b48edb6cbf77c75f7c312bd7977d406740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272534561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:574f749624f5808079f7db7fb5e98639f842a1c734aff725256a0528342dade3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:50:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:50:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:50:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:50:45 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:50:45 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:50:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:50:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:50:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:50:58 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:50:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8df3fd7b5746833306b610131aa68d93e52e1f636e81007f7a2fe8c3ab4cab2`  
		Last Modified: Thu, 02 Jul 2026 05:51:21 GMT  
		Size: 145.9 MB (145906292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf213811d4fa1963d1688dc899bf9740f11181ae88ff3751b0333fcdbb8ae18`  
		Last Modified: Thu, 02 Jul 2026 05:51:20 GMT  
		Size: 78.1 MB (78125015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d77adaff51c0ee0e1fb96c3cf3f8a92d2cee8b32ca2967a20ff85c5dc283e7ee`  
		Last Modified: Thu, 02 Jul 2026 05:51:17 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96cc9ab7c7ff838665bcf1203c0efac88e121b3923fb9d6764f64bea821ae93e`  
		Last Modified: Thu, 02 Jul 2026 05:51:17 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f26b1cd1fd96a6e6350e781ea6f3eabb011d2501f661beb686bca45ee6232c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7392066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:381a50423363d69fa25583542331e88a476d994e547a0bbc0e3a22945191b796`

```dockerfile
```

-	Layers:
	-	`sha256:66588c97e3315db34e740e21a1ca2eacaaf2f849c7e566f1910ca49bedf13d3f`  
		Last Modified: Thu, 02 Jul 2026 05:51:17 GMT  
		Size: 7.4 MB (7376134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dc626446ff9d7049321594b3deef5574df33b244a2b18551630180f784ee026`  
		Last Modified: Thu, 02 Jul 2026 05:51:17 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:212706c9ec65a1e138ac4f597d76775019beb07c9f0c8748f456c7ac7411221b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271243886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6901ca45df478028ab2994a9ac2c73844f6a94bb0ba6c4b1a26311aa447a0086`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:51:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:51:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:51:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:51:01 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:51:01 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:51:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:51:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:51:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:51:16 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:51:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb78fa435b72930ecd0e31119dfbc61796263fb453832ba7569b818e47ea567`  
		Last Modified: Thu, 02 Jul 2026 05:51:41 GMT  
		Size: 144.7 MB (144724314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18af5d730bbf01b6afd53a2d963f9f25d8c4f9f4093973337d42d8dfdf172cb`  
		Last Modified: Thu, 02 Jul 2026 05:51:40 GMT  
		Size: 78.1 MB (78129326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a701eefc52318be67dae04c5026c26b65af868bb599e5dbef886490fec3f9fb1`  
		Last Modified: Thu, 02 Jul 2026 05:51:36 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48e2b154c0b1d17f029c15ce093fa14ca2a70abc26f39104cde253c14837988`  
		Last Modified: Thu, 02 Jul 2026 05:51:36 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:70287265b60921979bed4715dc1607b902a1be1816e67f42a57200050a29dc5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d24765596b42f0a38c5e655c13fc79a572740db7f3409090f5c7a7a50ded83`

```dockerfile
```

-	Layers:
	-	`sha256:b28b457c11005d88598c449bbdb07c2715af3e0f2ea10f5ea1f8dfc68d030240`  
		Last Modified: Thu, 02 Jul 2026 05:51:37 GMT  
		Size: 7.4 MB (7381897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e197117424937c6e8a21b7660d570e94b11bf72ee02611dbd6275806e35bdbd`  
		Last Modified: Thu, 02 Jul 2026 05:51:36 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:b09e9c212daea364bdd626adb45ae3b672a63001570975091f3e5eb29a886a03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282072807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5769342c35d380642850f853eb83373cc14d18e020bbf8f80094f0cddd05b3e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:05:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:05:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:05:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:05:31 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:05:31 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:15:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:15:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:15:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:15:31 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:15:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23318d964605b71f28c3da76366427e3b1abc150181347f2428bac212637d453`  
		Last Modified: Thu, 02 Jul 2026 07:08:38 GMT  
		Size: 145.8 MB (145766183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb13d5f406d39f6c3ae96824e932b80b0c648ae600338196dcd9dcdd1d88c98`  
		Last Modified: Thu, 02 Jul 2026 07:16:07 GMT  
		Size: 84.0 MB (83958732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28143fde384dc69ce4bc8981a11544ece5ca26afd079c4e206a55ecbe827842c`  
		Last Modified: Thu, 02 Jul 2026 07:16:05 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7b88d7f4ada74d4830017995d0ea74b911a2c3b7aaedfc3b3e24d0b98724163`  
		Last Modified: Thu, 02 Jul 2026 07:16:04 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8c065c419700a10264e7d00453512c0490ca75e7955aa22db45a70ca3b07d48b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8914bd2591cf9408a40cf5b7e1c2f85a5983a609b1f039042839a242e1614b6`

```dockerfile
```

-	Layers:
	-	`sha256:1e7dcf787d77a4fa9bdae0d585e40693d3a89c9218216964fb78597e382b6962`  
		Last Modified: Thu, 02 Jul 2026 07:16:05 GMT  
		Size: 7.4 MB (7381350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5f64286c22a524ae9fd29bc2d5dd8d884609468471ecec776b39dccaac5f92e`  
		Last Modified: Thu, 02 Jul 2026 07:16:04 GMT  
		Size: 16.0 KB (15979 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:34e6c2c0e595ce05c1049bbdc510e440a16e471799770d0aa493ce460247239e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (260002705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38acacc57df8a8db4ebd3b88895d1946621a9e9a7cbfd1914583019767b2e52c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:50:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:50:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:50:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:50:16 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:50:16 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:50:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:50:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:50:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:50:28 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:50:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bdd2e9d83d68023204331dd445067114dbd3500d2d496368624fa7ef81743d4a`  
		Last Modified: Wed, 24 Jun 2026 00:27:09 GMT  
		Size: 47.2 MB (47161675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86639497d8ac58f0bd4973f23e7c46028a99853ec32a8eb4f91b3e5a734d80d9`  
		Last Modified: Thu, 02 Jul 2026 05:50:57 GMT  
		Size: 135.9 MB (135910417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5883592c4ae39c16dd72e61a1f7c2fa76bc58773c669b575470e0e234882d16a`  
		Last Modified: Thu, 02 Jul 2026 05:50:56 GMT  
		Size: 76.9 MB (76929570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10db7ef3fe0897d719e2a587535f83ea4d2553231de0a096e96690b10423205b`  
		Last Modified: Thu, 02 Jul 2026 05:50:54 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a94ecc27b7583ac35a272b2149453a74a11601b140e165842d2387f2ccb60c`  
		Last Modified: Thu, 02 Jul 2026 05:50:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4f16d8f7b88a58af7d66d432e6c0993dc08a3af6bbc434de55c1a4f579b978d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7383384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f9bc2de8f0130ee833c2db13aee8f5915b0faacb8ab60210919cc48302f606`

```dockerfile
```

-	Layers:
	-	`sha256:18936178576ae31f0a54bb2f013d6279cbed9e5505f580bdeab666a9c6d88e54`  
		Last Modified: Thu, 02 Jul 2026 05:50:54 GMT  
		Size: 7.4 MB (7367453 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1c849fa560a956cd839f22542c240fcc7941836977424af528e6aa7093d4af3`  
		Last Modified: Thu, 02 Jul 2026 05:50:54 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json
