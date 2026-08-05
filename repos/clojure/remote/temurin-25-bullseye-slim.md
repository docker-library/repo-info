## `clojure:temurin-25-bullseye-slim`

```console
$ docker pull clojure@sha256:1574c3ba216711e0d29ea6ba6d88c72f50b19701192fe3be82819738c42d1d3d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:d49f8d86ef7169320dc0452c2aaf87db36a3edee8258a289b9b882b4efc9d5fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.9 MB (178941181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5412dfb98685a64ad7d3a2c576a006d88e2b6efa63f743389c2d95b6bef5cd67`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:24:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:24:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:24:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:24:32 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:24:32 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:24:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:24:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:24:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:24:45 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:24:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bb1cc2ad3211ed76cad48bff6a27ac9a602062960b6cf8812827c119ca67d74`  
		Last Modified: Wed, 05 Aug 2026 01:25:05 GMT  
		Size: 92.6 MB (92574599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b67465f886f6f404fb77151896f78740e0ed1a30d26b8f8c54ec641b3279324`  
		Last Modified: Wed, 05 Aug 2026 01:25:04 GMT  
		Size: 56.1 MB (56105924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e7e1853bd54000e7e1adc0aa7605260bf3766e85eb00d3d567f58fbc8c6fcf`  
		Last Modified: Wed, 05 Aug 2026 01:25:02 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef36fb23390b92287a113fc8f42343da7d664e098a6f593ee3e1a9ad0a791a5`  
		Last Modified: Wed, 05 Aug 2026 01:25:02 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0a8af3807b8d2f12645be4adb8a4ea567437dd7172c1ea9e1e6539f940f03a91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5302618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:700476560d9ac821edffabf0ad27a1e404e3f5395965c4cc04a8d110ed77f71d`

```dockerfile
```

-	Layers:
	-	`sha256:a4bd060e5dcb0e81457d0e9187b131bb388bf3fe1aa5476491e7e4f044e959d1`  
		Last Modified: Wed, 05 Aug 2026 01:25:02 GMT  
		Size: 5.3 MB (5285939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d44c50060533427f56c995198e4d4577ac0206243763119ec55801ea2e0fca45`  
		Last Modified: Wed, 05 Aug 2026 01:25:02 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dd165b30606f088845115b0dbd751532194bac0ff564bb5b5f4fd7413af8b8f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176567961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0c7f5286e31053e9cc657446348032272f4000a14ae64003d3130ec1b3099b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:30:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:30:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:30:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:30:36 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:30:36 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:30:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:30:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:30:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:30:49 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:30:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1237bf6c140cb7af145451b2dcb2bfa9ebcd50edf615a1c21850d1e57f110045`  
		Last Modified: Wed, 05 Aug 2026 01:31:09 GMT  
		Size: 91.5 MB (91542236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ebf823d25f8236215b1e993c0a1062622073d6ed8d04f608d6964f7bbaafda1`  
		Last Modified: Wed, 05 Aug 2026 01:31:09 GMT  
		Size: 56.3 MB (56275784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7617831be928eb88a38fcd544a676505a9d670ff8ad89311a544d8678ade1766`  
		Last Modified: Wed, 05 Aug 2026 01:31:07 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9af0b682aa12e94fe0a3a8d25d57a04090554acd903fcb433b9f37836bedba8e`  
		Last Modified: Wed, 05 Aug 2026 01:31:07 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5dda3c4412c85767a3c931aec0cb0f78d9fa3410a585f1cca0f6228c2ea6589b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5308512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1b2d2f1cf7615be7825e05c0476425197de0f29b340461419c0f25690abb058`

```dockerfile
```

-	Layers:
	-	`sha256:a829783daa863f3ca9075df93226928c077adc4865c7eb610535f13a5f4deec3`  
		Last Modified: Wed, 05 Aug 2026 01:31:07 GMT  
		Size: 5.3 MB (5291692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7184912416de074349afcb4a99f068d4db170a3c202e2968ecf6577f2159f032`  
		Last Modified: Wed, 05 Aug 2026 01:31:06 GMT  
		Size: 16.8 KB (16820 bytes)  
		MIME: application/vnd.in-toto+json
