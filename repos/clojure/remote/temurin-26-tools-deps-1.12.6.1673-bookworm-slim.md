## `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:4f47450b379ff3617eb94aad5ce4367d2c132000f772528af23db8370826df4f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:dc5ea53640d2bbb5d5ad1803c5a602f5636966e67ccd3645a0d12213db7bb13f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.6 MB (191597288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac94a1d897506f05dce1c26f07369fa6ef96d640b8f2d36fbbf0a2e7b2a95ae1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:14:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:14:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:14:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:14:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:14:28 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:14:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:14:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:14:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:14:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:14:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df1318c91d33a706146a6b0a045c0aca44f72123b8c8668a65d8d68a34790089`  
		Last Modified: Tue, 06 Oct 2026 02:15:09 GMT  
		Size: 94.6 MB (94563556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547d7889c6652428aec31cbc96847c1c614b5ac7a671b16a17ab824d6d4bd481`  
		Last Modified: Tue, 06 Oct 2026 02:15:08 GMT  
		Size: 68.8 MB (68783370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27732c2390ab9dc28f1bc637b5a48d4dc632a8ee00393ab906d81821446e331a`  
		Last Modified: Tue, 06 Oct 2026 02:15:06 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54cb0b6f588abf7796475bbd087e789acf81c0016dcedaa854dda1366325b68`  
		Last Modified: Tue, 06 Oct 2026 02:15:06 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:681a87348bfafd518ce713c0da302fa51e451ccd1136dd234f7e0f74fcc6f583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5100184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c415f4f8eeaf9818fbc0a1ef18a5f518626f24cb3d386be5fd1911eb0cc3b6`

```dockerfile
```

-	Layers:
	-	`sha256:d2431bacb13fa34980f874e4baec4ccd3f48f285da3345d9da21ff385ec46bf5`  
		Last Modified: Tue, 06 Oct 2026 02:15:06 GMT  
		Size: 5.1 MB (5084201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:063331d054ac6f486100ca996e9fc53dcbb5a32a2fe23e37b16f4a45b7f10e34`  
		Last Modified: Tue, 06 Oct 2026 02:15:06 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:171c917f57111ede46537473d6f62f66adca205d3aa6591082683c84bf9741c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.4 MB (190413064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7a24ad498981aad6f1456ee047faf930e2ebdda9c59646e84b758a8313849c1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:20:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:20:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:20:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:20:11 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:20:11 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:20:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:20:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:20:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:20:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:20:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9503409e10eb8d55612353877c27a0d5fefa004155ca9926a4cca4a1af6f0c7b`  
		Last Modified: Tue, 06 Oct 2026 02:20:49 GMT  
		Size: 93.5 MB (93543627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e4e10943d502699c28e6ac0e2ba91809ead4b4c6a78c302c954abca718ec7c`  
		Last Modified: Tue, 06 Oct 2026 02:20:49 GMT  
		Size: 68.7 MB (68731216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ec41571fba9b136de58b05d0d1ab270a526148a93891f27d48c62428f204480`  
		Last Modified: Tue, 06 Oct 2026 02:20:46 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ff483279bbed032eb46481a932bc07a994d57ccce77ab3abb9290538cad18f`  
		Last Modified: Tue, 06 Oct 2026 02:20:46 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cc429332ca7381e899ae97b3051b81ea52a32b3b8c923a15f2a5f6de4daf6f60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5106059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c89af6dcabd0459b7b018b168a782276627744f118451db938c5d72ad5ecf4`

```dockerfile
```

-	Layers:
	-	`sha256:fca3c3a16bf824749cfcf554b5e867a51e1989bf908a1a949a5b0963adce76c1`  
		Last Modified: Tue, 06 Oct 2026 02:20:46 GMT  
		Size: 5.1 MB (5089959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cda09fb26882e8bf503669d1e6d1704426c5b5c4a03f20d4ec716ace91992d22`  
		Last Modified: Tue, 06 Oct 2026 02:20:46 GMT  
		Size: 16.1 KB (16100 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:096216097293cf9130d8a481deadf20cc65da0430371a549a7702b15612a5b66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200211055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c729f7c068f0f109c9ffb79625ce7c8908334d10f320f0b3fd290d0dc8f077`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:44:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:44:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:44:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:44:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 10:44:47 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:55:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 10:55:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 10:55:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:55:01 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:55:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d73dd0cd52d79880f1cbb3f3606ec8bdc285c8fbf42ead54402897b2fa5827`  
		Last Modified: Tue, 06 Oct 2026 10:48:58 GMT  
		Size: 93.4 MB (93350868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a56a129a9c47afbb2cb24ae1c2d9326c897a5434c3177e1888d397a39cdf7c6`  
		Last Modified: Tue, 06 Oct 2026 10:55:49 GMT  
		Size: 74.8 MB (74766710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ff67f5048bd9c0628d15feda5afa82996e911239a300b36272c3dc9db92a03`  
		Last Modified: Tue, 06 Oct 2026 10:55:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e08f9bf45eff01ccfbd4b53debb760587ead307fb1df1863a313079b99d64ca6`  
		Last Modified: Tue, 06 Oct 2026 10:55:47 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:39adacb1fc3ff32b862c662d02bf13dc2185ca8c59a3c1325deea5c51a10a33d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5089325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b17fbc97703292aa0944de13657970c41f641bfde5071e54f556f85a94a29b`

```dockerfile
```

-	Layers:
	-	`sha256:6120fb98d02dc1c60142363b29e4cf9d534fd2219dff1633781c2af0328cf0b0`  
		Last Modified: Tue, 06 Oct 2026 10:55:47 GMT  
		Size: 5.1 MB (5073295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4eca910857dccf8f41e4c7dabe35ba176a1044a81a2ec7d28335b87c6aeae7ea`  
		Last Modified: Tue, 06 Oct 2026 10:55:47 GMT  
		Size: 16.0 KB (16030 bytes)  
		MIME: application/vnd.in-toto+json
