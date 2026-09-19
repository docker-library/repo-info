## `clojure:temurin-17-trixie-slim`

```console
$ docker pull clojure@sha256:ec6b3da6810e41fc7bdd8f0d4cb98e161ca5e0a678afb3aa11342441c6239432
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
$ docker pull clojure@sha256:6931ab1daba04808a027e7251709631de35198d5f4377470c020cbe17dd41ab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244645442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32c3d1f0cccf5c74a79516ca4289fb079f1e02ba98d20e91301f2cc383b38dbc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:15:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:15:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:15:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:15:22 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:15:22 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:15:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:15:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:15:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:15:38 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:15:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39547ce7a56aa8c6b368f93697ac2fcf8f97ac02d1d767c9e76fbee0cb70eff6`  
		Last Modified: Sat, 19 Sep 2026 01:16:00 GMT  
		Size: 145.8 MB (145822695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cc74071b525ead516d4d22dfa73bd7b7b9a4352b0db7221141af699b254fbf7`  
		Last Modified: Sat, 19 Sep 2026 01:15:58 GMT  
		Size: 69.0 MB (68991288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b244a3f5772a4ce6d5d878d5a267938372bb163a6426b8ad36349136ae4229`  
		Last Modified: Sat, 19 Sep 2026 01:15:55 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abef66d370a1765a35e1b9d72aa9db7cf7d85c32fb24e5237ecfbb0209f1aec4`  
		Last Modified: Sat, 19 Sep 2026 01:15:55 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e17d0d2631cf035dcd1deca3e34e68e899ba2c0b86adeed45786f54f17f68650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5f3db210c7f04d9904c6fb3b5243c2660bbea83d295177e851d30bf6839630`

```dockerfile
```

-	Layers:
	-	`sha256:fcbb6ed05eb5e119f64029b340c1664148d22c6d7067792a1f4da59f91c5616c`  
		Last Modified: Sat, 19 Sep 2026 01:15:56 GMT  
		Size: 5.3 MB (5263306 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc255dd62eb17ad4086d2a84c6da908ba8db9998b93a3089c4d0563b0e83c996`  
		Last Modified: Sat, 19 Sep 2026 01:15:55 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d664f8a6b2bb8c56f04d454f2e0295fa843d3c9b9d7d6c157a807ab61b56a22a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243646921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f94d649c1a06df64a2d64bcafdcebef9cfa45b8299ef660a004a6db7bbd8bd2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:22:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:22:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:22:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:22:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:22:45 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:23:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:23:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:23:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:23:01 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:23:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d380161400ee90b10589a1e39ff72869a8f9b7a084cb15eef6df3ab997468e3`  
		Last Modified: Sat, 19 Sep 2026 01:23:24 GMT  
		Size: 144.6 MB (144647461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31a11bbb8ab26b28b30e8236cc3ab2888d65d87bb010427370b20b7d80cac6d7`  
		Last Modified: Sat, 19 Sep 2026 01:23:22 GMT  
		Size: 68.8 MB (68808732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3410e3b469e7d0e068bb90702163ee2e474e6519ebcad08832005f61cb21c20`  
		Last Modified: Sat, 19 Sep 2026 01:23:19 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc63f55f6522e5d80e2533c3e8c3d361f8f5e276cc0ae44cdbd15ad14cfa162`  
		Last Modified: Sat, 19 Sep 2026 01:23:19 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:55877010da22d53c84e11d434e55291c502030bc0d6eddbabb670d2069f7ad06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5285151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17afe0ec233667176422bf74290834fb95e05b6cee586f452c36569b52ba14f2`

```dockerfile
```

-	Layers:
	-	`sha256:000e0b2c4c20f8d6378d5374bc18c619456bf1f916bbe8ad02b0aa5951033f88`  
		Last Modified: Sat, 19 Sep 2026 01:23:19 GMT  
		Size: 5.3 MB (5269067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4cb2badaa057175c0002e7bab1a816e472397577ccece24d40840ed758efd88d`  
		Last Modified: Sat, 19 Sep 2026 01:23:19 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:3c2989488a387accbea0398cad17758b33ab16ca4da9720cc15dd62d52ab9d29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253728510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd441bdcb5f292bd646fca364c7c0d5ae24dcb8bb5f78ed72e9dfa97d09dc0d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 07:55:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:55:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:55:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:55:01 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:55:03 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:02:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:02:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:02:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:02:04 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:02:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bc74d5f62ccc514731fbedfab4404981161200ba95aaf039d031636ebebc8b6`  
		Last Modified: Sat, 19 Sep 2026 07:59:15 GMT  
		Size: 145.7 MB (145674268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:002bb5db0f1c4ea2053e4b02d32863df66dfff69495dda38d2519343434b1c7e`  
		Last Modified: Sat, 19 Sep 2026 08:02:51 GMT  
		Size: 74.4 MB (74411967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1143a5f6f9cce60ecc2b3feaea541e11026cfb7dfb363bd3a05400845e25b1`  
		Last Modified: Sat, 19 Sep 2026 08:02:49 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d57f898dfbd9b5c534e5aa013eafb3993b2528847173ac3ae8d3933eb9973ec9`  
		Last Modified: Sat, 19 Sep 2026 08:02:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7e5022e7189efc8d7282878bdd4d259923ccac596c76557309041c67a36a990f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8a165a551521e805d2ff5f0a5fb885220afa9a1593458f67f741bfc9301a4f`

```dockerfile
```

-	Layers:
	-	`sha256:03f1c77bf45468e1fafa4105f9cdc057132d44e4b2e1327715d44702f25f3f79`  
		Last Modified: Sat, 19 Sep 2026 08:02:49 GMT  
		Size: 5.3 MB (5267677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88824975a0eb29e580fb54e120517b06c930463d9c9a0626960becaec1bd7df7`  
		Last Modified: Sat, 19 Sep 2026 08:02:49 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
