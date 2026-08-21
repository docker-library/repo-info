## `clojure:temurin-17-bullseye-slim`

```console
$ docker pull clojure@sha256:3fa0bc0ac50b76d9f6b30185acbdf240ebefbedc17d0e632cf94f2fecd3c7f6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:062ea48fbbfcb8e560bbd9ee5eef4ba28b58b2b09aaf801fd17d557d3e5505cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232197937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c41a49f48dcd9d0341f573dd7b84b9c423adee4f1820c11514aba714d364b79f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:15:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:15:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:15:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:15:23 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:15:23 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:15:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:15:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:15:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:15:38 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:15:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d423c86f1f2764d5f6cdd09627a52e07dd317345dfd4505e2a67c7fa39006f10`  
		Last Modified: Fri, 21 Aug 2026 19:16:01 GMT  
		Size: 145.8 MB (145822668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a66ce21d4daef2db26645e0e2a318291ec90d5ee35b4363e7be08f8e8b4928`  
		Last Modified: Fri, 21 Aug 2026 19:16:00 GMT  
		Size: 56.1 MB (56114606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53bc2a093280820a4178fdc22373ad0eb5c67f63cdd5da29e5cc41b9f6f994a7`  
		Last Modified: Fri, 21 Aug 2026 19:15:57 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c128fcc2ff1c2d5169613225ed54a792212ce14ac1a4538464f3f0bfc52e96be`  
		Last Modified: Fri, 21 Aug 2026 19:15:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:647633fd7b9473e5db2405970d1bb2675bf683af1741fd6d8f8bfe59a16c22e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5339039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d7618f4797112dafab8a4b61540f65a0f9746672019817a51c1a3fa0162d7e9`

```dockerfile
```

-	Layers:
	-	`sha256:b073946d0978eecb149da350c863328db72a7d5b9f0645885baa28e5bc061c4d`  
		Last Modified: Fri, 21 Aug 2026 19:15:57 GMT  
		Size: 5.3 MB (5323050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:059c7d0039bd55c3aef2b11e98974af2bfd5308199f5d5b23e654197f0d2e796`  
		Last Modified: Fri, 21 Aug 2026 19:15:57 GMT  
		Size: 16.0 KB (15989 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1a4175609b16c7bbaa1054ace4d13c483d525ee61d1cbf63b719dd69b483d4fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229678685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dbf0c8f983e8cfd86a1565cb4d58a32d62b3c7350c8595f494bf2fdc225eed`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:05:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:05:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:05:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:05:03 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:05:03 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:05:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:05:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:05:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:05:17 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:05:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3223258f1c1741a6441579d0cf975f8b4229324ca54f7129dab6755f39a5f014`  
		Last Modified: Fri, 21 Aug 2026 19:05:41 GMT  
		Size: 144.6 MB (144647513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb2c5989991738222733785fc2f68e8a7dfad635fc830cfc7ad695c041a086f`  
		Last Modified: Fri, 21 Aug 2026 19:05:39 GMT  
		Size: 56.3 MB (56281225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911ea08802acc610d3a762eed2aff5ef92e2a2a3bcd4cb61a8ab3dabb1ba0c48`  
		Last Modified: Fri, 21 Aug 2026 19:05:37 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4254ba2b734825068a47a07c446c2276896013a9b559a7cf5fde0345e25a24cc`  
		Last Modified: Fri, 21 Aug 2026 19:05:37 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:17d385dee5f867b8f71de59a28f6ff0a261051d1cb841eff63bfd5ad88971714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5344890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f098eeda705ac2ea97f74800dfd12cdc6273f06445a2c3e02f77e1e5066d2b`

```dockerfile
```

-	Layers:
	-	`sha256:999da9c73435f5988826539c262b9b87d91b15cd1d26fc660ef42b9d710c96b9`  
		Last Modified: Fri, 21 Aug 2026 19:05:37 GMT  
		Size: 5.3 MB (5328782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc3b875d0e026ba0b6508bee17c0cf11169998ba0c8a2d84d1add9dbedbb1d14`  
		Last Modified: Fri, 21 Aug 2026 19:05:37 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json
