## `clojure:temurin-25-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:8c165dd5846484961c62e3240297d578bb8efb07704aa1b1e36aa5e62fa39811
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:7cda5b275520e4947c25ef050facb18bf7633e174e337d840faa53a9ee7a2148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224581310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a17715219b93082358d1d440742f4277c72e8601678f980af8185c75db10501`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:51:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:51:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:51:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:51:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:51:40 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:51:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:51:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:51:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:51:57 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:51:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e883ba6e2900c3b7505d825bcc6cec2041cbdb722c81f38544848b89391ed6`  
		Last Modified: Thu, 12 Nov 2026 00:52:20 GMT  
		Size: 92.6 MB (92598899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10d8c659e3897d17850bd851b26d62023c15b91f6d4ae47212703ecffeaf215`  
		Last Modified: Thu, 12 Nov 2026 00:52:20 GMT  
		Size: 82.6 MB (82568358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56ecb8f5c7bf30150f3a58c736f38d3331d5e1dc29f1c14e1dc63179a4e9a0a6`  
		Last Modified: Thu, 12 Nov 2026 00:52:17 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02af23279deeeee395a479056d5f4ee42a8005c1ad4ee39a0e97675daf78a98b`  
		Last Modified: Thu, 12 Nov 2026 00:52:17 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9259b0dbaf0fe92b678d1c0250df047ecf4988dac97b739016dd2b4ef6b84cbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7461391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac7cfc38c7613a2f75af08c520bc3486a85504e0f062cb902cf87bfaefed25f`

```dockerfile
```

-	Layers:
	-	`sha256:1fb73b9948f8518b203badc18ff129e6defaa8027bf8b029f95c59b6d033fb74`  
		Last Modified: Thu, 12 Nov 2026 00:52:17 GMT  
		Size: 7.4 MB (7444823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faa43a50022a1a4acc7d11ce68cac5d0682676ba48f974f86d004ad1089003f2`  
		Last Modified: Thu, 12 Nov 2026 00:52:16 GMT  
		Size: 16.6 KB (16568 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5d25d8bea688793817300d956d55a4f030cede68c2467b279ec881b3e84a993e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223698189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:235f448aa9e458c3f2579a521b0a9e0d086d178ab6100867d10fe11b0e83248d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:07:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:07:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:07:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:07:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:07:02 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:07:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:07:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:07:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:07:20 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:07:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a111fcc81a0cb1445bd2afd9fc50f9e50c698920daa04e1e29587ce4b6f5f8f`  
		Last Modified: Thu, 12 Nov 2026 01:07:43 GMT  
		Size: 91.5 MB (91525624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1595023c4f3754d3d2823a3974758689eeb886fb226acf17abb8417aca2f4b`  
		Last Modified: Thu, 12 Nov 2026 01:07:43 GMT  
		Size: 82.4 MB (82392418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5cdddf4260c555cd209fa8995f4a0ed09dad9a4626ba549bf6c0172156c639`  
		Last Modified: Thu, 12 Nov 2026 01:07:39 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a51a623b4355b433f81fea6ba6ad44010d84aaded66f65583927151a10378e7`  
		Last Modified: Thu, 12 Nov 2026 01:07:39 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:10054ada7fa63f8431fcb66a04e331a5c3cc00050a5c6c9194d2261fbbcabf47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7467948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a8d0e039192d1af111d8ad380a1a8a6055d0f9cb6580f4ec4fa330d977a9de3`

```dockerfile
```

-	Layers:
	-	`sha256:f1747ce7e93f2d203c82c12e94f625b31878f9160080323744077587d5c0cb17`  
		Last Modified: Thu, 12 Nov 2026 01:07:40 GMT  
		Size: 7.5 MB (7451237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:932b48ed69df9702e8b6c007163f31459492778c7fcac29cd95333c1487381d6`  
		Last Modified: Thu, 12 Nov 2026 01:07:39 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:496b816e6e3dd1604bbdc7416cf897f433c5ecf7914a8934b7a76a1c62adba0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231336122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8593ca10d34bdd3649d6a1a40dab17eaee21758363c22076375fcd1eb6f6a700`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 16:02:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:02:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:02:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:02:19 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 16:02:20 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:12:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 16:12:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:51:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:51:19 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:51:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c6a745c05ed8183f7d78d41d53dcc6725d2853049a6761ad29bfd0076632b4`  
		Last Modified: Thu, 05 Nov 2026 16:07:19 GMT  
		Size: 90.1 MB (90111726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e585def3d42ccedd8909a3cce1803f954976f123c537c8b40d2154dde8cc09`  
		Last Modified: Thu, 05 Nov 2026 16:13:02 GMT  
		Size: 88.0 MB (87997266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c243e5bb979022bd1081f662991122301742bf185ed1522239288bd604a990b2`  
		Last Modified: Thu, 05 Nov 2026 16:13:00 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b1cba74cc934ae3d9a55a31ef2544f832054506a39c071d404812283f4c2de`  
		Last Modified: Tue, 10 Nov 2026 02:51:53 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:dd6abd54233771110f041e0b900c686837352898405bcbf5c7168f007001f184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7447331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5c28700197976b6dc47eb90101a5f8961e8f5e8699af215c595ae2f4564969`

```dockerfile
```

-	Layers:
	-	`sha256:525a83d0a2d9894d4b070222172d103e610c8793c888a6202e1459282815a43c`  
		Last Modified: Tue, 10 Nov 2026 02:51:54 GMT  
		Size: 7.4 MB (7430703 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5341d503e38e8a9f1faf3f6b9f176e153d4d2bc1174f1a6db9a9b2d9edbc82d`  
		Last Modified: Tue, 10 Nov 2026 02:51:53 GMT  
		Size: 16.6 KB (16628 bytes)  
		MIME: application/vnd.in-toto+json
