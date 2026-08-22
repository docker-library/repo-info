## `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim`

```console
$ docker pull clojure@sha256:abd7416dc5642456443e2c836b895683c3f5e2273b248f22240ea16fc015b7b7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:caa8d461495b2e32dbd25b55bcac4396f58225a1fa98c82d92002d009c3ef705
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.3 MB (193310769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50e77a21121eb0e1ae8f5ca81c2c4adbe95eaea20b9fd5d769d2f7f9024b391`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:24:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:24:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:24:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:24:29 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:24:29 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:24:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:24:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:24:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:24:46 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:24:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a534806f0a20c310629f03330b87cb9b3f84507f76fb56b1e36468c21086253f`  
		Last Modified: Fri, 21 Aug 2026 19:25:09 GMT  
		Size: 94.6 MB (94563780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06050c9b58f3ceec7bb0dfe9304ccefdb5344d587214e716cb3a4d01ab3641e`  
		Last Modified: Fri, 21 Aug 2026 19:25:09 GMT  
		Size: 69.0 MB (68965185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27ef33b5d4fb37feb5950190534967ff739d884a169060b28e50d4f092ebe9e`  
		Last Modified: Fri, 21 Aug 2026 19:25:05 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7dfe5dc813db7b5bd68610b24493774c767cd728558660355b7748811d3f3f0`  
		Last Modified: Fri, 21 Aug 2026 19:25:05 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0eb30afbe7ca936a0371bcfc5e043c1852fc8478c378611453cb1a7354511d82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5238216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce0fb01a9237443bf548b1852948e10c3b2e2755c49b7fbd0409562cc4ee0f90`

```dockerfile
```

-	Layers:
	-	`sha256:920e9aa60f8741e1a58fbc18ca30af3b93925b9765c829bdeabf21193710bb46`  
		Last Modified: Fri, 21 Aug 2026 19:25:05 GMT  
		Size: 5.2 MB (5222257 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa912e9d072643c62a65f2a99073c7f16931c21381da36e6c3e4544115923815`  
		Last Modified: Fri, 21 Aug 2026 19:25:05 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c898dad4439458d1c6ba7014a3a89fa979c3c20295f9230a12f70e8314a3e39e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192472018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad123af2e89141a290608b4e0341380ba30d1b30bfae88e8dd0970f8f0e7e4d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:13:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:13:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:13:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:13:41 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:13:41 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:14:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:14:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:14:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:14:00 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:14:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:465947e23cd3e9a482ed59e58786361dd757dc5608d2e189380df2385fff8c5a`  
		Last Modified: Fri, 21 Aug 2026 19:14:22 GMT  
		Size: 93.5 MB (93541550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7fed878e1a6c56005a64158e30d4ce72be2e9b0a60a3a6cbb783c9b764f662`  
		Last Modified: Fri, 21 Aug 2026 19:14:21 GMT  
		Size: 68.8 MB (68785818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a321ec6e19a4a3fe44a2bd61ba7e74babd299e2ac8a3c2ceb0b0dbae2fce5bd8`  
		Last Modified: Fri, 21 Aug 2026 19:14:18 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53ab10c855d51fbe6bd8c41b68f6ed33730cd14d20507ad2d22c3fed49479a5`  
		Last Modified: Fri, 21 Aug 2026 19:14:18 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2cd876d4b4e3b11f0b121594458b35a38d448ec546adfe82ea99d872ca4642e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e171c4f7156834a37172ded642e1aa0810d41e49edccef636474689bce40aa`

```dockerfile
```

-	Layers:
	-	`sha256:73eaf476c40847008044e98d4a9bfe3ead577e324852b9f920787cf8bbe85579`  
		Last Modified: Fri, 21 Aug 2026 19:14:18 GMT  
		Size: 5.2 MB (5228015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1482cba542fcec3d5955bf86f866cc299eb0e24370cef4fccdd75a52125ca98d`  
		Last Modified: Fri, 21 Aug 2026 19:14:18 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1b41051a4dbbd85e5c904d16369ba5a396fc425672532588d48637b9f8510e58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201329823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98836c541c48b55a46345f6cd4679bf2df5866c9319d724fc3a08f46ef96c06`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 23:15:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 23:15:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 23:15:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 23:15:12 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 23:15:12 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 23:20:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 23:20:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 23:20:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 23:20:51 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 23:20:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00a09bdf5a767e9736fdd365d28374612be55a9adc74a1a557e75ee2a247a9b`  
		Last Modified: Fri, 21 Aug 2026 23:18:47 GMT  
		Size: 93.4 MB (93350808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32fb1ca2adedf2011846061749950aae80eea9478cb39605cb2ac86d11794711`  
		Last Modified: Fri, 21 Aug 2026 23:21:24 GMT  
		Size: 74.4 MB (74376632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75a9a6741cada48b1846cb7533d4807f9a554b4dac80b73ab9c92cc3fd657ad2`  
		Last Modified: Fri, 21 Aug 2026 23:21:22 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676b83fd0d6216a8b0ac7f9b93e3709be917808298a53ef98da5fea8048ec641`  
		Last Modified: Fri, 21 Aug 2026 23:21:22 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:83db5f281ed41ccda03dec2fb2a4d440db290fc228bb679bac62f037c7574900
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5226571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e8f3a92f7bdad9ce3348d5e4c90db914078f355bd9b8a42a9d631d356fa2d8a`

```dockerfile
```

-	Layers:
	-	`sha256:6586c1111d4bad31b665369d266d5d9ad4779ff6e9e24ac3b5067cd26bfbfe67`  
		Last Modified: Fri, 21 Aug 2026 23:21:22 GMT  
		Size: 5.2 MB (5210564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2de5280c0574d578f2dcd4b6432e6d5a48a1ac53a05940faff11da2f50771e81`  
		Last Modified: Fri, 21 Aug 2026 23:21:22 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:4cafdd225b365a23ee66a5410049b6cf2cfdb12e9e38d6482685412448f42fc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.4 MB (190381222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec4ce04640437c32fee40d174812523b25d28946ac4b159421f9435d00faee15`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:14:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:14:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:14:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:14:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:14:30 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:14:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:14:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:14:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:14:47 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:14:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c333d7ff10ba8a06bddbd25297d1289899d58a7a649175f3d4499c6c012e79cc`  
		Last Modified: Fri, 21 Aug 2026 19:15:15 GMT  
		Size: 90.6 MB (90588167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815201798766f2716be65d1971ce751e0805137dd626a0d6a406d88eaf020119`  
		Last Modified: Fri, 21 Aug 2026 19:15:14 GMT  
		Size: 69.9 MB (69945439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e0029ed8964cc6567f1147a19207f23f6221e48496fc75285d6b4c9b2d4f81`  
		Last Modified: Fri, 21 Aug 2026 19:15:12 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56988c0ec840a2f856990caa2cd2812c394041ad0b1f0014099d8a9abf9bd0a`  
		Last Modified: Fri, 21 Aug 2026 19:15:12 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:614ad7a3de7219131284b14b22b7efffd426f2dc49667a5e71a149307104382f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c31aa9e2c1b8debc19d607e1f0fba5e44dcb81bd3cfb82eb61d9c0736c49041d`

```dockerfile
```

-	Layers:
	-	`sha256:559068081d6fe8aa74b7586fedda8cce5a05ce78504d12ba33c466065c832286`  
		Last Modified: Fri, 21 Aug 2026 19:15:13 GMT  
		Size: 5.2 MB (5203367 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffa895a83b921180c582cb011cf821f338650c5097ceb521963a6f467ac79ced`  
		Last Modified: Fri, 21 Aug 2026 19:15:12 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json
