## `clojure:temurin-21-tools-deps-trixie`

```console
$ docker pull clojure@sha256:a3c7d149abdea0470fec0aab81bedfcc89b935849e1f1bfb558d301f83b440a2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:3e3cd23181e4e615ceb1715a7677a0ec8fd46848d865d498ef0b832af2fe8f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.4 MB (290393115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ffc6c54730746ac28c9a7617ea92327776956f0a8a9f7dfe662f892ceb5dae2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:41:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:41:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:41:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:41:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:41:37 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:41:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:41:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:41:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:41:54 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:41:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e0cb460c6276c3f23b8de662834a757411363fe983ebf93bcb9d0c7cf12dbd1`  
		Last Modified: Tue, 10 Nov 2026 00:42:19 GMT  
		Size: 158.4 MB (158409464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7243f95acfd25584cbd9a81a044bd8c077a543b313231acef29f806b575c490`  
		Last Modified: Tue, 10 Nov 2026 00:42:17 GMT  
		Size: 82.6 MB (82569602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3aa7dff8f0793674a9e6b311e850992d3366a07ef1246949e80c4f3f585118`  
		Last Modified: Tue, 10 Nov 2026 00:42:13 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18032d157ae88a22cf9025ffea3ad43f3c0c7c04edbaeb8d7c8660b1a812ba3d`  
		Last Modified: Tue, 10 Nov 2026 00:42:13 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c6f26205c6df8dfd19879fb5f10c4e21cbd86caac998daef3823a7f7c7b446ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7494519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f34d6bcab108115b2d87af0b70e3f494def3d1c1a98f19c7c004b415c276e6ce`

```dockerfile
```

-	Layers:
	-	`sha256:220ff6dde09d654704e7fb825e06d4f2294f640aa00369e9170092b95a0727bc`  
		Last Modified: Tue, 10 Nov 2026 00:42:14 GMT  
		Size: 7.5 MB (7478611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8bca6877e72872e49a89e9e50b1afbbf02dae64a391e84fd7023eae9b49ecab`  
		Last Modified: Tue, 10 Nov 2026 00:42:13 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dc413948a684d038cf44af4cb6a468970246f4cc8a3f40c32b621defafe855e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.9 MB (288864100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9531699c2bb048ef48f75e1c54b3fa05cacfb364984811edb2572f4b371874ac`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:40:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:40:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:40:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:40:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:40:58 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:41:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:41:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:41:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:41:17 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:41:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4338075ee7e6ab1e9374c46df16af6887563e48c42f8f3bd3ad79b60fbdf7fb`  
		Last Modified: Tue, 10 Nov 2026 00:41:43 GMT  
		Size: 156.7 MB (156691635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f6f17e83817bfb84bd9c8635487a47f2c2a2e45af22902e0fd8633d846065c`  
		Last Modified: Tue, 10 Nov 2026 00:41:42 GMT  
		Size: 82.4 MB (82392317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fe23c6fbd219416535168406950a79a277ae84740266c7ac5cd145e0fa0108`  
		Last Modified: Tue, 10 Nov 2026 00:41:38 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8850eacaea6617a6d17b3f8ebb45bea87a338cc67148244ac77b535f42a76be0`  
		Last Modified: Tue, 10 Nov 2026 00:41:38 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5cf1f67b8d47a3d12b76095dd312495b55b12f87211ea0c3dcb888980bdd42f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd5da7d2970e55e12523a783a53bcf0cd8dc1304445090447c79a4e257f3d2f`

```dockerfile
```

-	Layers:
	-	`sha256:ef7603fb724412af1d5992a4c7da6a22bf3fb0e1242f544939041fc445a6520b`  
		Last Modified: Tue, 10 Nov 2026 00:41:39 GMT  
		Size: 7.5 MB (7485004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4f25e4c4579174ff2af4e2e125700341c287a7cf86d37dff8282b0d7cebb0b5`  
		Last Modified: Tue, 10 Nov 2026 00:41:38 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:2bcdbb6437fe1d6168e65b852381bfcf0099502daa0bd4fb9e41a6b134f3fd07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.8 MB (298797342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce63fb49a27d3c1d2f60c3a220c5c3967dbd9ab7983588592cbdf976fad52ed6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:52:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:52:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:52:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:52:01 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:52:05 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:59:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:59:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:43:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:43:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:43:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77324a11848d877bac9af5f0ca39315d93ee1d02d9b33c1cea449a77e36efcf`  
		Last Modified: Thu, 05 Nov 2026 15:57:04 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6cff48775a8e3fcdf7bcdfc3fb231681142445b73204c9aec35e96d4d13a37`  
		Last Modified: Thu, 05 Nov 2026 16:00:58 GMT  
		Size: 88.0 MB (87996967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d246f8a5b1b96c015a239210d4f7b644379516fa846a759c6006ad86848bd5ca`  
		Last Modified: Thu, 05 Nov 2026 16:00:57 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79d8423b6ecb1d22cb69f00781ac7563bfce743f400a9ab661b70ed180275bb`  
		Last Modified: Tue, 10 Nov 2026 02:44:09 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:96a7ee82020ff516a0b70c5f36a89299fe52ebb946a39b1ab789a398c9d3fbbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7496783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adde2a19cc29a84abf82a2decc88e970c2e231662101d99218a1bcdcf8a667da`

```dockerfile
```

-	Layers:
	-	`sha256:ac64d8b5bb903cff60ab85477d47003f25e1febaea96dca156d902742c282319`  
		Last Modified: Tue, 10 Nov 2026 02:44:10 GMT  
		Size: 7.5 MB (7481782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0814d50030afe28f726b942c3a174337aabf62131a60dae868430f356b77d2e`  
		Last Modified: Tue, 10 Nov 2026 02:44:09 GMT  
		Size: 15.0 KB (15001 bytes)  
		MIME: application/vnd.in-toto+json
