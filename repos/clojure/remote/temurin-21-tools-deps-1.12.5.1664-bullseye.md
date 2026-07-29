## `clojure:temurin-21-tools-deps-1.12.5.1664-bullseye`

```console
$ docker pull clojure@sha256:0c6b2202769d6b57964b6126a2ade60bf44ac305e6aa49ed23f4c2c48c3da58b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.5.1664-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:9527edf31a21c10940581cd171636817a79c0c800622278cb0c30ae13ea42daf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278463408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f63b1a4901062739f02a5ca104a0a82bab37b3180473e0a4f9deb77e4c3b609`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 17:56:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:56:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:56:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:56:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:56:30 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:56:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:56:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:56:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:56:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:56:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f7e372098b413ae1c277a4ecc0215228c33afee4a1b96524d93f9ec5a85862`  
		Last Modified: Wed, 29 Jul 2026 17:57:12 GMT  
		Size: 158.2 MB (158166906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dfbfa84c1654c422ddeb9aabe5920f3a55c4b779a8f48fa68cab5653c774f9a`  
		Last Modified: Wed, 29 Jul 2026 17:57:08 GMT  
		Size: 66.5 MB (66518882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8864a197190b74bfe08d25bcda3218d8d25dfeb9e9a4ff0fcdc025fec169fb`  
		Last Modified: Wed, 29 Jul 2026 17:57:04 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10406a63dd39c3bb9d67046ae241ddb1d37cb84ea02af0ef2f55c418aaff2a86`  
		Last Modified: Wed, 29 Jul 2026 17:57:04 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:cd8bb3697d2910e0d20a2cfd1fed168059aa6df34c32503fb8a7c34839a0d384
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7423232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f0362f6ea764d7497562e6c3e5c580c98c9b1e90e03a565b369a45a58b8b4b2`

```dockerfile
```

-	Layers:
	-	`sha256:cc70c2a8e816a27b7a33597c00c3ec7b10de496013754fb9141f7fc10f370054`  
		Last Modified: Wed, 29 Jul 2026 17:57:04 GMT  
		Size: 7.4 MB (7407301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:269e5930509ffadb181a4d78a88205c01d27bfda012a5b3ad42f7c52161ac702`  
		Last Modified: Wed, 29 Jul 2026 17:57:04 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2e64fc0972dd71e7203d6d4799f887206fe92b4895ae0ada886dd14ec2643c59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275408771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45b6cbdf1e25ecb489e95d3c336e0e43c128ba4d26636db53430f8b01db47305`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 18:05:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:05:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:05:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:05:12 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:05:12 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:05:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:05:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:05:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:05:25 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:05:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:512a73d05b483b3b7e2f68095db09561cb69953031ec75c62f31b7b0286b85c7`  
		Last Modified: Wed, 29 Jul 2026 18:05:50 GMT  
		Size: 156.5 MB (156461298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b456faaeec7321cce47a1c51007476c7b70770fb8e2997397d07925ccb80b21`  
		Last Modified: Wed, 29 Jul 2026 18:05:48 GMT  
		Size: 66.7 MB (66685539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def682d56ee1de84d79fb6b2954a557b46e444188941fd39f32570e6688de304`  
		Last Modified: Wed, 29 Jul 2026 18:05:44 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae952eed11a3f66c6cbe33862ff178a3188682d33c17d62ce146cbf351ed25e5`  
		Last Modified: Wed, 29 Jul 2026 18:05:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:5540bea6ea2d36bdf3f7f8df5e7eebdac4d68867c3f8909607354a6a7beeff2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7428450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb180981bdd8241a3c904a69cff5d790693f6a84bee6d03951c37b5665bd1f04`

```dockerfile
```

-	Layers:
	-	`sha256:da73be4fea407837c2b49ac27ddac9feb54c686e308804f34924f486ff49cb46`  
		Last Modified: Wed, 29 Jul 2026 18:05:45 GMT  
		Size: 7.4 MB (7412400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2d672c2352db794d15061eb7fdd0857699cf0337453a4c3ca1394224411712f`  
		Last Modified: Wed, 29 Jul 2026 18:05:44 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json
