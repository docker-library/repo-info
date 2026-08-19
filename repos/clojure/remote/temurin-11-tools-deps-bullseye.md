## `clojure:temurin-11-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:cf8476abae946d58e21970da3f287704021eaacaa33f944f6a258721abf6b5c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:28b6d663d8b6acf267820b81cc8412c0178d4ecc7f6a880f04a3ed5c8bf11a8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266188958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a09047e3d6b6b32436815918405c1587fef38ba881835904694a7dd03343d65e`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:43:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:43:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:43:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:43:00 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:43:00 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:43:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:43:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:43:13 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973ee73861509e70e81a2395e11bb3696725e1f8f2000410ba5e8b8880076bb3`  
		Last Modified: Tue, 18 Aug 2026 20:43:35 GMT  
		Size: 145.9 MB (145884873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a84edc7338cdd57573535fe12a930c723e7c0795983b8527e47db79d66c4025f`  
		Last Modified: Tue, 18 Aug 2026 20:43:34 GMT  
		Size: 66.5 MB (66526423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2e7ea32ec7fbd12b6e1698c7e30f9c541a369519cfa802b35acf8b7144b310`  
		Last Modified: Tue, 18 Aug 2026 20:43:31 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:25bad2c4c1870a7cdd11d5fea58998a9dcddff32bac32b0ec50cea4d3ca41069
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7444531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a105f04f801142dd5f08c35f78c44f48c8beeb2c2893a4015349166bc7d04b10`

```dockerfile
```

-	Layers:
	-	`sha256:ea00747176b859cb5e1889274ce5fb4ea2dedde5eff0c6f4b9b19c430f3ab5a5`  
		Last Modified: Tue, 18 Aug 2026 20:43:31 GMT  
		Size: 7.4 MB (7430168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e314684384752e1ecf04cb5e3bf1db46fccac90fc0892b63ae30b6bce0bee7c`  
		Last Modified: Tue, 18 Aug 2026 20:43:31 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e56bf7ea24d64d055bb90104b283662a3553436104a8ecfe2c9664673730272a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.5 MB (261534165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df13d9fb2e8558a593a9caf1eaf550c98247555959af3d4ab52c2019d0e2f5c2`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:43:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:43:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:43:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:43:16 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:43:16 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:43:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:43:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:43:29 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85efc5559bfacf6593dcc702d0438446f3f7b2b1874ae7d978043de3b1fcf787`  
		Last Modified: Tue, 18 Aug 2026 20:43:53 GMT  
		Size: 142.6 MB (142582127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa0464bafff03e65c7b53302bf787d827bccf117b5588ea2e7051401b02c620b`  
		Last Modified: Tue, 18 Aug 2026 20:43:51 GMT  
		Size: 66.7 MB (66690493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d250cfb0bbce93c9b06f88d564c49b256e47ccd6f1c0fff9e77b1ae84a1d11`  
		Last Modified: Tue, 18 Aug 2026 20:43:48 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:10a764e9a71100c91e4e360ee3b9278011eced2c60b53c5b034a6990220cd6ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7450366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d592e01beee95dfe3ecd9ddafde66b8662f891ffd31cedade96553bad0ac4e`

```dockerfile
```

-	Layers:
	-	`sha256:11b0d7cd2e13a5705fb3e69399ca5ed3e9e7cdbed6ca187d985103b3547cf560`  
		Last Modified: Tue, 18 Aug 2026 20:43:49 GMT  
		Size: 7.4 MB (7435885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c38524c949108732a26470f2870443c5e8d8063c7dc9ae3850a159e58e40934`  
		Last Modified: Tue, 18 Aug 2026 20:43:48 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json
