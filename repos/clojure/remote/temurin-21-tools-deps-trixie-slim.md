## `clojure:temurin-21-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:be6ad786bfb7dc04082a299cf9f830abc9a169a6ed8f8672273c94465a14baa6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:97e0566dd1222ebd6b4d62472d0bad29860a1a5d6ac14e49151bef16f59552d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257256660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff48572df1a272aa0451ad6d5e2d259006353594532c09655c95a7c7dd5feb89`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:50:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:50:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:50:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:50:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:50:28 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:50:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:50:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:50:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:50:44 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:50:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b7e3768f4f5d23e951908bd0752ca84fb38366ad7237b05c6c343fba4f0aa4`  
		Last Modified: Thu, 12 Nov 2026 00:51:05 GMT  
		Size: 158.4 MB (158409388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc3f3874c494d5a9fb7005d1d32aa3215e034b74f520607893806d1ca5c71cbe`  
		Last Modified: Thu, 12 Nov 2026 00:51:03 GMT  
		Size: 69.0 MB (68989593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2d64849e4be7614c00b3e4b121756cd7d1458714757619af0c4f89df8b5e89e`  
		Last Modified: Thu, 12 Nov 2026 00:51:01 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce8e52fa267c7bea46ca9e2adbd10b100cd83002d12eb2093b14968d90b99893`  
		Last Modified: Thu, 12 Nov 2026 00:51:00 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e6199e3cdc129e1336f8c5eeb4854200c326dcfef5de2fb50305dc009acc395e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc96c9c7f4e73a198d3a02f2f3d81798d8098785921e4d3fc4ee12c14d53a3d`

```dockerfile
```

-	Layers:
	-	`sha256:a2b9ec03cc4640baffb7e3944b975af63c13e024cfcf1a957cb08d0a8ce17443`  
		Last Modified: Thu, 12 Nov 2026 00:51:01 GMT  
		Size: 5.3 MB (5263909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06411eb99861b9e5b44d62574c263225f6a6d801cf65c5552d5340eed07f6d57`  
		Last Modified: Thu, 12 Nov 2026 00:51:00 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:853a78f589c5feff6752a302dd959ea8426ba62e102c2774ac9b44815285bb11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.7 MB (255712279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fbb91d8ca19e481f83e24986a4b22f68197974beda092dcb60173ac4dc52455`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:06:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:06:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:06:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:06:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:06:06 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:06:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:06:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:06:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:06:23 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:06:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c2f1df56dfd71dddccda185a942fda2085a9e5b96a408d45cb05f3860472e3c`  
		Last Modified: Thu, 12 Nov 2026 01:06:48 GMT  
		Size: 156.7 MB (156691641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fec62261e4fb1dcba26a778ec396c78e7b17a7f4bb5f442866a1ba76eab07ec`  
		Last Modified: Thu, 12 Nov 2026 01:06:46 GMT  
		Size: 68.8 MB (68805054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a367314b3d8cd3bdcf50b406191a5f32cbe2d687caccd4c691b1ea1f1bc124`  
		Last Modified: Thu, 12 Nov 2026 01:06:43 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8709e9bbcc92b1ce83521f8cf6e2cd9a0adcc5b3f3c31a1daff18569a03d8e86`  
		Last Modified: Thu, 12 Nov 2026 01:06:43 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0f7e8ae5dcca62f22dc8bed6c842b9406aa5d29f91ca045065b65c7308aa8d16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5285754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6806a6ce0592fc01e4cc6cb889e45066c3c015a6f8b43c12e4bbeff4dff74128`

```dockerfile
```

-	Layers:
	-	`sha256:1e5146579a547224458248da83209f5690d82f21565cb9414463f4824c6453f2`  
		Last Modified: Thu, 12 Nov 2026 01:06:43 GMT  
		Size: 5.3 MB (5269670 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4eb3a4a88ae8c81c3c03251ec05c1082061197f6726faf0ef9a18894e6553677`  
		Last Modified: Thu, 12 Nov 2026 01:06:43 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:6cd45589f9be0c050aad9a7e4a91047cc89a49d1bfc4617d77531fa948b1f8ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265660941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a5679a337af211d4ea304a0670109e656500ec464d3040758ae42811e884ca`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:53:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:53:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:53:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:53:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:53:35 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:01:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 16:01:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:43:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:43:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:43:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160e4dfd74fce827efd180ea39399ead65ff78ebe435d963c4044d95e7490255`  
		Last Modified: Thu, 05 Nov 2026 15:57:42 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011c02fe0f6ff8f054cb8f2d38ec823fa3612e4225b6f1f74957468fa2fa7168`  
		Last Modified: Thu, 05 Nov 2026 16:02:03 GMT  
		Size: 74.4 MB (74418508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ced8e94616b989283e38899972eddea85fedff50283337a730064abe441a398`  
		Last Modified: Thu, 05 Nov 2026 16:02:01 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6345a05d70317c1bb5e45731bc3dc82ad4677299d9452ec7ce329cbbbe075f84`  
		Last Modified: Tue, 10 Nov 2026 02:44:08 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:563fc33e5bf001fffc877a843e06c25e3a6d65334404795ac795397d2f5017fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5282093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:957fd177ca802912a7afedec7c33023d6c1d0622eda4b72d9cd011c6b1d9a21d`

```dockerfile
```

-	Layers:
	-	`sha256:232fe5960ced28940bcc50162587962281dffe606c060feba27c44da8ef06be7`  
		Last Modified: Tue, 10 Nov 2026 02:44:08 GMT  
		Size: 5.3 MB (5267034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba87ec977464e27dc6e3ab49dc251ed86ecfc1d0606157ea92a2fdbf9a00aa48`  
		Last Modified: Tue, 10 Nov 2026 02:44:08 GMT  
		Size: 15.1 KB (15059 bytes)  
		MIME: application/vnd.in-toto+json
