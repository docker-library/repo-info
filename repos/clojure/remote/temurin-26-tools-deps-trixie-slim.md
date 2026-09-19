## `clojure:temurin-26-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:256522961a2b3e1b6c787e9ce911649040ec4792b877831ecf8999122b89f03e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:7118c82710370b39955ec114b9d7a197a4f43d1b8057d1a86800a0b95229fcc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193386771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc72f45fd757f258137818af31f1d22ce31176083db61536a43e33ef90d4b543`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:18:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:18:26 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:18:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:18:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:18:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:18:41 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:18:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ea3857049bdb7dbf206cdd7f36b07862db282959d55aab7b21687c41b8106a`  
		Last Modified: Sat, 19 Sep 2026 01:19:01 GMT  
		Size: 94.6 MB (94563699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f1f14d38241be0c408d7d14861995c761498302eb8a42bc3454c9798f963f8`  
		Last Modified: Sat, 19 Sep 2026 01:19:00 GMT  
		Size: 69.0 MB (68991614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67b5ec0ce7f7b9ce132214128083ff06c24031d3c791c6b9ee1ce4a805eac3a9`  
		Last Modified: Sat, 19 Sep 2026 01:18:57 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9b2423e45efb7a8943a56ecc2985d415859318fe97d6230fce00a93ad13e04`  
		Last Modified: Sat, 19 Sep 2026 01:18:57 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ee60b4cb514f269500873109323fabd66ba0cac969851383431718a60eeb282f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0e44f01611974941aaf827c0e975a49635d462048336b2d689f635e7decdebf`

```dockerfile
```

-	Layers:
	-	`sha256:42cb9f0dea69073e996a38798f4a36453e906d1ea9479997e0baebb511578ec5`  
		Last Modified: Sat, 19 Sep 2026 01:18:58 GMT  
		Size: 5.2 MB (5228201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e46e6620329114ebb5084da304d171b95c6767f70a22121248ccc9361f1e1ac6`  
		Last Modified: Sat, 19 Sep 2026 01:18:57 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:af8d6ef816d10d4d415910da08f1c40ecba8dbbabe42b989b7c0bf3e36f0f050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192540982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b915ce8ce4de0bf681da40049178527e02b9c54d6c8e94f5675833110f35bf1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:26:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:26:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:26:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:26:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:26:00 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:26:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:26:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:26:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:26:18 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:26:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a39891e59a62b61b51e3e8707b8fa5bc3653b2664d6031b6d7c4d9961ad85e0`  
		Last Modified: Sat, 19 Sep 2026 01:26:39 GMT  
		Size: 93.5 MB (93541571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a32ba182691b7338da074afdc59d8b439a409f6c39fb730b1a4d6e84eba5955`  
		Last Modified: Sat, 19 Sep 2026 01:26:39 GMT  
		Size: 68.8 MB (68808680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f865a2f213a30e935f10981eb8b1c0342dac6e7a25f43158958b2e9e2777efc`  
		Last Modified: Sat, 19 Sep 2026 01:26:36 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6b392a0aa77def61940b5754671452f518e024c20cced72896687d49ff4574`  
		Last Modified: Sat, 19 Sep 2026 01:26:36 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c2926727ee23763bf1be57cfcfe2c81045a15d0f8aa80d06eec4feec8a9e378a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5250034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f056adb7893b4e02d8231e080dcb7fdfaecc343533813948f62ebd01219772cc`

```dockerfile
```

-	Layers:
	-	`sha256:d92af8fc54dba856fd0ff933888bae8d467512fedf3e178313d6a9740696e142`  
		Last Modified: Sat, 19 Sep 2026 01:26:36 GMT  
		Size: 5.2 MB (5233959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a2e89f480ff2b1ad6cd7d5c3e28a535323a096e860f35cb43e25202982af9ca`  
		Last Modified: Sat, 19 Sep 2026 01:26:36 GMT  
		Size: 16.1 KB (16075 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:bd88a3387a05a503d1ca195feafd41f31e153a11161c587e0d44e6801fcab9dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 MB (201405255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a150028a90c0bed01e0744c58bf9057451824950372f4ba3e40ba7159278e5de`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 08:30:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:30:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:30:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:30:14 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 08:30:14 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:36:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:36:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:36:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:36:39 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:36:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a809355a425dc7d77eea191938486c645b792b5ac349fa8b18c505028a19df8`  
		Last Modified: Sat, 19 Sep 2026 08:34:06 GMT  
		Size: 93.4 MB (93350809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fef07ba6df29ba4fd87bfc4260a95913eeee10ccff5b622bec96bde8fbc46251`  
		Last Modified: Sat, 19 Sep 2026 08:37:11 GMT  
		Size: 74.4 MB (74412169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e903f312195ecea76a383f4ed268c237ee60383d7a683186255222bbe8497481`  
		Last Modified: Sat, 19 Sep 2026 08:37:09 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a873bf69620f84589596a38c1b84d39b41c6a28bdc1b76eb199ce570efee5043`  
		Last Modified: Sat, 19 Sep 2026 08:37:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ac93de6796b82869df930a1701c26feda9bf3e34ec0c09efb92dd5d33b697f78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd464cb03dcb4770f86889fdf561cb006afd42aa15b5178a815adfb3afb8d17`

```dockerfile
```

-	Layers:
	-	`sha256:17da144295845eb215d2c64b33b27f5447b1b58e3c2afa33e0ff003e8917defb`  
		Last Modified: Sat, 19 Sep 2026 08:37:10 GMT  
		Size: 5.2 MB (5216508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:905cbc4ffd6718ba241eb5f1e3e5391539b5da8a2b9c3f5c5482805889088e26`  
		Last Modified: Sat, 19 Sep 2026 08:37:09 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json
