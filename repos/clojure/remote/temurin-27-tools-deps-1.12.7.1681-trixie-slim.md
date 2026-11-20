## `clojure:temurin-27-tools-deps-1.12.7.1681-trixie-slim`

```console
$ docker pull clojure@sha256:933d1670daa472726b5d79eb03da28c0f8a7972238df77f105dc7c57f1e3e679
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-1.12.7.1681-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b043d472e6510504ed43ac2e059b76e63c431f750632762b4e38842c0e9bc685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192495488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21d1bdf19387a823b9df7f607073736205c62d1aeb7d42a0d95b55f241a3fdf1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:09:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:09:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:09:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:09:26 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:09:26 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:41 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d06dbfe8cdaf51fde4e37a78b3723e0e50899f66677b6a8f2d457f7ee8d5b9`  
		Last Modified: Thu, 19 Nov 2026 22:10:02 GMT  
		Size: 93.6 MB (93647847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c045899f6c6ca3f1da01db5786c29d7a036dd59e1ab0db311f31ce121bc57b9`  
		Last Modified: Thu, 19 Nov 2026 22:10:01 GMT  
		Size: 69.0 MB (68989962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7967b1f73a8488ca4accfa1900306fb8e60ea4fa230d66f0915573c2fe37703`  
		Last Modified: Thu, 19 Nov 2026 22:09:58 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be48ca7478840583ae87a889c84dfc27b1c0dfd1dac95ad7717a0f525f29ff67`  
		Last Modified: Thu, 19 Nov 2026 22:09:58 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.7.1681-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:58b978274a2a79180572793a8aecbde02f68715571c1ad8003f1fb4233d7d895
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82b3ec7fda28d6f52d7f514b9b68c0f4c8627996ce47a35cd4eb074d887df1f8`

```dockerfile
```

-	Layers:
	-	`sha256:342f9169d56718effba4ad08172634040fdfeed25f2176d9c3fdec85614b84f1`  
		Last Modified: Thu, 19 Nov 2026 22:09:58 GMT  
		Size: 5.2 MB (5225721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96a9c0ef526b063751d9cb6d8937b9da429cc103bbadc2bcbe8fb1c0d14f8ba8`  
		Last Modified: Thu, 19 Nov 2026 22:09:58 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.7.1681-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c4df930c0910262d967dfc9b0c354f1f633af19ab28b8498ceee31ab8d0e4ffd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191682036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:293d926f1d7c0ae655f548777b145917b849179ca880b960f2b1837e50de6e9e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:09:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:09:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:09:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:09:25 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:09:25 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:42 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5da758a61dbfd485ac32bdada42ced1b6d58d511e8a385cf0334acfe1cd1b71c`  
		Last Modified: Thu, 19 Nov 2026 22:10:03 GMT  
		Size: 92.7 MB (92660447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c5380fb71ac22750c9ef0a1c0a569c38978a8372389062cd414d67da6729fc`  
		Last Modified: Thu, 19 Nov 2026 22:10:03 GMT  
		Size: 68.8 MB (68806004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2064ea99f0cc58b468bf357d983fc2a896ae59faea3565ec63f2c8d7e675277c`  
		Last Modified: Thu, 19 Nov 2026 22:10:00 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f05c5e122f6df918ac7a3f1fc47bdfc5a6ffddd13d2404fdc2cdfe43e1a33f73`  
		Last Modified: Thu, 19 Nov 2026 22:10:00 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.7.1681-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:03a7314e197f1041b45d02f16a00dda907bc0855745f260521633bfb6dd09299
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5247555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e00e09278d5ec4b33e111f8c1357b795a6d73a0607e741e1fc7144f62e23c428`

```dockerfile
```

-	Layers:
	-	`sha256:be898e01c81147ad6ac40365e4c9c35f2219d1a5ef14e40ecf952c00f5b70547`  
		Last Modified: Thu, 19 Nov 2026 22:10:00 GMT  
		Size: 5.2 MB (5231479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f865bba71e11e3de34260814c212cf8d5bb892bd60e1a1df56a4ac87218a1e4`  
		Last Modified: Thu, 19 Nov 2026 22:10:00 GMT  
		Size: 16.1 KB (16076 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.7.1681-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:0e3445c3719d0104902201b74ae69ea4a765bcaf958952cd046ce077c5fa9cc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (200006763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d66c6c05d67dce54cbacbad63b13dbb43f877631957c7cb76c2bc4d074b45f8c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 02:00:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 02:00:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 02:00:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 02:00:12 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 02:00:13 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 02:01:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 02:01:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 02:01:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 02:01:13 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 02:01:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e7fe9f392cfbbd0556505dee7a46f639b44ed73c6cc83e7269585b971cfb2d`  
		Last Modified: Fri, 20 Nov 2026 02:01:56 GMT  
		Size: 91.9 MB (91925716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a3984641227d725b49ba36062e2d85df1ce7909e78f30a142184fc0fef9c5a`  
		Last Modified: Fri, 20 Nov 2026 02:01:55 GMT  
		Size: 74.4 MB (74411851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e12c6a5ab7c122f3e91996f57031d7401fef28704e80fa689ec40e2404dcd6`  
		Last Modified: Fri, 20 Nov 2026 02:01:52 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2ac3ac577a6b8eb72bf78a0f398a48a18ffd5ad2a7e3b363024ff722a6c674`  
		Last Modified: Fri, 20 Nov 2026 02:01:52 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.7.1681-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:06d52248a62b1fda4d7d6077466e8198600d926ef2bccc0975d09bffa506dd55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5228174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d326eeb62a3f38f40f6d34a9c1f2ba5c49563678268be4b77745b651355caadb`

```dockerfile
```

-	Layers:
	-	`sha256:5d75601860482cf680132465496fca8d746bacb1fef38ea86099d49770c1e29c`  
		Last Modified: Fri, 20 Nov 2026 02:01:52 GMT  
		Size: 5.2 MB (5212167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4a8fa0b27ba1d1e7421986628decfd6028a289a552d66cc55edd8a1906e02ee`  
		Last Modified: Fri, 20 Nov 2026 02:01:52 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json
