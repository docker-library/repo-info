## `clojure:temurin-26-tools-deps-trixie`

```console
$ docker pull clojure@sha256:c27ed57f770769a3f7d97b72f58cc550a304502cdebf62aadf1b3ba84d09eae5
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

### `clojure:temurin-26-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:cac8930877c72fff6aacf0f108f3d8d5e275db3dbe56e7d7b0e129da2e6ebb21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226441677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97886435d2e3e642e3556fa6f0b0f8c16e1dfb73a16d502bcf4df531d1614b59`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:33:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:33:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:33:38 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:33:38 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:33:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:33:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:33:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:33:54 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:33:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:296b3e17359b448fc6820947756856f9f1ba0aa282cfc5f1f1c1f09c100bf4ed`  
		Last Modified: Tue, 25 Aug 2026 01:34:16 GMT  
		Size: 94.6 MB (94563729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a48f1e672316882561aad3346d9765307b98e8ad0296e61c7295e6501bc2793`  
		Last Modified: Tue, 25 Aug 2026 01:34:16 GMT  
		Size: 82.5 MB (82539077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4fee6017fb28f91f49360cfd35b47984827ee52c5369a59ba1feb211e25fc57`  
		Last Modified: Tue, 25 Aug 2026 01:34:13 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4699cbd97c3e46ae8c832ccf8e464206c9051718f65835477db49e4efe5d61c1`  
		Last Modified: Tue, 25 Aug 2026 01:34:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f0a59c54cadd7d1f2972df3fd96b9dcd08ce1cb010846ac5f8a2d82e73d729f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7454665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0cddbb160e1868f6af20cb2b01f90ab2b6291ff806dad29a722b1d4625bf597`

```dockerfile
```

-	Layers:
	-	`sha256:67510d9132a6a9bd992c090a2219198022268d17d9361a5b1a50fdf7cf131c52`  
		Last Modified: Tue, 25 Aug 2026 01:34:14 GMT  
		Size: 7.4 MB (7438764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3376c16ce008f56b40c126cb63e2cc21c4c9539082f9d74a7b51311aa517ef5`  
		Last Modified: Tue, 25 Aug 2026 01:34:13 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1b7d32497c5b50bc1a587b23dd03acf4c47a9456046a660d525104708df23081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225606491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:113ffea85cdc7e1da39048137f19f3b09c8ea2088ecf71c9a7932780ba4cc19c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:37:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:37:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:37:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:37:56 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:37:56 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:38:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:38:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:38:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:38:14 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:38:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35ff16269395f225d2192514894135ccfc18972d079490e06f5376b46aabf3d`  
		Last Modified: Tue, 25 Aug 2026 01:38:37 GMT  
		Size: 93.5 MB (93541530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:579cdd48dcf5d1e546811cb03b101da15ba356cc711e20c1eaa67acf639bc860`  
		Last Modified: Tue, 25 Aug 2026 01:38:36 GMT  
		Size: 82.4 MB (82359068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517b116fbba80e33d44946a81c5d64a60d6066f34b344199b05d1fdd15f0a6b4`  
		Last Modified: Tue, 25 Aug 2026 01:38:33 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfb8d5818ad4611f9e9f84f4012cdb03fa7e8a8518ba836e07d81ea767ac294f`  
		Last Modified: Tue, 25 Aug 2026 01:38:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:682aa96e214d600108f30e412a90f976a8328e95ed1c25c7a18b747c113fd649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7461173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c86bb462621a0095c2ec875e69cb2f7ebbea333ded99180957116fc2b66894`

```dockerfile
```

-	Layers:
	-	`sha256:60b74178f92bfe8c2b41d9dbeddfa7e5ad849b2e0620b5db44d63867dbe0cae6`  
		Last Modified: Tue, 25 Aug 2026 01:38:34 GMT  
		Size: 7.4 MB (7445154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:469ce3c610302ae8a087db89cd62faa7925c7a6e2204043dca8329af3b47f909`  
		Last Modified: Tue, 25 Aug 2026 01:38:33 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:c75029022aa3d9360594bbc2a069eec1a1cddd1895d5869a1fc020bd21d2077b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.5 MB (234466741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8c0691e755f6422161d999c6c435fac6898efe6142e628de94a6464a30ff9a8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:55:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:55:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:55:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:55:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 08:55:25 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 09:02:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 09:02:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 09:02:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 09:02:42 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 09:02:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e49b63121daca1f76923aa83d93cb343181cb0171f7f3ad4e5e569d8ddd8cd7`  
		Last Modified: Tue, 25 Aug 2026 08:59:18 GMT  
		Size: 93.4 MB (93350786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0996de79832b8a86d09ab900d0f320f3947bb82f856f524b9570b6341c0d6f69`  
		Last Modified: Tue, 25 Aug 2026 09:03:47 GMT  
		Size: 88.0 MB (87950627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e6fa3cfc1cf947989c6a10cbff90d71b498b3d46815c8588434c3c5baf7176`  
		Last Modified: Tue, 25 Aug 2026 09:03:44 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe0554fb276d47544a7a25de74d4edafc0c62fc2abfe30dca35c2218eddfc17`  
		Last Modified: Tue, 25 Aug 2026 09:03:44 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d43c957aa964ed6b23158ec9d284f784a147a75a58100a6c7eb34c0d9c3669ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7443069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b7d32dc7df6253cfc25a900afb1826ae1e1d5fcbfa0a8d52089ef964458546`

```dockerfile
```

-	Layers:
	-	`sha256:0aecb814535f8164e06d6872e5d5cbef721d03fdab7593a61f3b01abcc312301`  
		Last Modified: Tue, 25 Aug 2026 09:03:44 GMT  
		Size: 7.4 MB (7427121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db32982c90cfd401876d74abf31cf804f1cde6af05525dc13c8e7308d331d267`  
		Last Modified: Tue, 25 Aug 2026 09:03:44 GMT  
		Size: 15.9 KB (15948 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:08a74185192f0efcc6bf3141892f5b084e5053a6560ed7af553584bb13cce5fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.5 MB (223515651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66131e532866748a78f7101bd96a5349b621aa877e09b517c4191052a69f7e74`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:11:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:11:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:11:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:11:48 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 02:11:48 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:12:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 02:12:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 02:12:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:12:05 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:12:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5459be13f0d146d434281e08f096f839c0fc6893d92d9a9be9f02a010da412`  
		Last Modified: Tue, 25 Aug 2026 02:12:33 GMT  
		Size: 90.6 MB (90588188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8827626b23c89537666d61e49c10c2a1af0036bca9b2a8e1f97777c70fb0056`  
		Last Modified: Tue, 25 Aug 2026 02:12:35 GMT  
		Size: 83.5 MB (83519722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f05c81abe2450cbc167b850811f181d1ba52fb0c578439ccebf83d56adf004ae`  
		Last Modified: Tue, 25 Aug 2026 02:12:33 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eaa99df99d83bf33ffa0e4bd519c207281e885aae558bdf69f692011243c8f5`  
		Last Modified: Tue, 25 Aug 2026 02:12:33 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2336f0933215c4b58d3c91cd958e7a2df2f8d593b330d97eeea4a548e906c0b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7435773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3cd3f4f671c8a18dd574541a809b23ea0b0034fdcabd87fe64328cbe3227913`

```dockerfile
```

-	Layers:
	-	`sha256:cd98cb70f6d28f83d2685d8b10af97fd13f83d4a90c8e9289eef2cbaf0f56913`  
		Last Modified: Tue, 25 Aug 2026 02:12:33 GMT  
		Size: 7.4 MB (7419872 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61d16a16a899a8ffe0a235c06da05d9b76d1082841ff806a5f3ae8d9c58bc0ff`  
		Last Modified: Tue, 25 Aug 2026 02:12:33 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json
