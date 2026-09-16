## `clojure:temurin-17-trixie-slim`

```console
$ docker pull clojure@sha256:15f6ef3ff2c727aa45522b201a29b02ab58ba10e263614de8b17f04249055b70
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b60875e99ddd816aca4176ce52e99a64f3088dd806058970689c10eedc83a59a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249946895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddead96d49e09ce0b97c63f4acd5cc2cbfa17b315ec0852480843ffed424c89`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:34:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:34:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:34:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:34:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:34:52 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:35:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:35:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:35:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:35:10 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:35:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd42695305d52bc893b94edd3214c2c8a35513673c49b12a2975e417145f774f`  
		Last Modified: Wed, 16 Sep 2026 04:35:31 GMT  
		Size: 145.8 MB (145822700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f65afd040feec99a2d624a5f3a4d55941af10f6cb33277fe7074f685c96e1fe`  
		Last Modified: Wed, 16 Sep 2026 04:35:29 GMT  
		Size: 74.3 MB (74330493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b79571b2efef01f3fefe4d42a845f5f05cd8d09f34ff632bffea0c27b4b31a`  
		Last Modified: Wed, 16 Sep 2026 04:35:26 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2778f4cd6df1d3d0cf3cfb03bd644b07861ab41104400d9c340f65c97f35686`  
		Last Modified: Wed, 16 Sep 2026 04:35:26 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e31c2813d3ef3c7bc390d942f8bef8e8c27b90d984780c1af509bf5000c9e7cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5273598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2666afc8d04921ebccd8cc0dc3f8eda65ca10098e941f709b96c9f5b03d9b2f`

```dockerfile
```

-	Layers:
	-	`sha256:6cf0dad3b66b68df6542e3f3d371862084d82618ccbcb9623a734cd24f531d3a`  
		Last Modified: Wed, 16 Sep 2026 04:35:26 GMT  
		Size: 5.3 MB (5257632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7b6db0a4688897cab314bc4f067fd5395c9ee7a7414a84f66c3c9fa546ffa76`  
		Last Modified: Wed, 16 Sep 2026 04:35:26 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ada40af9838f3503a55b455b09b051d69c91b2ec00b3cd7e51ebc950a7b7133f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249283072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9984199e828bd2ea0f1bc221eea97776e953a6e40c25a57b032b3d597253a27d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:35:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:35:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:35:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:35:11 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:35:11 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:35:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:35:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:35:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:35:32 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:35:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f63a6f22d6cc9ef94b8595f961530764aaf82d08598d24e4331785226e627e4c`  
		Last Modified: Wed, 16 Sep 2026 04:35:57 GMT  
		Size: 144.6 MB (144647463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b76791f3aeb8ae6ee6ceb58182e85aafdbc95d9fb8d0823b8feff1c4f122ee`  
		Last Modified: Wed, 16 Sep 2026 04:35:55 GMT  
		Size: 74.5 MB (74474985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba0a182577aba73240d0bd6f3bb2c064419d3cffe5e1ea4cf667e0bfc97fb5e`  
		Last Modified: Wed, 16 Sep 2026 04:35:52 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d34a789af74819000b45b16b6b8fb1a559e1badff80c57bcfcc5d2436cbc3eb`  
		Last Modified: Wed, 16 Sep 2026 04:35:52 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:12f54a4b053d9a07d3ecca82257196f975ae497c33d844ddefa029287834132d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07233d58877c9cd111fd15a89dbfe3c0cb9bc6c135bdf2812652bb360e0d5853`

```dockerfile
```

-	Layers:
	-	`sha256:d830d18bf16c371f090c00b9e301d1349b3aba7c0850b9a8bd7ebba33a78d581`  
		Last Modified: Wed, 16 Sep 2026 04:35:52 GMT  
		Size: 5.3 MB (5263393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75b92f4ca8c0a94f907df084168187211a39e35974f7840bbafbf74888584317`  
		Last Modified: Wed, 16 Sep 2026 04:35:52 GMT  
		Size: 16.1 KB (16082 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2d114c919a005f748b91e153a20a712b6180b944902b6e5b58f95ad0823cd475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259447071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9691f55629f38708bdf252492efabba71f1b5ce2601317435229c72f37fa7a1d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 10:43:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:43:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:43:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:43:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 10:43:53 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:50:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 10:50:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 10:50:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 10:50:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 10:50:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43f64ae923a17a4d37ebd2765cf1cceab85262a12d43b090b263771493ac70f9`  
		Last Modified: Wed, 16 Sep 2026 10:48:06 GMT  
		Size: 145.7 MB (145674282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101da822e9e4bd1438401227d2f1abc08fee69a240a5e4f49cbf2b342d259aed`  
		Last Modified: Wed, 16 Sep 2026 10:51:17 GMT  
		Size: 80.2 MB (80156287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:042c8fd394e87fb4dce7530e5e31521e19c98710fec54e0cecea2d23398f630b`  
		Last Modified: Wed, 16 Sep 2026 10:51:15 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7feb1ce9d07402ee8e59f9f94a6fa6dfb4c7d3261ff9da12ad2b72ac7c6dc9`  
		Last Modified: Wed, 16 Sep 2026 10:51:15 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e16d229f3f8326390ea6ce4d878b1a0498115224a6d9ebc157c6dd55301268e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5278017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65e084c4b6df73a1fda68db4ee26ebe5436464cd3beab4aec418145a437fa646`

```dockerfile
```

-	Layers:
	-	`sha256:636501888f077279d21d92c6fd427f7c0d9bd61baff8925e19b0d88edf2b0f96`  
		Last Modified: Wed, 16 Sep 2026 10:51:15 GMT  
		Size: 5.3 MB (5262003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:890cf24cfb265d941ebecdb4bac639d115c1a05aadc08a377d7304a5e3bfeb4c`  
		Last Modified: Wed, 16 Sep 2026 10:51:14 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
