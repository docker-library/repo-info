## `clojure:temurin-21-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:d2879ff93594f9252e8ca48a4f7e1563dfbbe21639cb61e378bb7626cc9321bb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:30659e044bdcbb2d0dc356de9126456f6b16ae6d1f93c1bcca494e30ab2f2575
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278425347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f4d4765507badb8f514346466fdb56ecf46b6a640bf40118d265c5a61d5d190`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:18:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:18:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:18:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:18:17 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:18:17 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:18:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:18:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:18:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:18:31 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:18:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d18c007d28af8d8b0bc57ae9916eceb626115ba8363a2e4cb6ed4f55082cfe23`  
		Last Modified: Fri, 21 Aug 2026 19:18:54 GMT  
		Size: 158.1 MB (158120333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be28f72a6d9f6b96fc3b686efc91543eb5c54eefd1f0f4fb3a39871a92a0f2f`  
		Last Modified: Fri, 21 Aug 2026 19:18:52 GMT  
		Size: 66.5 MB (66526951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d2991e401b14fde60e5cdcf5c3b988e3c6facce41d922cbea8e1f70ae48ce7`  
		Last Modified: Fri, 21 Aug 2026 19:18:49 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fcab32fc232be96c4b68f14b2c6499de2c68f85d8696727d9fe07431caef05b`  
		Last Modified: Fri, 21 Aug 2026 19:18:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:be618918de66aa29fcd7bb8c96d260d99e9fbb6456462ae7bb6ad7064b7ac943
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7428434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ed90f2dd97a2e27a2dfba1eb7dc1044d7c7c040c0edc10b9e761b52917c7fd`

```dockerfile
```

-	Layers:
	-	`sha256:c9e0113999972589075898200c827282825eb5075a82b8b3e14c5365508577ec`  
		Last Modified: Fri, 21 Aug 2026 19:18:49 GMT  
		Size: 7.4 MB (7412502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:911121d4b886b202e1b5963c4764c35fecb56a88bda8bd35e76752f913927023`  
		Last Modified: Fri, 21 Aug 2026 19:18:49 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a3535778b42b0aa5d859ed053725ee3caddbf49d9372a0e59e53bc5ef589da48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275354180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1df9c29de5258deaae9fc6de399e812f369cdd5a265d695241b4caaaf716bdc5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:07:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:07:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:07:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:07:10 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:07:10 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:07:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:07:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:07:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:07:23 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:07:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33dad7703e636ae93111a42e4c525bd4a8b8f7456cae6da48e928bd68a146f70`  
		Last Modified: Fri, 21 Aug 2026 19:07:49 GMT  
		Size: 156.4 MB (156401969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aabe4f21e1f1898101661f2351a4715e8ca8a08cc5f6259c5896c819561709a`  
		Last Modified: Fri, 21 Aug 2026 19:07:47 GMT  
		Size: 66.7 MB (66690267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b23292df24e87fb4d9ec0523b795a504f21478e83fd87ca55fc149f37284b69`  
		Last Modified: Fri, 21 Aug 2026 19:07:44 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d94457fb3811d43703d1333c3d6d170408fc3a2488dc7d0bf0e14a317c57a521`  
		Last Modified: Fri, 21 Aug 2026 19:07:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:ae91fb227fe2e317a6caee59954f7f957c9bdc9ac991c515ff6a69a4ae9a7a4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7433649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5e28dc07b669920afdc83a6b86b32fc88be6c93bc81598e354943bdb5c6e2e7`

```dockerfile
```

-	Layers:
	-	`sha256:242615672e6deee05923af13cc6a5fcce98ad10a3febb52f3b2c39a6c8a06b0a`  
		Last Modified: Fri, 21 Aug 2026 19:07:44 GMT  
		Size: 7.4 MB (7417601 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf94d5de7657287e9f96fadcec41ae5d23b09b9e1bd90b56db8c2084ef232dcd`  
		Last Modified: Fri, 21 Aug 2026 19:07:44 GMT  
		Size: 16.0 KB (16048 bytes)  
		MIME: application/vnd.in-toto+json
