## `clojure:temurin-27-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:921d1f1972699f09c013b5af180f40dcb6da04c1b5ace8e2cb4b0def9e13df6f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:8c3ec88f6b6402bac2c4b14f4807acf49e3c7f414a52d64945d7546b28e527b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188410429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:326ab220a5a34a5c58d67374fdac5a493f7d141237739de808e9e18a7c0a6e89`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 18:12:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:12:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:12:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:12:23 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 18:12:23 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:12:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 18:12:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 18:12:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:12:36 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:12:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93fd0d864ea1a48debe3b9c6b8a56e4345124db22716003061f4c964c5632b30`  
		Last Modified: Fri, 20 Nov 2026 18:12:57 GMT  
		Size: 93.6 MB (93649643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8509d4f2dde336c5748cfabb7b8c798133b494bf3e70b7f5b7d4ea0ad2573c92`  
		Last Modified: Fri, 20 Nov 2026 18:12:57 GMT  
		Size: 66.5 MB (66511253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2bf512b95426c0478a838a3ed35c22a68a407767afedc6404ec05fe6d8ae6c4`  
		Last Modified: Fri, 20 Nov 2026 18:12:53 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e34861e53ae856b9ffe4f9084e575470142b3e0e0f96206c3e52275b88a39df`  
		Last Modified: Fri, 20 Nov 2026 18:12:53 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c50c9323e8569d4c0bab888856dd1e87a9f0cdee01416201ec8efd198afae72c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5097744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a3aa9e2b91fcc351430cfb573134e9ed51fbbb5e29f73bfd4d58f2365608477`

```dockerfile
```

-	Layers:
	-	`sha256:580d64fd5afacc024e279705123451e1eda3672ab2298d1dd75561885969d7f0`  
		Last Modified: Fri, 20 Nov 2026 18:12:53 GMT  
		Size: 5.1 MB (5081761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca0aad1f2748949e26b097ddc1e19346a7c2cb750019a893d498d778e0c71ca9`  
		Last Modified: Fri, 20 Nov 2026 18:12:53 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b53f17077e7f6b4699cb02b82f9e7faa95c0301d174612b0cebf4e25ba00012f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187303373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d290ae379aa8e348b0ef9f46c43565c0936025c5fe3a30c0097ba0976b8417`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:09:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:09:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:09:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:09:11 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:09:11 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:27 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c16a5e684db0406238f7701935df4dd1dbeabf75dd7eb898f6e3bfcdadf43256`  
		Last Modified: Thu, 19 Nov 2026 22:09:53 GMT  
		Size: 92.7 MB (92660441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec62a34a0fe4b2edde01bce304f6262b0449fb5d583fdba3a3b42c553df8ba3`  
		Last Modified: Thu, 19 Nov 2026 22:09:52 GMT  
		Size: 66.5 MB (66497029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d525919b0f8f631215bc21e9f990af4d0c0d0f3c8a524ad6d03cbccd5638cda`  
		Last Modified: Thu, 19 Nov 2026 22:09:44 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333e3ce05570d463713e5d69ff5cab2b7f45e0b3756c60554b8a3d847f83f6fd`  
		Last Modified: Thu, 19 Nov 2026 22:09:44 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c6978642fc278a86f0885b092986f9fcb4f426fc6dedafa43955a43a8022f0de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5103628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630dab8fb403af0e83a9e020548fa026f24efbd48403a8beb4e06d485d3a4c24`

```dockerfile
```

-	Layers:
	-	`sha256:4179af5057a82375feb1ad48d725999fd6b3ced3ca90aa5030d9501e7335b9c8`  
		Last Modified: Thu, 19 Nov 2026 22:09:45 GMT  
		Size: 5.1 MB (5087527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3ee1338f87cb2250216340aae8fff5b0a0e4785cdc3464e6257a4c9e3667ece`  
		Last Modified: Thu, 19 Nov 2026 22:09:44 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:6ca907e7c8f190248759ea547280dcd0bef572e65c3f5394679e53e107032658
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196362524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:157617b74ad915dd1e138ac1015bd4826b36bd53fb3b2bd9e34b63edc8c735e2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:57:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:57:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:57:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:57:04 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:57:05 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 20:09:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 20:09:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 20:09:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 20:09:46 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 20:09:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac00a024d1c11ebe36f958fa3116dcf1da9fcec9c546b4ebb16040d750c0bb4b`  
		Last Modified: Fri, 20 Nov 2026 20:01:23 GMT  
		Size: 91.9 MB (91933325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a30dc3c0e8a2fd5de696fc38306c05a09efc63ab1a9413f8f0b01a8ac84cd3`  
		Last Modified: Fri, 20 Nov 2026 20:10:24 GMT  
		Size: 72.3 MB (72334093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab1507bf14a96d472835364cfa80c448ff2982f1d4898b33ae1dc220f033fdc`  
		Last Modified: Fri, 20 Nov 2026 20:10:22 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adadbb1cce7ed171a3d819339d57d65105653b7ea0f43040b30f21b5126b7ef9`  
		Last Modified: Fri, 20 Nov 2026 20:10:22 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e5fca9993f06da08dadb634901b43d89b4ccb66f0d2e07901d2a442aef42258d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5085024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f297370a61c270678278b998ebb1406da129af6ef6b42557184cf3969684895`

```dockerfile
```

-	Layers:
	-	`sha256:7c27214abe087d8c6f8075dc88e9a27e7c4e77b7ed355af73167511bdd775150`  
		Last Modified: Fri, 20 Nov 2026 20:10:22 GMT  
		Size: 5.1 MB (5068994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4099120172a21eaf33911800b82e093ed711a268ce775456eba4f4db492e56f`  
		Last Modified: Fri, 20 Nov 2026 20:10:22 GMT  
		Size: 16.0 KB (16030 bytes)  
		MIME: application/vnd.in-toto+json
