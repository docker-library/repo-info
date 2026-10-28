## `clojure:temurin-11-bookworm`

```console
$ docker pull clojure@sha256:f456d840529221d907a3704954440fe1d187383b25f62dfd64bea2f4a025c9b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:75f846a979a1380b9763dfd6c82e7b71d6390eb9c4a61bfd8fd1dfa29c6f6067
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272386711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88518f60a637bb1052ab829feefd66c073a593b36d33c80ac508c686c8f1baa1`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:10:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:10:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:10:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:10:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:10:55 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:11:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:11:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:11:09 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b7b3a31c37f8b1ac4da57edb5cadbe1b2f48b9fd6afb261a5f150ffbf218d8`  
		Last Modified: Wed, 28 Oct 2026 02:11:32 GMT  
		Size: 145.9 MB (145864299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd2133de5d97bee1476dc489d43012846bb7e9597aa9b4ec1025e8f0e71fe1a`  
		Last Modified: Wed, 28 Oct 2026 02:11:31 GMT  
		Size: 78.0 MB (77997213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb2ce3c911c60660c59bbfe6e8f707cd1fbe4c2a50acf5048007d2aa006b36d1`  
		Last Modified: Wed, 28 Oct 2026 02:11:27 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d8a290728c7a4baef558b2c0b3c2f9727bd0af0c7dd73961793991add97e1e31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7412448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cbb3b99286f7514abddef00e968e01200c0b62436306120c1d54ac25961a1d4`

```dockerfile
```

-	Layers:
	-	`sha256:04b6ffafdd5acce38bd22797106432a16392403eb8da30a20950b06dd1d79e61`  
		Last Modified: Wed, 28 Oct 2026 02:11:28 GMT  
		Size: 7.4 MB (7398085 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7274707484f3cfa1b29953128f66db985d779ac9ca72576df3b85d8e627c70dd`  
		Last Modified: Wed, 28 Oct 2026 02:11:27 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5ee67df932c760f04971f823a4940da27aba45a4d03ec0ba952f62c2685ac271
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.0 MB (268975490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e32354c8f2cf0a9d58ff968d6b16b866180cf2f78b287748c696ec0388d1fe`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:17:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:17:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:17:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:17:05 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:17:05 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:17:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:17:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:17:21 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd92c8e62d65d297e9851e9c7be61bd034aeb2ba290b635d678c163da935afe3`  
		Last Modified: Wed, 28 Oct 2026 02:17:44 GMT  
		Size: 142.6 MB (142576596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b962d3c1e7b86d81cf2ea344d4dfe2683491101598756a7fc9e75517a39fc5a6`  
		Last Modified: Wed, 28 Oct 2026 02:17:42 GMT  
		Size: 78.0 MB (77993076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b18164949d4f555db45c477b048ee07b733e829d73df3a84de675f6ade9ea9`  
		Last Modified: Wed, 28 Oct 2026 02:17:39 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d73a62c098f12501c8a4b50134ce2cdd79d41f93ba62c515e292b6fb71a52e58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7418947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e11a6b6620f4db569efdb4cf45a3d76073a8435c4dde3f4545efe7c22f4afd4`

```dockerfile
```

-	Layers:
	-	`sha256:ba3df32515e448a1a8b89808d48e5da679bacfa565c8416f3810b53953f382a8`  
		Last Modified: Wed, 28 Oct 2026 02:17:40 GMT  
		Size: 7.4 MB (7404466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfb37d4a00b97566117c3366cf3e7b94c69a0137f09447155271a72f1a5e5bee`  
		Last Modified: Wed, 28 Oct 2026 02:17:39 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:96486b9ae1b89e3184fed603f995dec03b148c731e1775b3d2a8eed322656201
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.3 MB (269297292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:343978f43fb7f478d646ffdd9ae8b97f7093a4bce697842ab8b5c17bc92db355`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 09:58:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 09:58:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 09:58:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 09:58:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 09:58:09 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:12:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:12:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:12:19 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4acc757fca417d1cfc1b6862285d3cd733d26064b6cc3a074bc6ba8cdc16ae6`  
		Last Modified: Wed, 21 Oct 2026 10:03:59 GMT  
		Size: 133.1 MB (133095132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23864bf19a6eea5bf2dd0ba45abf5bac5efeb1be7d2f0cb5bf63a692aa35fcf`  
		Last Modified: Wed, 21 Oct 2026 10:13:14 GMT  
		Size: 83.8 MB (83836771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7f41695cd2ebbbbcca5aadacb7d25f8036211de899da8d215ca1f3b2bdc185b`  
		Last Modified: Wed, 21 Oct 2026 10:13:12 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8c6374cc31b4c10fd7f3dc2399aa0111c7051c68f3d2b7334324bb3ecf53b6ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7417870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e29d160d478acdc9c67a63bb00be93fab41f2b8d83a6a82b5418013d059adc7f`

```dockerfile
```

-	Layers:
	-	`sha256:1cbaf1d8241ab878e5a2e4dc9db84697a8adc5435357ee6ea26cd229a8341d6e`  
		Last Modified: Wed, 21 Oct 2026 10:13:12 GMT  
		Size: 7.4 MB (7403460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da4193f9b8db5c02c36823e7537e18ec6f5299f9bf8798f3ef739f531a105a78`  
		Last Modified: Wed, 21 Oct 2026 10:13:12 GMT  
		Size: 14.4 KB (14410 bytes)  
		MIME: application/vnd.in-toto+json
