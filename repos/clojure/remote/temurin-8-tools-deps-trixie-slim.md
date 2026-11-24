## `clojure:temurin-8-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:a424159fe574da93800794938332a317e30da43bf017189626c44abfeb9bb1e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:98e67b272941b0d74f91ebe216cab836888f9296bee51bed42032c222daab45d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.0 MB (154040420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95cb76640383b03315b81101d7681d26291a3e3a167aa233c8bffed499ca344c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:08:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:08:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:08:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:08:50 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:08:50 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:09:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:09:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:09:06 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e32bddd53ab511c0de3087f5a690410c3389e07790c2e4b44cafb853057014`  
		Last Modified: Tue, 24 Nov 2026 05:09:24 GMT  
		Size: 55.2 MB (55207905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cf58324912df570543903ab1bff0d76c7768d8fb729266820b7b32f4f6f00c`  
		Last Modified: Tue, 24 Nov 2026 05:09:24 GMT  
		Size: 69.0 MB (68989691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:864037de351a25995d931d8e4c9d43b70719acbdf7c91bfe0ef992cfd31e8b83`  
		Last Modified: Tue, 24 Nov 2026 05:09:22 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:98a3164f7023f4775cce2f381b9493ee72aaf92b7755e195cad4fe4065ee52e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5396849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3bd9e018081b9973d1020de32c2ef4d7764b2609374260efe7a65217394859a`

```dockerfile
```

-	Layers:
	-	`sha256:f12c4c2fd02f20083afe4f5f97bc4eab5d2d02377b6eb058b8f04ef3a2f40e07`  
		Last Modified: Tue, 24 Nov 2026 05:09:22 GMT  
		Size: 5.4 MB (5382467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98d93df348bdc1fa0b7e6acf097040f2e47d79460a1b5e4882146006d27441f8`  
		Last Modified: Tue, 24 Nov 2026 05:09:22 GMT  
		Size: 14.4 KB (14382 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:60370adaf06fb3d61764fed70c95f9cb2fcfb3290bcc40ab216f1d6569b7c704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153276756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0bcb164f54a5332edcd830498d6b253e5c77af974bddc96c601b838dbb914dc`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:16:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:16:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:16:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:16:32 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:16:32 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:16:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:16:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:16:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5790a41ce7c0a10303aab9aff5492d6da1616edda5ac904cc6121dee9f01248`  
		Last Modified: Tue, 24 Nov 2026 05:17:07 GMT  
		Size: 54.3 MB (54270340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58ce99670f030b435137bfb235f8d14133d0c9e2f8782b77a28a6e4ab955b24`  
		Last Modified: Tue, 24 Nov 2026 05:17:07 GMT  
		Size: 68.8 MB (68807738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8da7e114850d64deb659ae7757c65395f57fa530098db9282d3231f832b4b3c`  
		Last Modified: Tue, 24 Nov 2026 05:17:05 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:15d06a0e1df02ad2716252f417a8851e8a1886aa4fcc981bfef2d12542856501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5403428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf99f90b42e7931540c74796f752abc9e1eee79254a849b74ed8c95442e4c001`

```dockerfile
```

-	Layers:
	-	`sha256:81185abd9a309e8a506522fd208e238bb5f014fe4e35080ae94a0eaf9fe1af01`  
		Last Modified: Tue, 24 Nov 2026 05:17:05 GMT  
		Size: 5.4 MB (5388928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fa5675928154ca5e31733cf2fe1e588b564a0eb71d2f110a3aa43190b3ba948`  
		Last Modified: Tue, 24 Nov 2026 05:17:05 GMT  
		Size: 14.5 KB (14500 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:858410bec4825e311a92e203c0245c3566dd0154f0373ed1d42b6de75cf12e0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.8 MB (160752593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13080074e07cd3487f751ae811d2c60f0d5ad517ddb5e3373e012db187082c2b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 12:22:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:22:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:22:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:22:28 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 12:22:28 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:23:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 12:23:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 12:23:13 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de52883c5e2d1773f78bd258032097faf71b3569a0ee3d30419e3e8473b4c59`  
		Last Modified: Tue, 24 Nov 2026 12:23:51 GMT  
		Size: 52.7 MB (52689134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a87092e09b62517b6dc54c1e7599d641ca529058148c041f865bbde23bfe80`  
		Last Modified: Tue, 24 Nov 2026 12:23:52 GMT  
		Size: 74.4 MB (74410179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32eade6cea2b142c9d1489cdc38a410bb4501d41a1eac55117427e10bc0b711b`  
		Last Modified: Tue, 24 Nov 2026 12:23:49 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8a9e423edbe6d5f2b9c83741cbb9c3b954f108c2da74fdeba3d02e8ae73e6e46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5401863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6ca2c9510e74efd8c3defa797c8a18ca0c168909136f8afcacef5ffec35e14`

```dockerfile
```

-	Layers:
	-	`sha256:9e2711c7dc4a5b20e0fa1af7b08a76b26fff0af0719224d610fdb96fe15d5f9c`  
		Last Modified: Tue, 24 Nov 2026 12:23:49 GMT  
		Size: 5.4 MB (5387433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55f14deee9772489ef11a1a7e660ca3d938f19faa88778a9c88f913962ae20f1`  
		Last Modified: Tue, 24 Nov 2026 12:23:49 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
