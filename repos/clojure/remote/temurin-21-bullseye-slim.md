## `clojure:temurin-21-bullseye-slim`

```console
$ docker pull clojure@sha256:33aef33d6700c5349263b4d44ab82086451fbd50a41cd0996f543e1d0adc4b9a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:739a47fce71007bb5ead5d1b8c34515232659d0389ed5c234205acebe312bb47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244542130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29bd5e2bfad397b3fcb812c0e7bc9b58df16278c471c6d9b40ecf2dc6389923c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:47:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:47:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:47:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:47:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:47:24 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:47:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:47:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:47:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:47:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:47:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dad9bf328fc9c7ac20ff0752c41ac5ce70aa9af5f56ae78235859ac033d9c74`  
		Last Modified: Tue, 18 Aug 2026 20:48:04 GMT  
		Size: 158.2 MB (158166938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f71bfa56464adc400ee3f96da54264e2b25fbc16b76a34abf7a6d5078de7f793`  
		Last Modified: Tue, 18 Aug 2026 20:48:02 GMT  
		Size: 56.1 MB (56114536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3263696a303fb44fdf74d99bef97943aab507098719a0ab84d71aadfe9b75768`  
		Last Modified: Tue, 18 Aug 2026 20:47:59 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b952683078915becdc3c61cd67972c14dba370d736503c54de1b2abe9eca6e3`  
		Last Modified: Tue, 18 Aug 2026 20:47:59 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a6a5649f8f0d3ab1bbec757da09be635242d39089243af7ee048aa91a4a8702e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5340894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff7f991d7fcfba72506ec579b5a48658c93e38390dcdba91fdcce164e45dacbb`

```dockerfile
```

-	Layers:
	-	`sha256:fcfabded848d34abdd3ba94bebcaa457e1923853714c7b3bf5333731c43e0fec`  
		Last Modified: Tue, 18 Aug 2026 20:48:00 GMT  
		Size: 5.3 MB (5324904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba69d08235eb7ed7115e3760fbf4852c8a714efac2581486ad3aa8c7e7dd92c0`  
		Last Modified: Tue, 18 Aug 2026 20:47:59 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:554e5503979e17b5fcff12e2e106ebbd90c541cfa6d0803d847c2441fc22dc76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241492435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0626330dd818ae8c111337b322f421c69e56184de5b4353d011e44f2eaa68f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:47:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:47:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:47:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:47:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:47:24 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:47:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:47:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:47:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:47:37 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:47:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6a22184c971e9a103a3b00dd6a1f9f3dbcf9857c6bdd3a53f7c9333672b4697`  
		Last Modified: Tue, 18 Aug 2026 20:48:00 GMT  
		Size: 156.5 MB (156461246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29fb8536ccabc849ab3e8a00c5e2389f26eae7627a2407a8ffd1648bd67fd3d1`  
		Last Modified: Tue, 18 Aug 2026 20:47:58 GMT  
		Size: 56.3 MB (56281245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9943f1e5e0e6d3b6848d0819b7a85552b01fbc705c9caf637fdc78021c8dcd1`  
		Last Modified: Tue, 18 Aug 2026 20:47:56 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2966bdde671748bcae8aceea519a7f2d012a4fc57e64978de819e59255ed200d`  
		Last Modified: Tue, 18 Aug 2026 20:47:56 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6bbb4c1e05d06fdc5ca838a4aefca70e2650c9513138489891da019a0151f4ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5346743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aca2e24b6c65c9592015e79fe46a56e1fa496da329e9cf307780124c92d569d5`

```dockerfile
```

-	Layers:
	-	`sha256:fa67cc87a4439df025d16c15f904cf5113934e1d4a7957ab88a713cb67cf7b8c`  
		Last Modified: Tue, 18 Aug 2026 20:47:56 GMT  
		Size: 5.3 MB (5330636 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e98af35bfcf27019755ca46e6f0f6b9d8daf70f9aa3d08c29a1edf1400d49ba`  
		Last Modified: Tue, 18 Aug 2026 20:47:56 GMT  
		Size: 16.1 KB (16107 bytes)  
		MIME: application/vnd.in-toto+json
