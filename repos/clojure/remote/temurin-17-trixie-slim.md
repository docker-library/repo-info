## `clojure:temurin-17-trixie-slim`

```console
$ docker pull clojure@sha256:489e630d38b4a33e300101ebeba6bd55b4f7e5c7137be1ebdda2b06389e058ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:3393777e8cb697dce7de29043e2c6971e85cbdc80277369186c6b77c3c1c83b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244661395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbedbfa4366dd0b6bb1eac6b84053a6af1ac6d07019db01bf160c6c3d10114f9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:12:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:12:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:12:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:12:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:12:34 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:12:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:12:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:12:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:12:49 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:12:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7de8d392a6c7f103800ffa27d2eb6a81a16bb67d4fa937daedadd27cd9eb35a`  
		Last Modified: Tue, 06 Oct 2026 02:13:09 GMT  
		Size: 145.8 MB (145825483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683bc90a8b67e8574348b863e084d98b327360f183c868f07e63f2595f03c353`  
		Last Modified: Tue, 06 Oct 2026 02:13:08 GMT  
		Size: 69.0 MB (68991520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c172aba00c6c2247b9c1f5d98d0fcd8594e0224bf8ca4e741b4fef810663a91`  
		Last Modified: Tue, 06 Oct 2026 02:13:05 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fffb33f265f4ed94b789da126c208cae862e1181555bf1e0cbf708811890f90`  
		Last Modified: Tue, 06 Oct 2026 02:13:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5d817bf5adfe416c1d25eb6ad60495214f69d240aa567af355ba19e37dc25733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d886971946f9b9680596242cc67905385a8781fdddbca5ed88f0a8e2c1161b20`

```dockerfile
```

-	Layers:
	-	`sha256:c8f4ff3cded6b708fe21ef85b3161cdc94aaabf2982d4820652cd77e0a014e62`  
		Last Modified: Tue, 06 Oct 2026 02:13:05 GMT  
		Size: 5.3 MB (5263314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54a44754bf6d62bd04221807473b71a42bccd0c55b746b8a3e43929cd5f217c4`  
		Last Modified: Tue, 06 Oct 2026 02:13:05 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fca645690865f8575f056dff45dba6bf928c9bade611ca30e9fca6a0fbc73964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243658087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d40cb141063a4c7150e6fd7ba02b959d081c41e3c77ecf24edb9b15a69872e8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:18:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:18:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:18:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:18:38 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:18:38 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:18:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:18:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:18:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:18:55 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:18:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86c82e516eb22b6ac2eb729e2a6518f580a1d247c5b19fd7c5c98d8bf462617`  
		Last Modified: Tue, 06 Oct 2026 02:19:18 GMT  
		Size: 144.6 MB (144648241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac3fc4739cc9a5331da763d2c3d92d75dad8ef4ab6e73a9f572d7a13d2ba953`  
		Last Modified: Tue, 06 Oct 2026 02:19:17 GMT  
		Size: 68.8 MB (68808524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a5db15b35266621b4b68ee59a99ff4cce70124329104856de5022e9806c9d97`  
		Last Modified: Tue, 06 Oct 2026 02:19:14 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d5c5418449835d788791a0174688479f0d6d956c2e23a6a45532e965f50e45f`  
		Last Modified: Tue, 06 Oct 2026 02:19:14 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:865ef7dbe09cbdfabb6aced23d9ec18886f06947047b7e10b90899028e79e3da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5285159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f6c92c09e725adcc410def21e025d797bb7e5e0ead65d49dd2054cd04acd952`

```dockerfile
```

-	Layers:
	-	`sha256:4d42d27424b17db8aee0a94213e4adbbeadd90c474c1e9dc72bcc8f3c9059699`  
		Last Modified: Tue, 06 Oct 2026 02:19:15 GMT  
		Size: 5.3 MB (5269075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:835f5e832f5936b6d809acff6e7a22faaff6e2461deb861ab8df3fb474bfb933`  
		Last Modified: Tue, 06 Oct 2026 02:19:14 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e0960ef074cbe991fd34be1763b6815721edfcb7e9f3d910a73912b34518a0eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253736019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec175a0d85fa81dd32f63036547bcab1d2cdc716168c932262dfa4bc07194fc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:06:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:06:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:06:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:06:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 10:06:35 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:16:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 10:16:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 10:16:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:16:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:16:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20d3a530543616739863ab002993c8390b6080b2300d6388c6232bfa2803db7`  
		Last Modified: Tue, 06 Oct 2026 10:12:01 GMT  
		Size: 145.7 MB (145671564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd142edf4d35c1e503c83d4d337ea473a9ed99375f97c5e9c1c07ade2bb3fe65`  
		Last Modified: Tue, 06 Oct 2026 10:17:11 GMT  
		Size: 74.4 MB (74411813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71c64281a1663ab6aae19aafb518761f11a513b48757a7165ddc02777ac34099`  
		Last Modified: Tue, 06 Oct 2026 10:17:09 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a5eeb8ef1282b471c92cfbe1ea5de79fc75a5773a4c62fc2d0e0f51b0cccfad`  
		Last Modified: Tue, 06 Oct 2026 10:17:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6a7eb753cc4924cde6016c1073905d59282de20d0014765aa4c480236c40bf80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297e6a8a5380f26d23ebfb156721b34dec1f65e7493b5527ef30d7083dd4dfb5`

```dockerfile
```

-	Layers:
	-	`sha256:d3a5ee9db38acb529c74c7f14319b1700e28e2187032e5e17a223d102aa54997`  
		Last Modified: Tue, 06 Oct 2026 10:17:09 GMT  
		Size: 5.3 MB (5267685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08ed77ca407829390e6cc2067da59d25f07cafa182ddfff04814cd451fbc93e7`  
		Last Modified: Tue, 06 Oct 2026 10:17:09 GMT  
		Size: 16.0 KB (16013 bytes)  
		MIME: application/vnd.in-toto+json
